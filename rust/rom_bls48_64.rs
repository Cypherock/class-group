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

use crate::arch::Chunk;
use crate::bls48::big::NLEN;

// Base Bits= 58
// bls48 Modulus

pub const MODULUS: [Chunk; NLEN] = [
    0x2F6E60FFCF6AC0B,
    0x259C02699877E7B,
    0x37A9870D4228402,
    0x80821A1DACBB04,
    0x13016A7C025A415,
    0x2BB355ACDE6E250,
    0x20536F405DA950,
    0x295B219C54AB351,
    0x3FCFC5B23729047,
    0x3F45F610B,
];
pub const R2MODP: [Chunk; NLEN] = [
    0x25E03FA0D59D0FA,
    0x6B55DC2DE8FD41,
    0xA0E01D0B937F48,
    0x20336279F50EFCE,
    0x2212822A3470A2F,
    0xD5A21C4F9FB72D,
    0x89E8F0A1CFD9F8,
    0x2291DA62B48793,
    0x3DC6978EF609E61,
    0x1735D29E,
];
pub const MCONST: Chunk = 0x21BFCBCA9DA805D;
pub const FRA: [Chunk; NLEN] = [
    0x2623CFD9325BF89,
    0x341FA8DCCD0A56F,
    0x1952FBA0E83BCCA,
    0xBE3C26F8D1D297,
    0x27F84ABE7AB9F2C,
    0x13BDE945C9DECEB,
    0x3B3213C83C0F60B,
    0x3B7F0411FF27FF7,
    0x80089C089BB36C,
    0xA62E01EE,
];
pub const FRB: [Chunk; NLEN] = [
    0x2623CFD9325BF89,
    0x341FA8DCCD0A56F,
    0x1952FBA0E83BCCA,
    0xBE3C26F8D1D297,
    0x27F84ABE7AB9F2C,
    0x13BDE945C9DECEB,
    0x3B3213C83C0F60B,
    0x3B7F0411FF27FF7,
    0x80089C089BB36C,
    0xA62E01EE,
];

pub const CURVE_COF_I: isize = 0;
pub const CURVE_A: isize = 0;
pub const CURVE_B_I: isize = 17;
pub const CURVE_B: [Chunk; NLEN] = [0x11, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0];
pub const CURVE_ORDER: [Chunk; NLEN] = [
    0x2FFFF0000000001,
    0x11550278A769C21,
    0x14D1EB162029C21,
    0x2309B4A2B6307F4,
    0x34790BD26DFED78,
    0x2C6FE3F2571037B,
    0x1306A973C465FB0,
    0x28446ABB18DF17A,
    0xC43BF73E,
    0x0,
];
pub const CURVE_GX: [Chunk; NLEN] = [
    0x3286D2F65D71D33,
    0x3601553F8CB783F,
    0xFF01647711EE0B,
    0x268BC07F29FD8CC,
    0xE0702E69A80F66,
    0x285003EAC056511,
    0x35E130D242B2C3A,
    0x107024C87924166,
    0x17595DB8957EDD7,
    0x26A27A4A1,
];
pub const CURVE_GY: [Chunk; NLEN] = [
    0x29A5B3FEA6ED83A,
    0x3712E552A29C33D,
    0x3391EA8E6958677,
    0x29F3C7B9DED7E3E,
    0x4E2E3818FB7229,
    0x1CC30999551E32D,
    0xE67A4086260E3C,
    0x2A68CCB8579C437,
    0x62C5FAE2B3349D,
    0x2B634253,
];

