/*
 * Copyright (c) 2012-2020 MIRACL UK Ltd.
 *
 * This file is part of MIRACL Core
 * (see https://github.com/miracl/core).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//
//  rom.swift
//
public struct ROM{
 
#if D32
// Base Bits= 29
//  bls48 Curve Modulus
    
static let Modulus:[Chunk] = [0x1CF6AC0B,0x17B7307F,0x19877E7B,0x12CE0134,0x14228402,0x1BD4C386,0x1DACBB04,0x40410D0,0x25A415,0x980B53E,0xDE6E250,0x15D9AAD6,0x5DA950,0x1029B7A,0x54AB351,0x14AD90CE,0x3729047,0x1FE7E2D9,0x145F610B,0x1F]
static let ROI:[Chunk] = [0x1CF6AC0A,0x17B7307F,0x19877E7B,0x12CE0134,0x14228402,0x1BD4C386,0x1DACBB04,0x40410D0,0x25A415,0x980B53E,0xDE6E250,0x15D9AAD6,0x5DA950,0x1029B7A,0x54AB351,0x14AD90CE,0x3729047,0x1FE7E2D9,0x145F610B,0x1F]
static let R2modp:[Chunk] = [0xD59D0FA,0x12F01FD0,0xDE8FD41,0x35AAEE1,0xB937F48,0x50700E8,0x1F50EFCE,0x1019B13C,0x3470A2F,0x11094115,0xF9FB72D,0x6AD10E2,0x1CFD9F8,0x44F4785,0x2B48793,0x1148ED3,0xF609E61,0x1EE34BC7,0x1735D29E,0x0]
static let MConst:Chunk = 0x9DA805D
static public let Fra:[Chunk] = [0x1325BF89,0x1311E7EC,0xCD0A56F,0x1A0FD46E,0xE83BCCA,0xCA97DD0,0x18D1D297,0x5F1E137,0x7AB9F2C,0x13FC255F,0x1C9DECEB,0x9DEF4A2,0x3C0F60B,0x1D9909E4,0x1FF27FF7,0x1DBF8208,0x89BB36C,0x40044E0,0x62E01EE,0x5]
static public let Frb:[Chunk] = [0x1325BF89,0x1311E7EC,0xCD0A56F,0x1A0FD46E,0xE83BCCA,0xCA97DD0,0x18D1D297,0x5F1E137,0x7AB9F2C,0x13FC255F,0x1C9DECEB,0x9DEF4A2,0x3C0F60B,0x1D9909E4,0x1FF27FF7,0x1DBF8208,0x89BB36C,0x40044E0,0x62E01EE,0x5]

static let CURVE_Cof_I:Int = 0
static let CURVE_A:Int = 0
static let CURVE_B_I:Int = 17
static public let CURVE_B:[Chunk] = [0x11,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Order:[Chunk] = [0x1,0x17FFF800,0xA769C21,0x8AA813C,0x2029C21,0xA68F58B,0xB6307F4,0x1184DA51,0x6DFED78,0x1A3C85E9,0x571037B,0x1637F1F9,0x1C465FB0,0x98354B9,0x118DF17A,0x1422355D,0x43BF73E,0x6,0x0,0x0]
static public let CURVE_Gx:[Chunk] = [0x5D71D33,0x1943697B,0x18CB783F,0x1B00AA9F,0x1711EE0B,0x7F80B23,0x129FD8CC,0x1345E03F,0x9A80F66,0x7038173,0xC056511,0x142801F5,0x42B2C3A,0x1AF09869,0x7924166,0x8381264,0x957EDD7,0xBACAEDC,0xA27A4A1,0x13]
static public let CURVE_Gy:[Chunk] = [0xA6ED83A,0x14D2D9FF,0xA29C33D,0x1B8972A9,0x6958677,0x19C8F547,0x1DED7E3E,0x14F9E3DC,0x18FB7229,0x27171C0,0x1551E32D,0xE6184CC,0x6260E3C,0x733D204,0x579C437,0x1534665C,0x2B3349D,0x3162FD7,0xB634253,0x1]

static public let CURVE_Bnx:[Chunk] = [0x1DE40020,0x3,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]

static public let CURVE_Cof:[Chunk] = [0x1DE4001F,0x3,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
//static public let CURVE_Cof:[Chunk] = [0x1F12ABEB,0x516887B,0x5,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Cru:[Chunk] = [0xCBBA429,0x1B273F3,0xD3DD160,0x19C61452,0x308093A,0x146E1E34,0xAE0E768,0x1185948,0x1B73BC2D,0x93D855C,0x1B1A639C,0x118C919B,0xFF04AE3,0xF1CCD77,0x91318E5,0x10644780,0x3A79F7,0x1BE77919,0x145F60F3,0x1F]
static public let CURVE_Pxaaa:[Chunk] = [0x923CE4A,0x14697474,0xAE04F4A,0x17AE205A,0x1313A20C,0x10B2EC50,0x18DF074F,0x15FE3FE8,0x7C90B98,0x959BF85,0xE57BD37,0x14376C96,0xBF57375,0xE20B625,0x12EE2172,0x1CBBCE85,0x1A5D9487,0xD0E024B,0x195E3602,0x1C]
static public let CURVE_Pxaab:[Chunk] = [0xC0A1BE1,0x138E6E2D,0x1DF5FDC,0x151FC760,0x33972C5,0x56AA3C2,0x2491D8C,0x115B9FD7,0x140A11FA,0x1873AE35,0x1F259C26,0x74B0647,0x12D18B04,0x4672431,0x1C27F419,0x1CAA4D35,0x18DB48B6,0x13A54BDA,0x5080497,0x5]
static public let CURVE_Pxaba:[Chunk] = [0x170C5DC4,0x11D39263,0x16B3BCB6,0x152C95BB,0x19BEC736,0x8849A12,0x49AB2A8,0xC7162D3,0xC58CD55,0x15C2659,0x11EE8B90,0xB40CAFC,0xE233167,0x7BEC8BE,0x129335BD,0x151C7DBB,0x78B689B,0x1B6B8EED,0x14BFBE3D,0x16]
static public let CURVE_Pxabb:[Chunk] = [0x1A64B740,0x6B14B34,0x12481578,0x23FA931,0x323ADD1,0x206B82A,0xD789E1B,0x1FCFA666,0x1F4EEA7,0xF1E39E2,0x1968610,0xAF3EBD3,0x590D3B,0xDA0C35A,0x17306AAF,0xCF9DD2B,0x3F63B1A,0x96FF2F9,0xE102A76,0x12] 
static public let CURVE_Pxbaa:[Chunk] = [0x12F1E01F,0xDD8630B,0x12C29802,0x186239A6,0x19218788,0x4C87D1,0x16AE2501,0x775C076,0x870C80B,0x1A394429,0x1637D478,0x4A420E8,0x1C3AD4D4,0x10E5E713,0x111E6AD5,0x514FCF0,0x7CC49D3,0xC678A2,0x1787BDFD,0x1B]
static public let CURVE_Pxbab:[Chunk] = [0x637383D,0x1851C11C,0x661F866,0x14404A7F,0x15D3D212,0x9AE28F6,0x8051F25,0x1E1CE2BF,0x137D882F,0xB231CEB,0xA8DB8FC,0x18957645,0x5E54DA8,0x1FF41C44,0x1A297414,0x17E1CBC5,0x1014F91F,0x4282AB7,0xB6CE9E3,0x10]
static public let CURVE_Pxbba:[Chunk] = [0x1711939C,0xB41ED9E,0x69066BA,0x137CA3AD,0xCF2F6C0,0x5E6DAB9,0x2CE1323,0x946E448,0xF353D1C,0x14D9919F,0x46B7046,0x1A12015,0x3D6070,0x18C3E8D2,0x1F23BA45,0x1F1A337C,0x435A9CC,0x6CA1DF1,0x8A9CE1,0x15]
static public let CURVE_Pxbbb:[Chunk] = [0x56F4899,0x196A0854,0xA959750,0x38A3D72,0x190BC9BC,0x145752BC,0x1E9E26DA,0x1403F88,0x71895E3,0x14162F5D,0x19FEC5FF,0x14190B16,0x7597C,0x19A3CF18,0x26A4B00,0x113D1BB6,0x7857A32,0xE0B78AB,0x1DD51E0F,0x1B]
static public let CURVE_Pyaaa:[Chunk] = [0x14137844,0x1704BE7D,0x1FD3CCDD,0x189D8C93,0x1C768851,0xF5C37D5,0xE29C659,0x20AB1C1,0xF8896E0,0x1E08663E,0x1D1D539C,0x117E1C47,0x156CDD39,0x161F1017,0x143E8C72,0x174B22FD,0x18706190,0x49AA47E,0x19BB42E1,0xE]
static public let CURVE_Pyaab:[Chunk] = [0xDC83190,0x12F19247,0x1AA26424,0x15D55E88,0xC418D32,0xB0E91DD,0x47CBFF7,0x2D992C1,0xDE03C1F,0x7694AE5,0x5C741A2,0x1D423AC6,0x5E02B9E,0x1E903F10,0x4EA6513,0x433A1F1,0x8EFA1C4,0xED54713,0x1E72CE4F,0x4]
static public let CURVE_Pyaba:[Chunk] = [0x1985C0D,0xEE2FE82,0x64770FA,0x11A809B4,0x1483ACE9,0x18BCD2FA,0x171F32C,0x1612D58D,0x1E658341,0x1CBE2201,0x186E971,0x73F0E1,0xB0A5F40,0xAC90FB0,0x1635E008,0x237498B,0x1F3140D6,0xBF789A9,0x1166F259,0x1A]
static public let CURVE_Pyabb:[Chunk] = [0x159D42F8,0x1B7F0540,0x45895D7,0x14875FA2,0x1E9E7F2B,0x10139D87,0x10F3FD7D,0x11D3717F,0x69E5006,0xF9BB3C4,0x13C9ED8D,0x16516DA,0x102F51DE,0x2725FEC,0x1F125B66,0xFFC324,0x1ED80731,0x1C16C4D,0x383AAA8,0x14]
static public let CURVE_Pybaa:[Chunk] = [0x1F38039F,0x6A8959C,0x13C68984,0x11DD12AF,0x58093CF,0x1C8550A0,0xFFA1622,0xFF85979,0x1F2ABB75,0x18862E62,0x1EB6A2C9,0x1EC80B64,0x8EC2F18,0xE7BF713,0xC36B65A,0x19C5DD89,0x18A1D1AB,0xF772C8D,0xC11927C,0x5]
static public let CURVE_Pybab:[Chunk] = [0x95F7865,0x134F0379,0x1CE9A0E,0x17E0EADD,0x1DACADD7,0x1B18F9F8,0x181D3943,0x186679A,0x2505BB0,0x1FDF1DC8,0x11B36A49,0x11E254E9,0xA438576,0x102B09AE,0x139984F4,0x15BC0233,0x1B6F180E,0x960562B,0x48CA65B,0x6]
static public let CURVE_Pybba:[Chunk] = [0x7CC1979,0xEC1D4FB,0x1D89E6F0,0x955F38E,0x1635FDA9,0x123D8E10,0x10076209,0x494404A,0xD733D7,0x17678BCF,0x153841F9,0x10696FFD,0x5BC9FE8,0x1A20D8B2,0xE22EC9D,0x18449116,0x108C86C5,0x1B4CD720,0x34967,0x19]
static public let CURVE_Pybbb:[Chunk] = [0xFC9F25B,0x7E44AB1,0xE9AB5D3,0x589F00D,0x1C9D264F,0xC7478B4,0x16B24A13,0x1D2C146B,0xEF84D9A,0xF47ECDE,0x1BFEE16A,0x1B69071E,0x11AB4C1C,0xBE9D9EF,0x390F005,0x78C8288,0x1B9BF549,0x9320730,0x3D84D97,0x14]
//static let CURVE_W:[[Chunk]] = [[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]
//static let CURVE_SB:[[[Chunk]]] = [[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]]
//static let CURVE_WB:[[Chunk]] = [[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]
//static let CURVE_BB:[[[Chunk]]] = [[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]]



#endif

#if D64
// Base Bits= 58

static let Modulus:[Chunk] = [0x2F6E60FFCF6AC0B,0x259C02699877E7B,0x37A9870D4228402,0x80821A1DACBB04,0x13016A7C025A415,0x2BB355ACDE6E250,0x20536F405DA950,0x295B219C54AB351,0x3FCFC5B23729047,0x3F45F610B]
static let ROI:[Chunk] = [0x2F6E60FFCF6AC0A,0x259C02699877E7B,0x37A9870D4228402,0x80821A1DACBB04,0x13016A7C025A415,0x2BB355ACDE6E250,0x20536F405DA950,0x295B219C54AB351,0x3FCFC5B23729047,0x3F45F610B]
static let R2modp:[Chunk] = [0x25E03FA0D59D0FA,0x6B55DC2DE8FD41,0xA0E01D0B937F48,0x20336279F50EFCE,0x2212822A3470A2F,0xD5A21C4F9FB72D,0x89E8F0A1CFD9F8,0x2291DA62B48793,0x3DC6978EF609E61,0x1735D29E]
static let MConst:Chunk = 0x21BFCBCA9DA805D
static public let Fra:[Chunk] = [0x2623CFD9325BF89,0x341FA8DCCD0A56F,0x1952FBA0E83BCCA,0xBE3C26F8D1D297,0x27F84ABE7AB9F2C,0x13BDE945C9DECEB,0x3B3213C83C0F60B,0x3B7F0411FF27FF7,0x80089C089BB36C,0xA62E01EE]
static public let Frb:[Chunk] = [0x2623CFD9325BF89,0x341FA8DCCD0A56F,0x1952FBA0E83BCCA,0xBE3C26F8D1D297,0x27F84ABE7AB9F2C,0x13BDE945C9DECEB,0x3B3213C83C0F60B,0x3B7F0411FF27FF7,0x80089C089BB36C,0xA62E01EE]

static let CURVE_Cof_I:Int = 0
static let CURVE_A:Int = 0
static let CURVE_B_I:Int = 17
static public let CURVE_B:[Chunk] = [0x11,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Order:[Chunk] = [0x2FFFF0000000001,0x11550278A769C21,0x14D1EB162029C21,0x2309B4A2B6307F4,0x34790BD26DFED78,0x2C6FE3F2571037B,0x1306A973C465FB0,0x28446ABB18DF17A,0xC43BF73E,0x0]
static public let CURVE_Gx:[Chunk] = [0x3286D2F65D71D33,0x3601553F8CB783F,0xFF01647711EE0B,0x268BC07F29FD8CC,0xE0702E69A80F66,0x285003EAC056511,0x35E130D242B2C3A,0x107024C87924166,0x17595DB8957EDD7,0x26A27A4A1]
static public let CURVE_Gy:[Chunk] = [0x29A5B3FEA6ED83A,0x3712E552A29C33D,0x3391EA8E6958677,0x29F3C7B9DED7E3E,0x4E2E3818FB7229,0x1CC30999551E32D,0xE67A4086260E3C,0x2A68CCB8579C437,0x62C5FAE2B3349D,0x2B634253]

static public let CURVE_Bnx:[Chunk] = [0x7DE40020,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Cof:[Chunk] = [0x7DE4001F,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
//static public let CURVE_Cof:[Chunk] = [0xA2D10F7F12ABEB,0x5,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Cru:[Chunk] = [0x364E7E6CBBA429,0x338C28A4D3DD160,0x28DC3C68308093A,0x230B290AE0E768,0x127B0AB9B73BC2D,0x23192337B1A639C,0x1E399AEEFF04AE3,0x20C88F0091318E5,0x37CEF23203A79F7,0x3F45F60F3]
static public let CURVE_Pxaaa:[Chunk] = [0x28D2E8E8923CE4A,0x2F5C40B4AE04F4A,0x2165D8A1313A20C,0x2BFC7FD18DF074F,0x12B37F0A7C90B98,0x286ED92CE57BD37,0x1C416C4ABF57375,0x39779D0B2EE2172,0x1A1C0497A5D9487,0x3995E3602]
static public let CURVE_Pxaab:[Chunk] = [0x271CDC5AC0A1BE1,0x2A3F8EC01DF5FDC,0xAD5478433972C5,0x22B73FAE2491D8C,0x30E75C6B40A11FA,0xE960C8FF259C26,0x8CE48632D18B04,0x39549A6BC27F419,0x274A97B58DB48B6,0xA5080497]
static public let CURVE_Pxaba:[Chunk] = [0x23A724C770C5DC4,0x2A592B776B3BCB6,0x110934259BEC736,0x18E2C5A649AB2A8,0x2B84CB2C58CD55,0x168195F91EE8B90,0xF7D917CE233167,0x2A38FB7729335BD,0x36D71DDA78B689B,0x2D4BFBE3D]
static public let CURVE_Pxabb:[Chunk] = [0xD629669A64B740,0x47F52632481578,0x40D7054323ADD1,0x3F9F4CCCD789E1B,0x1E3C73C41F4EEA7,0x15E7D7A61968610,0x1B4186B40590D3B,0x19F3BA577306AAF,0x12DFE5F23F63B1A,0x24E102A76]
static public let CURVE_Pxbaa:[Chunk] = [0x1BB0C6172F1E01F,0x30C4734D2C29802,0x990FA39218788,0xEEB80ED6AE2501,0x34728852870C80B,0x94841D1637D478,0x21CBCE27C3AD4D4,0xA29F9E111E6AD5,0x18CF1447CC49D3,0x37787BDFD]
static public let CURVE_Pxbab:[Chunk] = [0x30A38238637383D,0x288094FE661F866,0x135C51ED5D3D212,0x3C39C57E8051F25,0x164639D737D882F,0x312AEC8AA8DB8FC,0x3FE838885E54DA8,0x2FC3978BA297414,0x850556F014F91F,0x20B6CE9E3]
static public let CURVE_Pxbba:[Chunk] = [0x1683DB3D711939C,0x26F9475A69066BA,0xBCDB572CF2F6C0,0x128DC8902CE1323,0x29B3233EF353D1C,0x342402A46B7046,0x3187D1A403D6070,0x3E3466F9F23BA45,0xD943BE2435A9CC,0x2A08A9CE1]
static public let CURVE_Pxbbb:[Chunk] = [0x32D410A856F4899,0x7147AE4A959750,0x28AEA57990BC9BC,0x2807F11E9E26DA,0x282C5EBA71895E3,0x2832162D9FEC5FF,0x33479E30007597C,0x227A376C26A4B00,0x1C16F1567857A32,0x37DD51E0F]
static public let CURVE_Pyaaa:[Chunk] = [0x2E097CFB4137844,0x313B1927FD3CCDD,0x1EB86FABC768851,0x4156382E29C659,0x3C10CC7CF8896E0,0x22FC388FD1D539C,0x2C3E202F56CDD39,0x2E9645FB43E8C72,0x93548FD8706190,0x1D9BB42E1]
static public let CURVE_Pyaab:[Chunk] = [0x25E3248EDC83190,0x2BAABD11AA26424,0x161D23BAC418D32,0x5B3258247CBFF7,0xED295CADE03C1F,0x3A84758C5C741A2,0x3D207E205E02B9E,0x86743E24EA6513,0x1DAA8E268EFA1C4,0x9E72CE4F]
static public let CURVE_Pyaba:[Chunk] = [0x1DC5FD041985C0D,0x2350136864770FA,0x3179A5F5483ACE9,0x2C25AB1A171F32C,0x397C4403E658341,0xE7E1C2186E971,0x15921F60B0A5F40,0x46E9317635E008,0x17EF1353F3140D6,0x35166F259]
static public let CURVE_Pyabb:[Chunk] = [0x36FE0A8159D42F8,0x290EBF4445895D7,0x20273B0FE9E7F2B,0x23A6E2FF0F3FD7D,0x1F37678869E5006,0x2CA2DB53C9ED8D,0x4E4BFD902F51DE,0x1FF8649F125B66,0x382D89BED80731,0x28383AAA8]
static public let CURVE_Pybaa:[Chunk] = [0xD512B39F38039F,0x23BA255F3C68984,0x390AA14058093CF,0x1FF0B2F2FFA1622,0x310C5CC5F2ABB75,0x3D9016C9EB6A2C9,0x1CF7EE268EC2F18,0x338BBB12C36B65A,0x1EEE591B8A1D1AB,0xAC11927C]
static public let CURVE_Pybab:[Chunk] = [0x269E06F295F7865,0x2FC1D5BA1CE9A0E,0x3631F3F1DACADD7,0x30CCF3581D3943,0x3FBE3B902505BB0,0x23C4A9D31B36A49,0x2056135CA438576,0x2B78046739984F4,0x12C0AC57B6F180E,0xC48CA65B]
static public let CURVE_Pybba:[Chunk] = [0x1D83A9F67CC1979,0x12ABE71DD89E6F0,0x247B1C21635FDA9,0x92880950076209,0x2ECF179E0D733D7,0x20D2DFFB53841F9,0x3441B1645BC9FE8,0x3089222CE22EC9D,0x3699AE4108C86C5,0x320034967]
static public let CURVE_Pybbb:[Chunk] = [0xFC89562FC9F25B,0xB13E01AE9AB5D3,0x18E8F169C9D264F,0x3A5828D76B24A13,0x1E8FD9BCEF84D9A,0x36D20E3DBFEE16A,0x17D3B3DF1AB4C1C,0xF190510390F005,0x12640E61B9BF549,0x283D84D97]
//static let CURVE_W:[[Chunk]] = [[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]
//static let CURVE_SB:[[[Chunk]]] = [[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]]
//static let CURVE_WB:[[Chunk]] = [[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]
//static let CURVE_BB:[[[Chunk]]] = [[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]],[[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0],[0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]]]

#endif


}

