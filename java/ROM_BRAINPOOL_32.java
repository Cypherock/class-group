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

/* Note that the original curve has been transformed to an isomorphic curve with A=-3 */


package org.miracl.core.BRAINPOOL;

public class ROM
{

// Base Bits= 28
	public static final int[] Modulus= {0xF6E5377,0x13481D1,0x6202820,0xF623D52,0xD726E3B,0x909D838,0xC3E660A,0xA1EEA9B,0x9FB57DB,0xA};
	public static final int[] R2modp= {0xB9A3787,0x9E04F49,0x8F3CF49,0x2931721,0xF1DBC89,0x54E8C3C,0xF7559CA,0xBB411A3,0x773E15F,0x9};
	public static final int MConst= 0xEFD89B9;

	public static final int CURVE_Cof_I= 1;
	public static final int[] CURVE_Cof= {0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0};
	public static final int CURVE_A= -3;
	public static final int CURVE_B_I= 0;
	public static final int[] CURVE_B= {0xEE92B04,0xE58101F,0xF49256A,0xEBC4AF2,0x6B7BF93,0x733D0B7,0x4FE66A7,0x30D84EA,0x62C61C4,0x6};
	public static final int[] CURVE_Order= {0x74856A7,0x1E0E829,0x1A6F790,0x7AA3B56,0xD718C39,0x909D838,0xC3E660A,0xA1EEA9B,0x9FB57DB,0xA};
	public static final int[] CURVE_Gx= {0xE1305F4,0xA191562,0xFBC2B79,0x42C47AA,0x149AFA1,0xB23A656,0x7732213,0xC1CFE7B,0x3E8EB3C,0xA};
	public static final int[] CURVE_Gy= {0xB25C9BE,0xABE8F35,0x27001D,0xB6DE39D,0x17E69BC,0xE146444,0xD7F7B22,0x3439C56,0xD996C82,0x2};

}
