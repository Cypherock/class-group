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

/* Fixed Data in ROM - Field and Curve parameters */


package org.miracl.core.BLS12383;

public class ROM
{

// Base Bits= 58
public static final long[] Modulus= {0x2371D6485AAB0ABL,0x30FCA6299214AF6L,0x3801696124F47A8L,0xB3CD969446B0C6L,0x1FEA9284A0AD46L,0x12ADBAD681B6B71L,0x556556956L};
public static final long[] ROI= {0x2371D6485AAB0AAL,0x30FCA6299214AF6L,0x3801696124F47A8L,0xB3CD969446B0C6L,0x1FEA9284A0AD46L,0x12ADBAD681B6B71L,0x556556956L};
public static final long[] R2modp= {0x80B6E0116907F4L,0xCF53CF9752AC11L,0x35D47189941C581L,0x19D0835CB1E4D22L,0x16963E90A0FC49BL,0x367FB9DB3852312L,0x4DFECE397L};
public static final long MConst= 0x1BC0571073435FDL;
public static final long[] Fra= {0x52D72D3311DAC1L,0x24D203F99DCF806L,0x344AE550D8C8A36L,0x348FEE86A1A0959L,0x2C11B52F10E4C6CL,0x9FDA2F0CE2E7F0L,0x22ACD5BF0L};
public static final long[] Frb= {0x1E446375298D5EAL,0xC2AA22FF4452F0L,0x3B684104C2BD72L,0x16ACEAE2A2CA76DL,0x15ECF3F939260D9L,0x8B017E5B388380L,0x32B880D66L};

public static final int CURVE_A= 0;
public static final int CURVE_Cof_I= 0;
//public static final long[] CURVE_Cof= {0x150556155169EABL,0x2AAB0002AAEFFEDL,0x555L,0x0L,0x0L,0x0L,0x0L};
public static final int CURVE_B_I= 15;
public static final long[] CURVE_B= {0xFL,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L};
public static final long[] CURVE_Order= {0x32099EBFEBC0001L,0x17C25684834E5CEL,0x1C81698B381DE0L,0x2003002E0270110L,0x1002001L,0x0L,0x0L};
public static final long[] CURVE_Gx= {0xC4773908734573L,0x176FC20FD1DC11EL,0x3AD84AF1E3445C5L,0x1DAC207D0B0BE1EL,0x52DDB050F31D9FL,0x25E7B3938E0D7D0L,0x41FCBA55BL};
public static final long[] CURVE_Gy= {0x12D165E8003F224L,0x1F527B21FE63F48L,0xA94ADEB4D2DDE5L,0x319AED912441D4CL,0x1C31C46D99D0DADL,0x133ECC00092BA73L,0x68F16727L};

public static final long[] CURVE_Bnx= {0x8000001001200L,0x40L,0x0L,0x0L,0x0L,0x0L,0x0L};
public static final long[] CURVE_Cof= {0x80000010011FFL,0x40L,0x0L,0x0L,0x0L,0x0L,0x0L};
public static final long[] CURVE_Cru= {0xC367502EAAC2A9L,0x17DA068B7D974B7L,0x2F4A34DEA341BC2L,0xD36F75C5738948L,0x6E94874605445L,0x12ADBAD28116AD1L,0x556556956L};
public static final long[] CURVE_Pxa= {0x3CB3B62D7F2D86L,0x3F6AD9E57474F85L,0x1C90F562572EE81L,0x3214B55C96F51FCL,0x27CB1E746432501L,0x1FB00FA301E6425L,0x634D2240L};
public static final long[] CURVE_Pxb= {0x3D9E41EC452DE15L,0x12ACA355FF9837BL,0xBA88E92D5D75B5L,0x3B6741732277F66L,0x3288361DD24F498L,0x592EBCDE9DC5L,0x300D78006L};
public static final long[] CURVE_Pya= {0x68F0BB9408CB41L,0x27B793C83586597L,0x3ACA913A2E75B4L,0x359CF266CF9A25EL,0x33FE6347B6E990EL,0x34894D1F2527615L,0x33792CF93L};
public static final long[] CURVE_Pyb= {0x2D846437F479093L,0x10F2C379889218EL,0x32F449F7BC98B01L,0x111ACFBEA3DEBC2L,0x3D15A7AE001CE0DL,0xB3631AC93B9EE9L,0x20E5247DDL};
//public static final long[][] CURVE_W= {{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L}};
//public static final long[][][] CURVE_SB= {{{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L}},{{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L}}};
//public static final long[][] CURVE_WB= {{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L}};
//public static final long[][][] CURVE_BB= {{{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L}},{{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L}},{{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L}},{{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L},{0x0L,0x0L,0x0L,0x0L,0x0L,0x0L,0x0L}}};
}

