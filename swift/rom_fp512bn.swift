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

//
//  rom.swift
//
//  Created by Michael Scott on 12/06/2015.
//  Copyright (c) 2015 Michael Scott. All rights reserved.
//

import core

public struct ROM{
 
#if D32

// Base Bits= 29
// fp512bn Curve Modulus

static let Modulus:[Chunk] = [0x2ADEF33,0x7594049,0x131919ED,0x14AB9CBE,0x16FE1916,0x12EF5591,0x2E39231,0x3D597D3,0x55146CF,0x88D877A,0x102EF8F0,0x1196A60F,0x1C60BA1D,0x1CF63F80,0x1FFFFFFF,0x1FFFFFFF,0x1FFFFFFF,0x7FFFF]
static let R2modp:[Chunk] = [0xFD68B47,0xFCF5D2C,0x437675A,0x1BBC3FBF,0x1411E413,0x13453559,0x10B5639,0x1C34CE79,0x6D476BF,0xFD05F2B,0x15D17C28,0x6C9F76E,0x1C2375B3,0x78CCE9B,0x15F0AB33,0x1960F32E,0x1A8D44E,0x57A38]
static let MConst:Chunk = 0x1CCC5C05

static let CURVE_Cof_I:Int = 1
static let CURVE_A:Int = 0
static let CURVE_B_I:Int = 3
static public let CURVE_B:[Chunk] = [0x3,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Order:[Chunk] = [0x119A09ED,0x153252FA,0x1E68AD01,0x627C09,0x79A34A1,0x12EF5593,0x2E39231,0x3D597D3,0x45146CF,0x88D877A,0x102EF8F0,0x1196A60F,0x1C60BA1D,0x1CF63F80,0x1FFFFFFF,0x1FFFFFFF,0x1FFFFFFF,0x7FFFF]
static public let CURVE_Gx:[Chunk] = [0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Gy:[Chunk] = [0x2,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]

static public let Fra:[Chunk] = [0x14B73AB2,0x4B0BD8F,0xABB47D,0x2A29EC4,0x18681E17,0x104069DE,0x12EED67D,0x1553D0A5,0x398E9F8,0x7971034,0xAC9AF23,0x52DEF23,0x14EA18A5,0x1463E345,0x6DE465A,0x17F212B4,0x1AA9CF5B,0xF7B8]
static public let Frb:[Chunk] = [0xDF6B481,0x2A882B9,0x126D6570,0x1208FDFA,0x1E95FAFF,0x2AEEBB2,0xFF4BBB4,0xE81C72D,0x1B85CD6,0xF67746,0x56549CD,0xC68B6EC,0x776A178,0x8925C3B,0x1921B9A5,0x80DED4B,0x55630A4,0x70847]
static public let CURVE_Bnx:[Chunk] = [0x1E1BD80F,0x59835DA,0xC3DFC04,0x5EB8061,0x688,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Cof:[Chunk] = [0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Cru:[Chunk] = [0x1C79298A,0x1838B104,0x2C5F052,0x1DCCF337,0x6092AEC,0x4B35F29,0x1EB361E,0x11384EA,0x3074B20,0x17BB08FD,0x3A8B3E3,0xD70D66F,0x3D2A614,0x1CF63EE4,0x1FFFFFFF,0x1FFFFFFF,0x1FFFFFFF,0x7FFFF]
static public let CURVE_Pxa:[Chunk] = [0xDB646B5,0x183D4B70,0x1CBFFA3,0x11F0E632,0x1C78F221,0x1F10DE5D,0x171B715E,0xF0C6A29,0x10B02453,0xBE63C66,0xE6D5F69,0x166B1E1B,0x4BBBD29,0x179E750F,0x6E9D04,0xC912B10,0x1339E138,0x1D8B2]
static public let CURVE_Pxb:[Chunk] = [0x1A8AE0E9,0xDAE5F7E,0x22446CF,0x1948239B,0x15ADCE40,0xB709C1E,0x18357943,0xE50AA4D,0x19781E22,0x12B35CA6,0x11DAA2C0,0x18D8DDE4,0x5EA656D,0x15F45A41,0xD311A02,0xCFCD913,0x13CBF850,0x240E0]
static public let CURVE_Pya:[Chunk] = [0xDDE67A1,0x12401895,0x17BEE178,0x142F5AC2,0xB7BC5CD,0x92A1404,0x1A3B748C,0x17BD82A7,0x14B6CD18,0xAC34CE,0x1740FB97,0x1ECC15F9,0x17085B1D,0x1D1BA793,0x1BD6AC32,0x18F70525,0xC84C827,0x3780F]
static public let CURVE_Pyb:[Chunk] = [0x84F8E8B,0xC5B8C36,0xFDD85A1,0xB84449,0x19C08DFF,0x56BF713,0x1C5290C4,0x187C5CA0,0x1DA2897F,0x24B0CA0,0x326D8F4,0x2310CF6,0x1021438C,0xFBAEC8F,0xD9030C5,0x1CF06358,0x1CEC8B04,0x28D1D]
static let CURVE_W:[[Chunk]] = [[0x9834583,0x887C4BA,0x5A85CFC,0xBF7223A,0xF63FE96,0x1FFFFFFE,0x1FFFFFFF,0x1FFFFFFF,0xFFFFFF,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x1C37B01F,0xB306BB5,0x187BF808,0xBD700C2,0xD10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]
static let CURVE_SB:[[[Chunk]]] = [[[0xD4B9564,0x1D575904,0xD2C64F3,0x202177,0xF63F186,0x1FFFFFFE,0x1FFFFFFF,0x1FFFFFFF,0xFFFFFF,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x156259CE,0xA01E744,0x5ECB4F9,0x148B7B47,0x79A2790,0x12EF5593,0x2E39231,0x3D597D3,0x45146CF,0x88D877A,0x102EF8F0,0x1196A60F,0x1C60BA1D,0x1CF63F80,0x1FFFFFFF,0x1FFFFFFF,0x1FFFFFFF,0x7FFFF]],[[0x1C37B01F,0xB306BB5,0x187BF808,0xBD700C2,0xD10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x9834583,0x887C4BA,0x5A85CFC,0xBF7223A,0xF63FE96,0x1FFFFFFE,0x1FFFFFFF,0x1FFFFFFF,0xFFFFFF,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]]
static let CURVE_WB:[[Chunk]] = [[0x155A29F0,0x16D59B55,0xF4C305,0x18858C0B,0x5215FBF,0xAAAAAAA,0x15555555,0xAAAAAAA,0x555555,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x2355D4B,0x1758095D,0x1FE13C5F,0x41F83FA,0xBB5E5CF,0x97D4EF1,0xB503D62,0x172C0C9B,0x16315274,0x15E1A9A8,0x859835D,0x2C3DFC0,0x105EB806,0x68,0x0,0x0,0x0,0x0],[0x289AAD,0x1E781F9C,0x60F9C31,0x1505822E,0x15DAF62B,0x4BEA778,0x15A81EB1,0xB96064D,0xB18A93A,0x1AF0D4D4,0x42CC1AE,0x161EFE0,0x82F5C03,0x34,0x0,0x0,0x0,0x0],[0x192279D1,0xBA52F9F,0x878CAFD,0xCAE8B48,0x52152AF,0xAAAAAAA,0x15555555,0xAAAAAAA,0x555555,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]
static let CURVE_BB:[[[Chunk]]] = [[[0x1E1BD810,0x59835DA,0xC3DFC04,0x5EB8061,0x688,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x1E1BD80F,0x59835DA,0xC3DFC04,0x5EB8061,0x688,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x1E1BD80F,0x59835DA,0xC3DFC04,0x5EB8061,0x688,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x156259CF,0xA01E744,0x5ECB4F9,0x148B7B47,0x79A2790,0x12EF5593,0x2E39231,0x3D597D3,0x45146CF,0x88D877A,0x102EF8F0,0x1196A60F,0x1C60BA1D,0x1CF63F80,0x1FFFFFFF,0x1FFFFFFF,0x1FFFFFFF,0x7FFFF]],[[0x1C37B01F,0xB306BB5,0x187BF808,0xBD700C2,0xD10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x137E31DE,0xF9A1D1F,0x122AB0FD,0x1A76FBA8,0x79A2E18,0x12EF5593,0x2E39231,0x3D597D3,0x45146CF,0x88D877A,0x102EF8F0,0x1196A60F,0x1C60BA1D,0x1CF63F80,0x1FFFFFFF,0x1FFFFFFF,0x1FFFFFFF,0x7FFFF],[0x137E31DD,0xF9A1D1F,0x122AB0FD,0x1A76FBA8,0x79A2E18,0x12EF5593,0x2E39231,0x3D597D3,0x45146CF,0x88D877A,0x102EF8F0,0x1196A60F,0x1C60BA1D,0x1CF63F80,0x1FFFFFFF,0x1FFFFFFF,0x1FFFFFFF,0x7FFFF],[0x137E31DE,0xF9A1D1F,0x122AB0FD,0x1A76FBA8,0x79A2E18,0x12EF5593,0x2E39231,0x3D597D3,0x45146CF,0x88D877A,0x102EF8F0,0x1196A60F,0x1C60BA1D,0x1CF63F80,0x1FFFFFFF,0x1FFFFFFF,0x1FFFFFFF,0x7FFFF]],[[0x1C37B01E,0xB306BB5,0x187BF808,0xBD700C2,0xD10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x1C37B01F,0xB306BB5,0x187BF808,0xBD700C2,0xD10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x1C37B01F,0xB306BB5,0x187BF808,0xBD700C2,0xD10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x1C37B01F,0xB306BB5,0x187BF808,0xBD700C2,0xD10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x137E31DF,0xF9A1D1F,0x122AB0FD,0x1A76FBA8,0x79A2E18,0x12EF5593,0x2E39231,0x3D597D3,0x45146CF,0x88D877A,0x102EF8F0,0x1196A60F,0x1C60BA1D,0x1CF63F80,0x1FFFFFFF,0x1FFFFFFF,0x1FFFFFFF,0x7FFFF],[0x192AA9AF,0x1ED17B8E,0xD70BCF0,0x8B47A84,0x79A1A80,0x12EF5593,0x2E39231,0x3D597D3,0x45146CF,0x88D877A,0x102EF8F0,0x1196A60F,0x1C60BA1D,0x1CF63F80,0x1FFFFFFF,0x1FFFFFFF,0x1FFFFFFF,0x7FFFF],[0x1C37B01D,0xB306BB5,0x187BF808,0xBD700C2,0xD10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x137E31DF,0xF9A1D1F,0x122AB0FD,0x1A76FBA8,0x79A2E18,0x12EF5593,0x2E39231,0x3D597D3,0x45146CF,0x88D877A,0x102EF8F0,0x1196A60F,0x1C60BA1D,0x1CF63F80,0x1FFFFFFF,0x1FFFFFFF,0x1FFFFFFF,0x7FFFF]]]



#endif

#if D64


// Base Bits= 60
static let Modulus:[Chunk] = [0x4EB280922ADEF33,0x6A55CE5F4C6467B,0xC65DEAB236FE191,0xCF1EACBE98B8E48,0x3C111B0EF455146,0xA1D8CB5307C0BBE,0xFFFF9EC7F01C60B,0xFFFFFFFFFFFFFFF,0xFFFFFFFF]
static let R2modp:[Chunk] = [0x1FA6DCEF99812E9,0xAB3452895A0B74E,0xC53EA988C079E1E,0x1E90E033BA630B9,0xF1EA41C0714D8B0,0xE72785387509E28,0xD86794F834DAB00,0x9757C2ACCD342A1,0x44ECB079]
static let MConst:Chunk = 0x692A189FCCC5C05

static let CURVE_Cof_I:Int = 1
static let CURVE_A:Int = 0
static let CURVE_B_I:Int = 3
static public let CURVE_B:[Chunk] = [0x3,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Order:[Chunk] = [0x6A64A5F519A09ED,0x10313E04F9A2B40,0xC65DEAB2679A34A,0xCF1EACBE98B8E48,0x3C111B0EF445146,0xA1D8CB5307C0BBE,0xFFFF9EC7F01C60B,0xFFFFFFFFFFFFFFF,0xFFFFFFFF]
static public let CURVE_Gx:[Chunk] = [0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Gy:[Chunk] = [0x2,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]

static public let Fra:[Chunk] = [0x49617B1F4B73AB2,0x71514F6202AED1F,0xF6080D3BD8681E1,0xF8AA9E852CBBB59,0xC8CF2E2068398E9,0x8A5296F791AB26B,0x196A8C7C68B4EA1,0xCF5BBF9095A1B79,0x1EF71AA9]
static public let Frb:[Chunk] = [0x5510572DF6B481,0xF9047EFD49B595C,0xD055DD765E95FAF,0xD6740E396BFD2EE,0x7341ECEE8C1B85C,0x1786345B7615952,0xE695124B876776A,0x30A4406F6A5E486,0xE108E556]
static public let CURVE_Bnx:[Chunk] = [0xB306BB5E1BD80F,0x82F5C030B0F7F01,0x68,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Cof:[Chunk] = [0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Cru:[Chunk] = [0xB0716209C79298A,0xCEE6799B8B17C14,0x78966BE526092AE,0x20089C27507ACD8,0xF8EF7611FA3074B,0x6146B86B378EA2C,0xFFFF9EC7DC83D2A,0xFFFFFFFFFFFFFFF,0xFFFFFFFF]
static public let CURVE_Pxa:[Chunk] = [0xF07A96E0DB646B5,0x18F87319072FFE8,0x7BE21BCBBC78F22,0x537863514DC6DC5,0xDA57CC78CD0B024,0xD29B358F0DB9B57,0x7412F3CEA1E4BBB,0xE138648958801BA,0x3B165339]
static public let CURVE_Pxb:[Chunk] = [0xDB5CBEFDA8AE0E9,0xCA411CD88911B3,0xD6E1383D5ADCE4,0x227285526E0D5E5,0xB02566B94D9781E,0x56DC6C6EF2476A8,0x680ABE8B4825EA6,0xF85067E6C89B4C4,0x481C13CB]
static public let CURVE_Pya:[Chunk] = [0x2480312ADDE67A1,0xDA17AD615EFB85E,0x312542808B7BC5C,0x18BDEC153E8EDD2,0xE5C158699D4B6CD,0xB1DF660AFCDD03E,0xB0CBA374F277085,0xC827C7B8292EF5A,0x6F01EC84]
static public let CURVE_Pyb:[Chunk] = [0x58B7186C84F8E8B,0xF05C2224BF76168,0x10AD7EE279C08DF,0x7FC3E2E50714A43,0x3D04961941DA289,0x38C118867B0C9B6,0xC315F75D91F0214,0x8B04E7831AC3640,0x51A3BCEC]
static let CURVE_W:[[Chunk]] = [[0x110F89749834583,0x65FB911D16A173F,0xFFFFFFFFCF63FE9,0xFFFFFFFFFFFFFFF,0xFFFF,0x0,0x0,0x0,0x0],[0x1660D76BC37B01F,0x5EB806161EFE02,0xD1,0x0,0x0,0x0,0x0,0x0,0x0]]
static let CURVE_SB:[[[Chunk]]] = [[[0xFAAEB208D4B9564,0x601010BBB4B193C,0xFFFFFFFFCF63F18,0xFFFFFFFFFFFFFFF,0xFFFF,0x0,0x0,0x0,0x0],[0x5403CE8956259CE,0xA45BDA397B2D3E,0xC65DEAB2679A279,0xCF1EACBE98B8E48,0x3C111B0EF445146,0xA1D8CB5307C0BBE,0xFFFF9EC7F01C60B,0xFFFFFFFFFFFFFFF,0xFFFFFFFF]],[[0x1660D76BC37B01F,0x5EB806161EFE02,0xD1,0x0,0x0,0x0,0x0,0x0,0x0],[0x110F89749834583,0x65FB911D16A173F,0xFFFFFFFFCF63FE9,0xFFFFFFFFFFFFFFF,0xFFFF,0x0,0x0,0x0,0x0]]]
static let CURVE_WB:[[Chunk]] = [[0x6DAB36AB55A29F0,0xFC42C60583D30C1,0x5555555545215FB,0x555555555555555,0x5555,0x0,0x0,0x0,0x0],[0xEEB012BA2355D4B,0xF20FC1FD7F84F17,0x892FA9DE2BB5E5C,0x74B96064DAD40F5,0xD76BC3535163152,0x806161EFE021660,0xD105EB,0x0,0x0],[0x7CF03F380289AAD,0xBA82C117183E70C,0xC497D4EF15DAF62,0x3A5CB0326D6A07A,0x6BB5E1A9A8B18A9,0xC030B0F7F010B30,0x6882F5,0x0,0x0],[0x574A5F3F92279D1,0xF65745A421E32BF,0x55555555452152A,0x555555555555555,0x5555,0x0,0x0,0x0,0x0]]
static let CURVE_BB:[[[Chunk]]] = [[[0xB306BB5E1BD810,0x82F5C030B0F7F01,0x68,0x0,0x0,0x0,0x0,0x0,0x0],[0xB306BB5E1BD80F,0x82F5C030B0F7F01,0x68,0x0,0x0,0x0,0x0,0x0,0x0],[0xB306BB5E1BD80F,0x82F5C030B0F7F01,0x68,0x0,0x0,0x0,0x0,0x0,0x0],[0x5403CE8956259CF,0xA45BDA397B2D3E,0xC65DEAB2679A279,0xCF1EACBE98B8E48,0x3C111B0EF445146,0xA1D8CB5307C0BBE,0xFFFF9EC7F01C60B,0xFFFFFFFFFFFFFFF,0xFFFFFFFF]],[[0x1660D76BC37B01F,0x5EB806161EFE02,0xD1,0x0,0x0,0x0,0x0,0x0,0x0],[0x5F343A3F37E31DE,0x8D3B7DD448AAC3F,0xC65DEAB2679A2E1,0xCF1EACBE98B8E48,0x3C111B0EF445146,0xA1D8CB5307C0BBE,0xFFFF9EC7F01C60B,0xFFFFFFFFFFFFFFF,0xFFFFFFFF],[0x5F343A3F37E31DD,0x8D3B7DD448AAC3F,0xC65DEAB2679A2E1,0xCF1EACBE98B8E48,0x3C111B0EF445146,0xA1D8CB5307C0BBE,0xFFFF9EC7F01C60B,0xFFFFFFFFFFFFFFF,0xFFFFFFFF],[0x5F343A3F37E31DE,0x8D3B7DD448AAC3F,0xC65DEAB2679A2E1,0xCF1EACBE98B8E48,0x3C111B0EF445146,0xA1D8CB5307C0BBE,0xFFFF9EC7F01C60B,0xFFFFFFFFFFFFFFF,0xFFFFFFFF]],[[0x1660D76BC37B01E,0x5EB806161EFE02,0xD1,0x0,0x0,0x0,0x0,0x0,0x0],[0x1660D76BC37B01F,0x5EB806161EFE02,0xD1,0x0,0x0,0x0,0x0,0x0,0x0],[0x1660D76BC37B01F,0x5EB806161EFE02,0xD1,0x0,0x0,0x0,0x0,0x0,0x0],[0x1660D76BC37B01F,0x5EB806161EFE02,0xD1,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x5F343A3F37E31DF,0x8D3B7DD448AAC3F,0xC65DEAB2679A2E1,0xCF1EACBE98B8E48,0x3C111B0EF445146,0xA1D8CB5307C0BBE,0xFFFF9EC7F01C60B,0xFFFFFFFFFFFFFFF,0xFFFFFFFF],[0x3DA2F71D92AA9AF,0x45A3D4235C2F3C,0xC65DEAB2679A1A8,0xCF1EACBE98B8E48,0x3C111B0EF445146,0xA1D8CB5307C0BBE,0xFFFF9EC7F01C60B,0xFFFFFFFFFFFFFFF,0xFFFFFFFF],[0x1660D76BC37B01D,0x5EB806161EFE02,0xD1,0x0,0x0,0x0,0x0,0x0,0x0],[0x5F343A3F37E31DF,0x8D3B7DD448AAC3F,0xC65DEAB2679A2E1,0xCF1EACBE98B8E48,0x3C111B0EF445146,0xA1D8CB5307C0BBE,0xFFFF9EC7F01C60B,0xFFFFFFFFFFFFFFF,0xFFFFFFFF]]]


#endif


}

