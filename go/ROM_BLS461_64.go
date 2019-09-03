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

/* Fixed Data in ROM - Field and Curve parameters */

package BLS461

// Base Bits= 60
var Modulus = [...]Chunk{0xAAC0000AAAAAAAB, 0x20000555554AAAA, 0x6AA91557F004000, 0xA8DFFA5C1CC00F2, 0xACCA47B14848B42, 0x935FBD6F1E32D8B, 0xD5A555A55D69414, 0x15555545554}
var R2modp = [...]Chunk{0x96D08774614DDA8, 0xCD45F539225D5BD, 0xD712EB760C95AB1, 0xB3B687155F30B55, 0xC4E62A05C3F5B81, 0xBA1151676CA3CD0, 0x7EDD8A958F442BE, 0x12B89DD3F91}

const MConst Chunk = 0xC0005FFFFFFFD

const CURVE_Cof_I int = 0
const CURVE_A int = 0
const CURVE_B_I int = 9

var CURVE_B = [...]Chunk{0x9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}
var CURVE_Order = [...]Chunk{0x1, 0x7FEFFFEFFFFC0, 0xC017FFC80001100, 0x7FE05FD000E801F, 0xFFFF7FFFC018001, 0xFF, 0x0, 0x0}
var CURVE_Gx = [...]Chunk{0x14D026A8ADEE93D, 0xF2D9C00EE74B741, 0x229C3981B531AC7, 0x6650D3564DC9218, 0x436166F7C292A09, 0x2CF668BE922B197, 0x463B73A0C813271, 0xAD0E74E99B}
var CURVE_Gy = [...]Chunk{0xF763157AD1D465, 0x5D17884C8C4FF47, 0x9D0A819E66B8D21, 0x910AE5C3245F495, 0x96EECB8BFA40B84, 0x277ACC8BF9F8CBE, 0x5F68C95F1C3F2F, 0x77BCDB14B3}

var Fra = [...]Chunk{0xF7117BF9B812A3A, 0xA1C6308A599C400, 0x5A6510E07505BF8, 0xB31ACE4858D45FA, 0xFC61EBC2CB04770, 0x366190D073588E2, 0x69E55E24DFEFA84, 0x12E40504B7F}
var Frb = [...]Chunk{0xB3AE8410F298071, 0x7E39D4CAFBAE6A9, 0x104404777AFE407, 0xF5C52C13C3EBAF8, 0xB0685BEE7D443D1, 0x5CFE2C9EAADA4A8, 0x6BBFF7807D79990, 0x27150409D5}
var CURVE_Bnx = [...]Chunk{0xFFBFFFE00000000, 0x1FFFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}
var CURVE_Cof= [...]Chunk {0xFFBFFFE00000001,0x1FFFF,0x0,0x0,0x0,0x0,0x0,0x0}
//var CURVE_Cof = [...]Chunk{0xAA7FFFEAAAAAAAB, 0xFFD55AAAB01556A, 0x1555554FF, 0x0, 0x0, 0x0, 0x0, 0x0}
var CURVE_Cru = [...]Chunk{0x40001FFFFFFFE, 0x6FFFE7FFFFE0000, 0x6047200C47F0FFF, 0x777115796DB7BCC, 0x3F0E89875433CF4, 0xBFFF60500050261, 0x1FFFFFE, 0x0}
var CURVE_Pxa = [...]Chunk{0x65B503186D0A37C, 0xA9C2E492E75DCC4, 0x564E01F919D6878, 0x3F086DB74FF92F, 0xED78D46D581A668, 0x270C892F97C2907, 0x6A50A9AF679453C, 0x10CC54138A0}
var CURVE_Pxb = [...]Chunk{0x9F85CA8C2C1C0AD, 0x96CD66C425CADE, 0x1AC612951A2896, 0xB17D529ABEBEE24, 0xC5AF5BA09D33F65, 0x6A672E4D4371ED4, 0xACEA37CA279D224, 0x95C1FB4FE5}
var CURVE_Pya = [...]Chunk{0x7CCD0C1B02FB006, 0x953D194A4A12A33, 0x68B4960CFCC92C8, 0xBA0F3A9B00F39FC, 0xCDFD8A7DBBC5ED1, 0xE73ED227CC2F7A9, 0xEBA7E676070F4F4, 0x226AC848E7}
var CURVE_Pyb = [...]Chunk{0x8A506ADFDF1457C, 0xB4D6A31DC04C20A, 0x668EA9A8F136E3F, 0x12973C3BE4492F5, 0xA20BE74BEABA67A, 0x5157F04C42E3856, 0xBB402EA2AB1D004, 0xE38101B4FA}
var CURVE_W = [2][8]Chunk{{0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}}
var CURVE_SB = [2][2][8]Chunk{{{0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}}, {{0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}}}
var CURVE_WB = [4][8]Chunk{{0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}}
var CURVE_BB = [4][4][8]Chunk{{{0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}}, {{0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}}, {{0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}}, {{0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}}}

