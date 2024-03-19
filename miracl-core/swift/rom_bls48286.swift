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
// Base  bits= 29
static let Modulus:[Chunk] = [0x9C345B,0x13A815C9,0x38D4B67,0xC8388A5,0x4809AAF,0x63F0D60,0x516A1B2,0x16040390,0x11EC7BD7,0x14B9629]
static let R2modp:[Chunk] = [0x8484275,0x16B4A09C,0x13973525,0x19DBD350,0x188DE1C0,0x111BD51D,0x113A0F92,0x6489CAD,0xF188E5E,0xCED0C0]
static let ROI:[Chunk] = [0x9C345A,0x13A815C9,0x38D4B67,0xC8388A5,0x4809AAF,0x63F0D60,0x516A1B2,0x16040390,0x11EC7BD7,0x14B9629]
static let SQRTm3:[Chunk] = [0x6524A9C,0x6BD2397,0x14CA2663,0x6B70283,0x84EB335,0xC4C4D38,0x61EE65D,0xE146445,0x1478F5D8,0x14B8E12]
static public let CRu:[Chunk] = [0x3773F7B,0xD329CB0,0xC2BB8E5,0x99D4594,0x667A6F2,0x1945AD4C,0x159AC407,0x20C33EA,0x332B8D8,0x14B921E]
static let MConst:Chunk = 0x16EA242D
static public let Fra:[Chunk] = [0x1FC90183,0x15434AF9,0xF4FA4DB,0xAAD7DA3,0x8F09A7C,0x81F7813,0x1F8010F6,0x9D15D85,0xC522C11,0x6CA0BF]
static public let Frb:[Chunk] = [0xD332D8,0x1E64CACF,0x143DA68B,0x1D60B01,0x1B900033,0x1E1F954C,0x59690BB,0xC32A60A,0x59A4FC6,0xDEF56A]
static public let TWK:[Chunk] = [0x3D05DCC,0x13ECB9AE,0x10A9C2E6,0x132E0A8A,0x1AA2C6A1,0x65E8A65,0x19C887EF,0xA33E6E6,0xF448A33,0xE9076F]

