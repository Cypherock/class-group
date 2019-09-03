/*
   Copyright (C) 2019 MIRACL UK Ltd.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.


    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

     https://www.gnu.org/licenses/agpl-3.0.en.html

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

   You can be released from the requirements of the license by purchasing
   a commercial license. Buying such a license is mandatory as soon as you
   develop commercial activities involving the MIRACL Core Crypto SDK
   without disclosing the source code of your own applications, or shipping
   the MIRACL Core Crypto SDK with a closed source product.
*/

/* Boneh-Lynn-Shacham signature 128-bit API */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bls_ZZZ.h"

using namespace XXX;
using namespace YYY;

#ifndef CORE_ARDUINO
static FP4 G2_TAB[G2_TABLE_ZZZ];  // space for precomputation on fixed G2 parameter
#endif

/* hash a message to an ECP point, using SHA3 */
static void BLS_HASHIT(ECP *P, char *m)
{
    int i;
    sha3 hs;
    char h[MODBYTES_XXX];
    octet HM = {0, sizeof(h), h};
    SHA3_init(&hs, SHAKE256);
    for (i = 0; m[i] != 0; i++) SHA3_process(&hs, m[i]);
    SHA3_shake(&hs, HM.val, MODBYTES_XXX);
    HM.len = MODBYTES_XXX;
    ECP_mapit(P, &HM);
}

#ifdef CORE_ARDUINO
int ZZZ::BLS_INIT()
{
    return BLS_OK;
}
#else
int ZZZ::BLS_INIT()
{
    ECP2 G;
    if (!ECP2_generator(&G)) return BLS_FAIL;
    PAIR_precomp(G2_TAB, &G);  // should be done just once on start-up
    return BLS_OK;
}
#endif

/* generate key pair, private key S, public key W */

int ZZZ::BLS_KEY_PAIR_GENERATE(csprng *RNG, octet* S, octet *W)
{
    ECP2 G;
    BIG s, q;
    BIG_rcopy(q, CURVE_Order);

    if (!ECP2_generator(&G)) return BLS_FAIL;
    BIG_randtrunc(s, q, 2 * CURVE_SECURITY_ZZZ, RNG);
    BIG_toBytes(S->val, s);
    S->len = MODBYTES_XXX;
    PAIR_G2mul(&G, s);
    ECP2_toOctet(W, &G, true);
    return BLS_OK;
}

/* Sign message m using private key S to produce signature SIG */

int ZZZ::BLS_SIGN(octet *SIG, char *m, octet *S)
{
    BIG s;
    ECP D;
    BLS_HASHIT(&D, m);
    BIG_fromBytes(s, S->val);
    PAIR_G1mul(&D, s);
    ECP_toOctet(SIG, &D, true); /* compress output */
    return BLS_OK;
}

/* Verify signature given message m, the signature SIG, and the public key W */
int ZZZ::BLS_VERIFY(octet *SIG, char *m, octet *W)
{
    FP12 v;
    ECP2 G, PK;
    ECP D, HM;
    BLS_HASHIT(&HM, m);

    ECP_fromOctet(&D, SIG);
	if (!PAIR_G1member(&D)) return BLS_FAIL;
    ECP_neg(&D);

    ECP2_fromOctet(&PK, W);

// Use multi-pairing mechanism and precomputation on G2
#ifndef CORE_ARDUINO
    FP12 r[ATE_BITS_ZZZ];  // space for accumulated line functions

    PAIR_initmp(r);
    PAIR_another_pc(r, G2_TAB, &D);
    PAIR_another(r, &PK, &HM);
    PAIR_miller(&v, r);
#else
//.. or alternatively just
    if (!ECP2_generator(&G)) return BLS_FAIL;
    PAIR_double_ate(&v, &G, &D, &PK, &HM);
#endif
    PAIR_fexp(&v);

    if (FP12_isunity(&v)) return BLS_OK;
    return BLS_FAIL;
}

