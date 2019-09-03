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


package org.miracl.core.BN462;

public class ROM
{

// Base Bits= 60
public static final long[] Modulus= {0x401B00840138013L,0x87F640000000002L,0xFFFF6FF66FC6FF6L,0x8F41C8020FFFFFFL,0xD81290L,0xFF0CF6B7D9BFCA0L,0x23FFFFFFFFFF6L,0x24048036012L};
public static final long[] R2modp= {0x89118D28DC21038L,0x1C24CD524708896L,0x96F6AF594FD13D3L,0xFC17B3AFB34F599L,0x617CBFE0F54B3BCL,0x105034B613F1E2L,0x47E597791E4CB9L,0x12EACA995DAL};
public static final long MConst= 0x718CE9E711BB5E5L;
public static final long[] Fra= {0xEE4BE3FF2575D1AL,0x180FC7D89659DBDL,0x8D90D45D1D93FA1L,0x7C0562173310CC7L,0x87E11C792504D54L,0x72708592ED03A9AL,0xB40BCFDB5A8CC11L,0x16FF4348CBL};
public static final long[] Frb= {0x2204AE0955FF85BL,0x20902388657BEB6L,0xD00F94F4BD630AL,0xBADB14A1A7A84FFL,0xE85F7B00D8E4B1DL,0x8325B27493CA001L,0xE90EA882008E6B6L,0x23C37F80940L};

//*** rom curve parameters *****
// Base Bits= 60
// Ate Bits= 118
// G2 Table size= 125

public static final int CURVE_A= 0;
public static final int CURVE_Cof_I= 1;
public static final long[] CURVE_Cof= {0x1L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L};
public static final int CURVE_B_I= 5;
public static final long[] CURVE_B= {0x5L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L};
public static final long[] CURVE_Order= {0x401B007E010800DL,0x17F7C0000000002L,0xFFFF6FF66FC7BF7L,0x8EE1C201F7FFFFFL,0xD81290L,0xFF0CF6B7D9BFCA0L,0x23FFFFFFFFFF6L,0x24048036012L};
public static final long[] CURVE_Gx= {0xC98D91F36B6980DL,0x9C0372E5CD70113L,0x69A416A0B1E7923L,0x4B2E689DB1BBB4EL,0x95F63B3EDBEC3CFL,0x160B9AC9264B6FL,0x191FADBA34A0A3L,0x21A6D67EF25L};
public static final long[] CURVE_Gy= {0x8A5734D36FB03DEL,0x32C66600622ECAAL,0xB8AE40EB80F4754L,0x50426E6AF77DF11L,0xCCCFA7D788C6596L,0x7432A490EEDA842L,0x7F7ABB82B33676AL,0x118EA0460FL};

public static final long[] CURVE_Bnx= {0xFFFFFFFFFFFBFFFL,0x4001FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L};
public static final long[] CURVE_Cru= {0x401F80A801A401AL,0xDBF2E0000000002L,0xFFFF6FF597BBBF3L,0x9F0222029FFFFFFL,0xD81368L,0xFF08764BD65FC10L,0x23FFFFFFFFFF6L,0x24048036012L};
public static final long[] CURVE_Pxa= {0x68E3D934AE1E4DFL,0xAA6A8B488076954L,0xBAD92E0032AE1F0L,0x408208F9AD2699L,0x1CD96ED61C91382L,0xBDC5482E0337E7CL,0x8DDA0DFB38E3A8CL,0x257CCC85B5L};
public static final long[] CURVE_Pxb= {0x3108BA6AA8CD283L,0x8B59BF7E850E9B7L,0x555B783718F50AFL,0x58B18134DD86BAEL,0x730CBED91768840L,0x566BA3C98E2A354L,0x99102AF8EDCA849L,0x1D2E4343E85L};
public static final long[] CURVE_Pya= {0xE5B68DF0DB7154EL,0x140E7B11D7C3376L,0xC9DDAE32E03695AL,0xFE810F1399A1F41L,0x6E23C3FA7A6BB42L,0x809ECA03563470L,0x22C1979517427A2L,0xA0650439DAL};
public static final long[] CURVE_Pyb= {0xA14CC552CA2A93AL,0x68D53743493B9EBL,0x444A04EF87387AAL,0x70FD725CC647692L,0x69AC57B393F1AB3L,0x6324D44D5E6B0CL,0x8CBE0172C8AE373L,0x73EF0CBD43L};
public static final long[][] CURVE_W= {{0x60020003L,0x7FFF00000000000L,0xFFFFFFFFFFFF3FFL,0x60060017FFFFFL,0x0L,0x0L,0x0L,0x0L},{0xFFFFFFFFFFF7FFFL,0x8003FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L}};
public static final long[][][] CURVE_SB= {{{0x60028004L,0x77FEC0000000000L,0xFFFFFFFFFFFF3FFL,0x60060017FFFFFL,0x0L,0x0L,0x0L,0x0L},{0x401B007E011000EL,0xFF780000000002L,0xFFFF6FF66FC7BF7L,0x8EE1C201F7FFFFFL,0xD81290L,0xFF0CF6B7D9BFCA0L,0x23FFFFFFFFFF6L,0x24048036012L}},{{0xFFFFFFFFFFF7FFFL,0x8003FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x60020003L,0x7FFF00000000000L,0xFFFFFFFFFFFF3FFL,0x60060017FFFFFL,0x0L,0x0L,0x0L,0x0L}}};
public static final long[][] CURVE_WB= {{0x20004000L,0xDBFFE0000000000L,0xFFFFFFFFFFFFBFFL,0x20020007FFFFFL,0x0L,0x0L,0x0L,0x0L},{0xFFFCFFE3FFABFFBL,0x14029FFFFFFFFFFL,0x9008002L,0xF53FBFFF9000000L,0xFFFFFFFFFFFFF6FL,0x30048024005FL,0x0L,0x0L},{0xFFFE7FF1FFD3FFDL,0xC015FFFFFFFFFFL,0x4804001L,0xFA9FDFFFC800000L,0xFFFFFFFFFFFFFB7L,0x18024012002FL,0x0L,0x0L},{0x2000C001L,0xD3FFA0000000000L,0xFFFFFFFFFFFFBFFL,0x20020007FFFFFL,0x0L,0x0L,0x0L,0x0L}};
public static final long[][][] CURVE_BB= {{{0xFFFFFFFFFFFC000L,0x4001FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0xFFFFFFFFFFFBFFFL,0x4001FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0xFFFFFFFFFFFBFFFL,0x4001FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x401B007E011000FL,0xFF780000000002L,0xFFFF6FF66FC7BF7L,0x8EE1C201F7FFFFFL,0xD81290L,0xFF0CF6B7D9BFCA0L,0x23FFFFFFFFFF6L,0x24048036012L}},{{0xFFFFFFFFFFF7FFFL,0x8003FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x401B007E010C00EL,0x13F7A0000000002L,0xFFFF6FF66FC7BF7L,0x8EE1C201F7FFFFFL,0xD81290L,0xFF0CF6B7D9BFCA0L,0x23FFFFFFFFFF6L,0x24048036012L},{0x401B007E010C00DL,0x13F7A0000000002L,0xFFFF6FF66FC7BF7L,0x8EE1C201F7FFFFFL,0xD81290L,0xFF0CF6B7D9BFCA0L,0x23FFFFFFFFFF6L,0x24048036012L},{0x401B007E010C00EL,0x13F7A0000000002L,0xFFFF6FF66FC7BF7L,0x8EE1C201F7FFFFFL,0xD81290L,0xFF0CF6B7D9BFCA0L,0x23FFFFFFFFFF6L,0x24048036012L}},{{0xFFFFFFFFFFF7FFEL,0x8003FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0xFFFFFFFFFFF7FFFL,0x8003FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0xFFFFFFFFFFF7FFFL,0x8003FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0xFFFFFFFFFFF7FFFL,0x8003FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L}},{{0x401B007E010C00FL,0x13F7A0000000002L,0xFFFF6FF66FC7BF7L,0x8EE1C201F7FFFFFL,0xD81290L,0xFF0CF6B7D9BFCA0L,0x23FFFFFFFFFF6L,0x24048036012L},{0x401B007E011800FL,0x7F740000000002L,0xFFFF6FF66FC7BF7L,0x8EE1C201F7FFFFFL,0xD81290L,0xFF0CF6B7D9BFCA0L,0x23FFFFFFFFFF6L,0x24048036012L},{0xFFFFFFFFFFF7FFDL,0x8003FFFFFFFFFFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x401B007E010C00FL,0x13F7A0000000002L,0xFFFF6FF66FC7BF7L,0x8EE1C201F7FFFFFL,0xD81290L,0xFF0CF6B7D9BFCA0L,0x23FFFFFFFFFF6L,0x24048036012L}}};

}