pub const CURVE_BNX: [Chunk; NLEN] = [0x7DE40020, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0];
pub const CURVE_COF: [Chunk; NLEN] = [
    0xA2D10F7F12ABEB,
    0x5,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
];
pub const CURVE_CRU: [Chunk; NLEN] = [
    0x364E7E6CBBA429,
    0x338C28A4D3DD160,
    0x28DC3C68308093A,
    0x230B290AE0E768,
    0x127B0AB9B73BC2D,
    0x23192337B1A639C,
    0x1E399AEEFF04AE3,
    0x20C88F0091318E5,
    0x37CEF23203A79F7,
    0x3F45F60F3,
];
pub const CURVE_PXAAA: [Chunk; NLEN] = [
    0x28D2E8E8923CE4A,
    0x2F5C40B4AE04F4A,
    0x2165D8A1313A20C,
    0x2BFC7FD18DF074F,
    0x12B37F0A7C90B98,
    0x286ED92CE57BD37,
    0x1C416C4ABF57375,
    0x39779D0B2EE2172,
    0x1A1C0497A5D9487,
    0x3995E3602,
];
pub const CURVE_PXAAB: [Chunk; NLEN] = [
    0x271CDC5AC0A1BE1,
    0x2A3F8EC01DF5FDC,
    0xAD5478433972C5,
    0x22B73FAE2491D8C,
    0x30E75C6B40A11FA,
    0xE960C8FF259C26,
    0x8CE48632D18B04,
    0x39549A6BC27F419,
    0x274A97B58DB48B6,
    0xA5080497,
];
pub const CURVE_PXABA: [Chunk; NLEN] = [
    0x23A724C770C5DC4,
    0x2A592B776B3BCB6,
    0x110934259BEC736,
    0x18E2C5A649AB2A8,
    0x2B84CB2C58CD55,
    0x168195F91EE8B90,
    0xF7D917CE233167,
    0x2A38FB7729335BD,
    0x36D71DDA78B689B,
    0x2D4BFBE3D,
];
pub const CURVE_PXABB: [Chunk; NLEN] = [
    0xD629669A64B740,
    0x47F52632481578,
    0x40D7054323ADD1,
    0x3F9F4CCCD789E1B,
    0x1E3C73C41F4EEA7,
    0x15E7D7A61968610,
    0x1B4186B40590D3B,
    0x19F3BA577306AAF,
    0x12DFE5F23F63B1A,
    0x24E102A76,
];
pub const CURVE_PXBAA: [Chunk; NLEN] = [
    0x1BB0C6172F1E01F,
    0x30C4734D2C29802,
    0x990FA39218788,
    0xEEB80ED6AE2501,
    0x34728852870C80B,
    0x94841D1637D478,
    0x21CBCE27C3AD4D4,
    0xA29F9E111E6AD5,
    0x18CF1447CC49D3,
    0x37787BDFD,
];
pub const CURVE_PXBAB: [Chunk; NLEN] = [
    0x30A38238637383D,
    0x288094FE661F866,
    0x135C51ED5D3D212,
    0x3C39C57E8051F25,
    0x164639D737D882F,
    0x312AEC8AA8DB8FC,
    0x3FE838885E54DA8,
    0x2FC3978BA297414,
    0x850556F014F91F,
    0x20B6CE9E3,
];
pub const CURVE_PXBBA: [Chunk; NLEN] = [
    0x1683DB3D711939C,
    0x26F9475A69066BA,
    0xBCDB572CF2F6C0,
    0x128DC8902CE1323,
    0x29B3233EF353D1C,
    0x342402A46B7046,
    0x3187D1A403D6070,
    0x3E3466F9F23BA45,
    0xD943BE2435A9CC,
    0x2A08A9CE1,
];
pub const CURVE_PXBBB: [Chunk; NLEN] = [
    0x32D410A856F4899,
    0x7147AE4A959750,
    0x28AEA57990BC9BC,
    0x2807F11E9E26DA,
    0x282C5EBA71895E3,
    0x2832162D9FEC5FF,
    0x33479E30007597C,
    0x227A376C26A4B00,
    0x1C16F1567857A32,
    0x37DD51E0F,
];
pub const CURVE_PYAAA: [Chunk; NLEN] = [
    0x2E097CFB4137844,
    0x313B1927FD3CCDD,
    0x1EB86FABC768851,
    0x4156382E29C659,
    0x3C10CC7CF8896E0,
    0x22FC388FD1D539C,
    0x2C3E202F56CDD39,
    0x2E9645FB43E8C72,
    0x93548FD8706190,
    0x1D9BB42E1,
];
pub const CURVE_PYAAB: [Chunk; NLEN] = [
    0x25E3248EDC83190,
    0x2BAABD11AA26424,
    0x161D23BAC418D32,
    0x5B3258247CBFF7,
    0xED295CADE03C1F,
    0x3A84758C5C741A2,
    0x3D207E205E02B9E,
    0x86743E24EA6513,
    0x1DAA8E268EFA1C4,
    0x9E72CE4F,
];
pub const CURVE_PYABA: [Chunk; NLEN] = [
    0x1DC5FD041985C0D,
    0x2350136864770FA,
    0x3179A5F5483ACE9,
    0x2C25AB1A171F32C,
    0x397C4403E658341,
    0xE7E1C2186E971,
    0x15921F60B0A5F40,
    0x46E9317635E008,
    0x17EF1353F3140D6,
    0x35166F259,
];
pub const CURVE_PYABB: [Chunk; NLEN] = [
    0x36FE0A8159D42F8,
    0x290EBF4445895D7,
    0x20273B0FE9E7F2B,
    0x23A6E2FF0F3FD7D,
    0x1F37678869E5006,
    0x2CA2DB53C9ED8D,
    0x4E4BFD902F51DE,
    0x1FF8649F125B66,
    0x382D89BED80731,
    0x28383AAA8,
];
pub const CURVE_PYBAA: [Chunk; NLEN] = [
    0xD512B39F38039F,
    0x23BA255F3C68984,
    0x390AA14058093CF,
    0x1FF0B2F2FFA1622,
    0x310C5CC5F2ABB75,
    0x3D9016C9EB6A2C9,
    0x1CF7EE268EC2F18,
    0x338BBB12C36B65A,
    0x1EEE591B8A1D1AB,
    0xAC11927C,
];
pub const CURVE_PYBAB: [Chunk; NLEN] = [
    0x269E06F295F7865,
    0x2FC1D5BA1CE9A0E,
    0x3631F3F1DACADD7,
    0x30CCF3581D3943,
    0x3FBE3B902505BB0,
    0x23C4A9D31B36A49,
    0x2056135CA438576,
    0x2B78046739984F4,
    0x12C0AC57B6F180E,
    0xC48CA65B,
];
pub const CURVE_PYBBA: [Chunk; NLEN] = [
    0x1D83A9F67CC1979,
    0x12ABE71DD89E6F0,
    0x247B1C21635FDA9,
    0x92880950076209,
    0x2ECF179E0D733D7,
    0x20D2DFFB53841F9,
    0x3441B1645BC9FE8,
    0x3089222CE22EC9D,
    0x3699AE4108C86C5,
    0x320034967,
];
pub const CURVE_PYBBB: [Chunk; NLEN] = [
    0xFC89562FC9F25B,
    0xB13E01AE9AB5D3,
    0x18E8F169C9D264F,
    0x3A5828D76B24A13,
    0x1E8FD9BCEF84D9A,
    0x36D20E3DBFEE16A,
    0x17D3B3DF1AB4C1C,
    0xF190510390F005,
    0x12640E61B9BF549,
    0x283D84D97,
];
pub const CURVE_W: [[Chunk; NLEN]; 2] = [
    [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
    [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
];
pub const CURVE_SB: [[[Chunk; NLEN]; 2]; 2] = [
    [
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
    ],
    [
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
    ],
];
pub const CURVE_WB: [[Chunk; NLEN]; 4] = [
    [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
    [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
    [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
    [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
];
pub const CURVE_BB: [[[Chunk; NLEN]; 4]; 4] = [
    [
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
    ],
    [
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
    ],
    [
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
    ],
    [
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
    ],
];

pub const USE_GLV: bool = true;
pub const USE_GS_G2: bool = true;
pub const USE_GS_GT: bool = true;
pub const GT_STRONG: bool = true;
