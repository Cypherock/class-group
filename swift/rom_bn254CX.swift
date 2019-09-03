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

public struct ROM{
 
#if D32

// Base Bits= 28
//  bn254CX Curve Modulus
static let Modulus:[Chunk] = [0xC1B55B3,0x6623EF5,0x93EE1BE,0xD6EE180,0x6D3243F,0x647A636,0xDB0BDDF,0x8702A0,0x4000000,0x2]
static let R2modp:[Chunk] = [0x8A0800A,0x466A061,0x43056A3,0x2B3A225,0x9C6600,0x148515B,0x6BDF50,0xEC9EA56,0xC992E66,0x1]
static let MConst:Chunk = 0x9789E85
static let Fra:[Chunk] = [0x5C80EA3,0xD908335,0x3F8215B,0x7326F17,0x8986867,0x8AACA71,0x4AFE18B,0xA63A016,0x359082F,0x1]
static let Frb:[Chunk] = [0x6534710,0x8D1BBC0,0x546C062,0x63C7269,0xE3ABBD8,0xD9CDBC4,0x900DC53,0x623628A,0xA6F7D0,0x1]

//  bn254CX Curve

static let CURVE_Cof_I:Int = 1
static let CURVE_A:Int = 0
static let CURVE_B_I:Int = 2
static let CURVE_B:[Chunk] = [0x2,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Order:[Chunk] = [0x6EB1F6D,0x11C0A63,0x906CEBE,0xD6EE0CC,0x6D2C43F,0x647A636,0xDB0BDDF,0x8702A0,0x4000000,0x2]
static public let CURVE_Gx:[Chunk] = [0xC1B55B2,0x6623EF5,0x93EE1BE,0xD6EE180,0x6D3243F,0x647A636,0xDB0BDDF,0x8702A0,0x4000000,0x2]
static public let CURVE_Gy:[Chunk] = [0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static let CURVE_Bnx:[Chunk] = [0x3C012B1,0x0,0x40,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static let CURVE_Cof:[Chunk] = [0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0] 
static let CURVE_Cru:[Chunk] = [0x4235C97,0xE093179,0xF875631,0xDF6471E,0xF1440BD,0xCA83,0x480000,0x0,0x0,0x0]

static public let CURVE_Pxa:[Chunk] = [0x4D2EC74,0x851CEEE,0xE2726C0,0x85BFA03,0xBBB907C,0xF5C34,0x6358B25,0x7053B25,0x9682D2C,0x1]
static public let CURVE_Pxb:[Chunk] = [0xE29CFE1,0xA58E8B2,0x9C30F47,0x97B0C20,0x743F81B,0x37A8E99,0xAA011C9,0x3E19F64,0x466B9EC,0x1]
static public let CURVE_Pya:[Chunk] = [0xF0BE09F,0xFBFCEBC,0xEC1B30C,0xB33D847,0x2096361,0x157DAEE,0xDD81E22,0x72332B8,0xA79EDD9,0x0]
static public let CURVE_Pyb:[Chunk] = [0x898EE9D,0x904B228,0x2EDEBED,0x4EA569D,0x461C286,0x512D8D3,0x35C6E4,0xECC4C09,0x6160C39,0x0]

static let CURVE_W:[[Chunk]] = [[0x62FEB83,0x5463491,0x381200,0xB4,0x6000,0x0,0x0,0x0,0x0,0x0],[0x7802561,0x0,0x80,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]
static let CURVE_SB:[[[Chunk]]] = [[[0xDB010E4,0x5463491,0x381280,0xB4,0x6000,0x0,0x0,0x0,0x0,0x0],[0x7802561,0x0,0x80,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x7802561,0x0,0x80,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0xBB33EA,0xBD5D5D2,0x8CEBCBD,0xD6EE018,0x6D2643F,0x647A636,0xDB0BDDF,0x8702A0,0x4000000,0x2]]]
static let CURVE_WB:[[Chunk]] = [[0x67A84B0,0x1C21185,0x12B040,0x3C,0x2000,0x0,0x0,0x0,0x0,0x0],[0xE220475,0xCDF995B,0xA7F9A36,0x94EDA8C,0xA0DC07E,0x8702,0x300000,0x0,0x0,0x0],[0xF10B93,0x66FCCAE,0x53FCD3B,0x4A76D46,0x506E03F,0x4381,0x180000,0x0,0x0,0x0],[0xDFAAA11,0x1C21185,0x12B0C0,0x3C,0x2000,0x0,0x0,0x0,0x0,0x0]]
static let CURVE_BB:[[[Chunk]]] = [[[0x32B0CBD,0x11C0A63,0x906CE7E,0xD6EE0CC,0x6D2C43F,0x647A636,0xDB0BDDF,0x8702A0,0x4000000,0x2],[0x32B0CBC,0x11C0A63,0x906CE7E,0xD6EE0CC,0x6D2C43F,0x647A636,0xDB0BDDF,0x8702A0,0x4000000,0x2],[0x32B0CBC,0x11C0A63,0x906CE7E,0xD6EE0CC,0x6D2C43F,0x647A636,0xDB0BDDF,0x8702A0,0x4000000,0x2],[0x7802562,0x0,0x80,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x7802561,0x0,0x80,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x32B0CBC,0x11C0A63,0x906CE7E,0xD6EE0CC,0x6D2C43F,0x647A636,0xDB0BDDF,0x8702A0,0x4000000,0x2],[0x32B0CBD,0x11C0A63,0x906CE7E,0xD6EE0CC,0x6D2C43F,0x647A636,0xDB0BDDF,0x8702A0,0x4000000,0x2],[0x32B0CBC,0x11C0A63,0x906CE7E,0xD6EE0CC,0x6D2C43F,0x647A636,0xDB0BDDF,0x8702A0,0x4000000,0x2]],[[0x7802562,0x0,0x80,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x7802561,0x0,0x80,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x7802561,0x0,0x80,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x7802561,0x0,0x80,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x3C012B2,0x0,0x40,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0xF004AC2,0x0,0x100,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0xF6AFA0A,0x11C0A62,0x906CE3E,0xD6EE0CC,0x6D2C43F,0x647A636,0xDB0BDDF,0x8702A0,0x4000000,0x2],[0x3C012B2,0x0,0x40,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]]

    
#endif

#if D64

// Base Bits= 56
//  bn254CX Curve Modulus
static let Modulus:[Chunk] = [0x6623EF5C1B55B3,0xD6EE18093EE1BE,0x647A6366D3243F,0x8702A0DB0BDDF,0x24000000]
static let R2modp:[Chunk] = [0x466A0618A0800A,0x2B3A22543056A3,0x148515B09C6600,0xEC9EA5606BDF50,0x1C992E66]
static let MConst:Chunk = 0x4E205BF9789E85
static let Fra:[Chunk] = [0xD9083355C80EA3,0x7326F173F8215B,0x8AACA718986867,0xA63A0164AFE18B,0x1359082F]
static let Frb:[Chunk] = [0x8D1BBC06534710,0x63C7269546C062,0xD9CDBC4E3ABBD8,0x623628A900DC53,0x10A6F7D0]

//  bn254CX Curve

static let CURVE_Cof_I:Int = 1
static let CURVE_A:Int = 0
static let CURVE_B_I:Int = 2
static let CURVE_B:[Chunk] = [0x2,0x0,0x0,0x0,0x0]
static public let CURVE_Order:[Chunk] = [0x11C0A636EB1F6D,0xD6EE0CC906CEBE,0x647A6366D2C43F,0x8702A0DB0BDDF,0x24000000]
static public let CURVE_Gx:[Chunk] = [0x6623EF5C1B55B2,0xD6EE18093EE1BE,0x647A6366D3243F,0x8702A0DB0BDDF,0x24000000]
static public let CURVE_Gy:[Chunk] = [0x1,0x0,0x0,0x0,0x0]
static let CURVE_Bnx:[Chunk] = [0x3C012B1,0x40,0x0,0x0,0x0]
static let CURVE_Cof:[Chunk] = [0x1,0x0,0x0,0x0,0x0]
static let CURVE_Cru:[Chunk] = [0xE0931794235C97,0xDF6471EF875631,0xCA83F1440BD,0x480000,0x0]

static public let CURVE_Pxa:[Chunk] = [0x851CEEE4D2EC74,0x85BFA03E2726C0,0xF5C34BBB907C,0x7053B256358B25,0x19682D2C]
static public let CURVE_Pxb:[Chunk] = [0xA58E8B2E29CFE1,0x97B0C209C30F47,0x37A8E99743F81B,0x3E19F64AA011C9,0x1466B9EC]
static public let CURVE_Pya:[Chunk] = [0xFBFCEBCF0BE09F,0xB33D847EC1B30C,0x157DAEE2096361,0x72332B8DD81E22,0xA79EDD9]
static public let CURVE_Pyb:[Chunk] = [0x904B228898EE9D,0x4EA569D2EDEBED,0x512D8D3461C286,0xECC4C09035C6E4,0x6160C39]

static let CURVE_W:[[Chunk]] = [[0x546349162FEB83,0xB40381200,0x6000,0x0,0x0],[0x7802561,0x80,0x0,0x0,0x0]]
static let CURVE_SB:[[[Chunk]]] = [[[0x5463491DB010E4,0xB40381280,0x6000,0x0,0x0],[0x7802561,0x80,0x0,0x0,0x0]],[[0x7802561,0x80,0x0,0x0,0x0],[0xBD5D5D20BB33EA,0xD6EE0188CEBCBD,0x647A6366D2643F,0x8702A0DB0BDDF,0x24000000]]]
static let CURVE_WB:[[Chunk]] = [[0x1C2118567A84B0,0x3C012B040,0x2000,0x0,0x0],[0xCDF995BE220475,0x94EDA8CA7F9A36,0x8702A0DC07E,0x300000,0x0],[0x66FCCAE0F10B93,0x4A76D4653FCD3B,0x4381506E03F,0x180000,0x0],[0x1C21185DFAAA11,0x3C012B0C0,0x2000,0x0,0x0]]
static let CURVE_BB:[[[Chunk]]] = [[[0x11C0A6332B0CBD,0xD6EE0CC906CE7E,0x647A6366D2C43F,0x8702A0DB0BDDF,0x24000000],[0x11C0A6332B0CBC,0xD6EE0CC906CE7E,0x647A6366D2C43F,0x8702A0DB0BDDF,0x24000000],[0x11C0A6332B0CBC,0xD6EE0CC906CE7E,0x647A6366D2C43F,0x8702A0DB0BDDF,0x24000000],[0x7802562,0x80,0x0,0x0,0x0]],[[0x7802561,0x80,0x0,0x0,0x0],[0x11C0A6332B0CBC,0xD6EE0CC906CE7E,0x647A6366D2C43F,0x8702A0DB0BDDF,0x24000000],[0x11C0A6332B0CBD,0xD6EE0CC906CE7E,0x647A6366D2C43F,0x8702A0DB0BDDF,0x24000000],[0x11C0A6332B0CBC,0xD6EE0CC906CE7E,0x647A6366D2C43F,0x8702A0DB0BDDF,0x24000000]],[[0x7802562,0x80,0x0,0x0,0x0],[0x7802561,0x80,0x0,0x0,0x0],[0x7802561,0x80,0x0,0x0,0x0],[0x7802561,0x80,0x0,0x0,0x0]],[[0x3C012B2,0x40,0x0,0x0,0x0],[0xF004AC2,0x100,0x0,0x0,0x0],[0x11C0A62F6AFA0A,0xD6EE0CC906CE3E,0x647A6366D2C43F,0x8702A0DB0BDDF,0x24000000],[0x3C012B2,0x40,0x0,0x0,0x0]]]


#endif

}