static let CURVE_Cof_I:Int = 62958
static public let CURVE_Cof:[Chunk] = [0xF5EE,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static let CURVE_B_I:Int = 10
static public let CURVE_B:[Chunk] = [0xA,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Order:[Chunk] = [0x1D612C81,0x1E208D97,0x1CA5C07F,0x11E51045,0x1E4FE229,0x13154A7D,0x127B79AC,0x1602A6BF,0x86BC9E,0x0]
static public let CURVE_Gx:[Chunk] = [0x95D59E0,0x44BF518,0x1BEE8577,0x1B2E8EB9,0xE84D19D,0xA23A0D2,0x103C1301,0x111F68ED,0x13D120DB,0x34B921]
static public let CURVE_Gy:[Chunk] = [0x10ABEB43,0x177B4FCB,0x38F8BB,0x6F9CD6B,0x1B0AC1F2,0x1846F729,0x1E5E6A8C,0x5AF112F,0xA1E656E,0x101C720]
static public let CURVE_HTPC:[Chunk] = [0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]

static public let CURVE_Bnx:[Chunk] = [0xF5EF,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0]
static public let CURVE_Pxaaa:[Chunk] = [0x56106B5,0x20B1A4C,0x113303FA,0x187639D9,0x1D9F51AC,0xA96D657,0x132BADEA,0x1A544F60,0x531C71,0x11567EA]
static public let CURVE_Pxaab:[Chunk] = [0x96D1A55,0xF668DEC,0xE2476A7,0x4EE30AA,0x1EF56B94,0x5192C97,0x121CF932,0x14B1A4A1,0x196B5C85,0xC6DDCC]
static public let CURVE_Pxaba:[Chunk] = [0x7D7A35E,0x408D1D3,0x1162980E,0x1F5E9D19,0x12AF41C9,0xCD2835A,0x17875370,0x62F5C57,0x15DE0A7C,0x541496]
static public let CURVE_Pxabb:[Chunk] = [0x2F023E8,0x14742906,0xCF4B428,0x3236B9E,0x1B62D89F,0x192E7AEF,0x1E4BA079,0x19B17763,0x155FAC94,0x1015F06]
static public let CURVE_Pxbaa:[Chunk] = [0xF14CB9B,0x5CC6ADC,0x18955362,0x142FAC5F,0x11B96A21,0x18F7B6AA,0x96591F1,0xC5096A4,0x9A1E3F7,0xBA939B]
static public let CURVE_Pxbab:[Chunk] = [0xB60DD54,0x1FB59436,0x1C68910E,0x10A65726,0x6BE9C0B,0x1C6AA6BF,0x14DD8358,0x1E68D885,0x85E9D59,0x880F52]
static public let CURVE_Pxbba:[Chunk] = [0x19D776DA,0x1052D855,0x844D7E8,0xCAE4EC2,0x4ADABAA,0x120A2C5F,0x192AB537,0x3F9DEC1,0xE261FE4,0x7B037E]
static public let CURVE_Pxbbb:[Chunk] = [0x8B50A8E,0x19FF11C1,0x18273AD7,0xEAA9DE4,0x1EC9A57,0x1670C91D,0x300009C,0xACD8A2D,0x6920D19,0xF85987]
static public let CURVE_Pyaaa:[Chunk] = [0x7E988BE,0x1366AFEB,0x5E2F3B8,0x1FCBDF1D,0x114E8B31,0x1CD92A27,0x1A53FC0,0xAAF8FE7,0xDA962CD,0x10F87C6]
static public let CURVE_Pyaab:[Chunk] = [0xDF11B92,0x1BC2B368,0x1AF17821,0x6663003,0xDB40CB8,0x20094F8,0x1856186E,0x1528744B,0x1EC6FED7,0x700E0F]
static public let CURVE_Pyaba:[Chunk] = [0xBFDD06A,0x3E7D33D,0x13F96495,0x179B5611,0x12EB8E64,0xD7054C6,0xD7BFC95,0x145B3D76,0x18C3D6BE,0x9607FD]
static public let CURVE_Pyabb:[Chunk] = [0x188A47F4,0x19EEFE9B,0x41ACCA2,0x12BF346C,0x11F157D1,0x19429C28,0x14D4ACD2,0x743BB7B,0x55BDFFF,0xAB418F]
static public let CURVE_Pybaa:[Chunk] = [0x5E39E77,0x1B76DB9A,0x54E3132,0x190321FF,0x5119324,0x123E6F79,0x1064FB7D,0x1D69EBDE,0xAA01884,0x39C720]
static public let CURVE_Pybab:[Chunk] = [0x164975C6,0x194140A1,0xA2302C0,0x1C495B39,0x613723B,0xB4D86D7,0x1A6F8686,0x7238A06,0x6896E24,0x9B2C3B]
static public let CURVE_Pybba:[Chunk] = [0x1BF2D7C,0x1E99CD5E,0xEA89102,0xE27DE36,0x13837F1B,0xA2D04CE,0x23E06D8,0x18BDC695,0x175143C9,0xFD8541]
static public let CURVE_Pybbb:[Chunk] = [0x51130A6,0x154D068F,0x18954F6A,0x173CE106,0x7C687EE,0xD23B3B5,0xB58CC3B,0x1342EEF6,0xDC6AC9E,0xC9F9BC]

#endif

#if D64
// Base  bits= 60
static let Modulus:[Chunk] = [0xE7502B9209C345B,0xF641C4528E352D9,0xC8C7E1AC04809AA,0xD7B0201C8145A86,0x2972C531EC7B]
static let R2modp:[Chunk] = [0x61F9539D245AF2C,0xA1991A6E51410D8,0x1603A99FC661885,0xC8A2CE485CD7822,0xD54A6F0B25E]
static let ROI:[Chunk] = [0xE7502B9209C345A,0xF641C4528E352D9,0xC8C7E1AC04809AA,0xD7B0201C8145A86,0x2972C531EC7B]
static let SQRTm3:[Chunk] = [0xCD7A472E6524A9C,0x535B8141D328998,0x758989A7084EB33,0xD870A3222987B99,0x2971C25478F5]
static public let CRu:[Chunk] = [0x5A6539603773F7B,0x24CEA2CA30AEE39,0x1F28B5A98667A6F,0xD810619F5566B10,0x297243C332B8]
static let MConst:Chunk = 0x227E5D8F6EA242D
static public let Fra:[Chunk] = [0xEA8695F3FC90183,0xC556BED1BD3E936,0xD903EF0268F09A7,0x114E8AEC2FE0043,0xD9417EC522C]
static public let Frb:[Chunk] = [0xFCC9959E0D332D8,0x30EB0580D0F69A2,0xEFC3F2A99B90003,0xC66195305165A42,0x1BDEAD459A4F]
static public let TWK:[Chunk] = [0xA7D9735C3D05DCC,0x1997054542A70B9,0xBCCBD14CBAA2C6A,0x33519F37367221F,0x1D20EDEF448A]

static let CURVE_Cof_I:Int = 62958
static public let CURVE_Cof:[Chunk] = [0xF5EE,0x0,0x0,0x0,0x0]
static let CURVE_B_I:Int = 10
static public let CURVE_B:[Chunk] = [0xA,0x0,0x0,0x0,0x0]
static public let CURVE_Order:[Chunk] = [0xFC411B2FD612C81,0x98F28822F29701F,0xB262A94FBE4FE22,0x9EB01535FC9EDE6,0x86BC]
static public let CURVE_Gx:[Chunk] = [0xC897EA3095D59E0,0xDD97475CEFBA15D,0x544741A4E84D19,0xDB88FB476C0F04C,0x6972433D120]
static public let CURVE_Gy:[Chunk] = [0xEEF69F970ABEB43,0x237CE6B580E3E2E,0x3308DEE53B0AC1F,0x6E2D78897F979AA,0x2038E40A1E65]
static public let CURVE_HTPC:[Chunk] = [0x1,0x0,0x0,0x0,0x0]

static public let CURVE_Bnx:[Chunk] = [0xF5EF,0x0,0x0,0x0,0x0]
static public let CURVE_Pxaaa:[Chunk] = [0x8416349856106B5,0xCC3B1CECC4CC0FE,0xA952DACAFD9F51A,0x71D2A27B04CAEB7,0x22ACFD40531C]
static public let CURVE_Pxaab:[Chunk] = [0xDECD1BD896D1A55,0x427718553891DA9,0xC8A32592FEF56B9,0x85A58D250C873E4,0x18DBB9996B5C]
static public let CURVE_Pxaba:[Chunk] = [0x8811A3A67D7A35E,0x9FAF4E8CC58A603,0xC19A506B52AF41C,0x7C317AE2BDE1D4D,0xA8292D5DE0A]
static public let CURVE_Pxabb:[Chunk] = [0x28E8520C2F023E8,0xF191B5CF33D2D0A,0xE725CF5DFB62D89,0x94CD8BBB1F92E81,0x202BE0D55FAC]
static public let CURVE_Pxbaa:[Chunk] = [0x8B98D5B8F14CB9B,0x1A17D62FE2554D8,0xC71EF6D551B96A2,0xF76284B52259647,0x17527369A1E3]
static public let CURVE_Pxbab:[Chunk] = [0xBF6B286CB60DD54,0xB8532B9371A2443,0x638D54D7E6BE9C0,0x59F346C42D3760D,0x1101EA485E9D]
static public let CURVE_Pxbba:[Chunk] = [0x20A5B0AB9D776DA,0xA657276121135FA,0xDE41458BE4ADABA,0xE41FCEF60E4AAD4,0xF606FCE261F]
static public let CURVE_Pxbbb:[Chunk] = [0xF3FE23828B50A8E,0x77554EF2609CEB5,0x72CE1923A1EC9A5,0x19566C5168C0002,0x1F0B30E6920D]
static public let CURVE_Pyaaa:[Chunk] = [0x26CD5FD67E988BE,0x1FE5EF8E978BCEE,0x39B2544F14E8B3,0xCD557C7F38694FF,0x21F0F8CDA962]
static public let CURVE_Pyaab:[Chunk] = [0x778566D0DF11B92,0x83331801EBC5E08,0xB840129F0DB40CB,0xD7A943A25E15861,0xE01C1FEC6FE]
static public let CURVE_Pyaba:[Chunk] = [0x47CFA67ABFDD06A,0x4BCDAB08CFE5925,0x55AE0A98D2EB8E6,0xBEA2D9EBB35EFF2,0x12C0FFB8C3D6]
static public let CURVE_Pyabb:[Chunk] = [0xB3DDFD3788A47F4,0x195F9A36106B328,0x4B28538511F157D,0xFF3A1DDBDD352B3,0x156831E55BDF]
static public let CURVE_Pybaa:[Chunk] = [0xB6EDB7345E39E77,0x4C8190FF9538C4C,0xF647CDEF2511932,0x84EB4F5EF4193ED,0x738E40AA018]
static public let CURVE_Pybab:[Chunk] = [0x3282814364975C6,0xBE24AD9CA88C0B0,0x1969B0DAE613723,0x24391C50369BE1A,0x13658766896E]
static public let CURVE_Pybba:[Chunk] = [0xBD339ABC1BF2D7C,0xB713EF1B3AA2440,0x6145A099D3837F1,0xC9C5EE34A88F81B,0x1FB0A8375143]
static public let CURVE_Pybbb:[Chunk] = [0xAA9A0D1E51130A6,0xEB9E708362553DA,0xEDA47676A7C687E,0x9E9A1777B2D6330,0x193F378DC6AC]

#endif


}

