// ZORTON_2504.c
// Generated by decompiling ZORTON.EXE
// using Reko decompiler version 0.9.2.3.

#include "ZORTON_2504.h"

// 2504:0283: Register (memptr (ptr16 Eq_40) Eq_29438) fn2504_0283(Register out Eq_27548 bpOut, Register out Eq_2 esOut)
// Called from:
//      fn2353_0004
struct Eq_29438 Eq_40::* fn2504_0283(union Eq_27548 & bpOut, union Eq_2 & esOut)
{
	word16 ax_12 = seg28BA->t8586;
	word16 cx_14;
	struct Eq_29438 Eq_40::* bx_15 = Eq_40::a0356;
	for (cx_14 = 0x07; cx_14 != 0x00; --cx_14)
	{
		if ((seg2504->*bx_15).w0000 == ax_12)
		{
			struct Eq_29438 Eq_40::* bx_28;
			bx_15[7]();
			bpOut = fp - 2;
			esOut.u0 = <invalid>;
			return bx_28;
		}
		++bx_15;
	}
	bpOut = bp;
	esOut.u0 = <invalid>;
	return bx_15;
}

// 2504:094D: Register Eq_2 fn2504_094D(Register Eq_2 ds, Stack Eq_10469 wArg04, Stack Eq_2 wArg06, Stack Eq_2 dwArg08, Stack Eq_2 wArg0C, Stack Eq_2 wArg0E, Stack Eq_2 wArg10)
// Called from:
//      fn1F0F_0BF7
Eq_2 fn2504_094D(Eq_2 ds, Eq_10469 wArg04, Eq_2 wArg06, Eq_2 dwArg08, Eq_2 wArg0C, Eq_2 wArg0E, Eq_2 wArg10)
{
	Eq_2 dwLoc0A_494 = seg28BA->tA882;
	Eq_2 wLoc10_495 = 0x00;
	while (true)
	{
		word16 wLoc08_609 = SLICE(dwLoc0A_494, word16, 16);
		word16 wLoc0A_610 = (word16) dwLoc0A_494;
		Eq_29473 wArg08_616 = (word16) dwArg08;
		if (wLoc10_495 >= wArg0C)
			break;
		Eq_2 bx_362;
		Eq_2 cx_363;
		Eq_2 dx_364;
		Eq_2 ax_365 = fn0800_3615(ds, dwArg08, 0x8001, wLoc60, out cx_363, out dx_364, out bx_362);
		if (ax_365 == ~0x00)
		{
			word16 dx_707;
			word16 bx_708;
			word16 di_709;
			fn263F_03F3(cx_363, dx_364, bx_362, ds, out dx_707, out bx_708, out di_709, out ds);
		}
		Eq_915 ax_401 = fn0800_2DD1(ds, ax_365);
		word16 bx_704;
		word16 cx_702;
		word16 dx_703;
		fn0800_3C87(ds, ax_365, dwLoc0A_494, ax_401, out cx_702, out dx_703, out bx_704);
		Eq_29518 bx_434 = (wLoc10_495 << 0x02) + (fp - 0x60);
		ss->*((word16) bx_434 + 2) = wLoc08_609;
		ss->*bx_434 = wLoc0A_610;
		word16 bx_706;
		word16 dx_705;
		fn0800_2A93((byte) ax_401, ds, ax_365, out dx_705, out bx_706);
		struct Eq_29539 * es_460 = SLICE(dwArg08, selector, 16);
		byte al_461 = Mem445[es_460:SLICE(dwArg08, word16, 0) + wArg0E:byte];
		Mem465[dwArg08 + wArg0E:byte] = al_461 + 0x01;
		dwLoc0A_494 = SEQ(wLoc08_609, (word32) ax_401 + wLoc0A_610);
		if (al_461 > 0x38)
		{
			Mem470[dwArg08 + wArg0E:byte] = 0x30;
			Mem478[es_460:wArg0E + wArg08_616 + -1:byte] = Mem470[es_460:wArg0E + wArg08_616 + -1:byte] + 0x01;
		}
		wLoc10_495 = (word16) wLoc10_495.u1 + 1;
	}
	__cli();
	word32 edx_700;
	word32 ebx_701;
	word16 cx_699;
	Eq_2 es_195;
	fn2425_01E8(ds, out cx_699, out edx_700, out ebx_701, out es_195);
	__sti();
	Eq_2 wLoc10_498 = 0x00;
	while (wLoc10_498 < wArg0C)
	{
		Eq_10469 ax_217;
		if (wArg04 < 0x7C)
			ax_217 = wArg04;
		else
			ax_217 = wArg04 - *SEQ(ds, fp - 0x60)[wLoc10_498];
		Eq_2 ax_235;
		if (wArg06 < 0x50)
			ax_235 = wArg06;
		else
			ax_235 = wArg06 - *((word32) SEQ(ds, fp - 0x60)[wLoc10_498] + 2);
		Eq_22803 v26_244 = seg28BA->tAA80;
		fn216E_0138(ax_217, ax_235, SEQ(ss, fp - 0x60)[wLoc10_498], (word16) dwLoc0A_494, SLICE(dwLoc0A_494, word16, 16), v26_244, SLICE(v26_244, word16, 16));
		Eq_2 v31_280 = seg28BA->tAA80;
		Eq_2 v32_288 = SEQ(ss, fp - 0x60)[wLoc10_498];
		word16 bx_711;
		byte al_710;
		fn216E_01DC(ax_217, ax_235, v32_288, SLICE(v32_288, word16, 16), v31_280, SLICE(v31_280, word16, 16), out al_710, out bx_711);
		if (wArg0C - 0x01 > wLoc10_498)
			seg28BA->tA188 = wArg10;
		else
			seg28BA->tA188 = wArg10 << 0x03;
		do
			;
		while (seg28BA->tA188 > 0x00);
		Eq_11683 v35_326 = seg28BA->tAA80;
		fn216E_0000(ax_217, ax_235, (word16) dwLoc0A_494, SLICE(dwLoc0A_494, word16, 16), v35_326, SLICE(v35_326, word16, 16), out es_195);
		wLoc10_498 = (word32) wLoc10_498 + 1;
	}
	int16 wLoc10_501;
	for (wLoc10_501 = wArg0C - 0x01; wLoc10_501 >= 0x00; --wLoc10_501)
	{
		Eq_10469 ax_76;
		if (wArg04 < 0x7C)
			ax_76 = wArg04;
		else
			ax_76 = wArg04 - *SEQ(ds, fp - 0x60)[wLoc10_501];
		Eq_2 ax_94;
		if (wArg06 < 0x50)
			ax_94 = wArg06;
		else
			ax_94 = wArg06 - *((word32) SEQ(ds, fp - 0x60)[wLoc10_501] + 2);
		Eq_22803 v40_103 = seg28BA->tAA80;
		fn216E_0138(ax_76, ax_94, SEQ(ss, fp - 0x60)[wLoc10_501], (word16) dwLoc0A_494, SLICE(dwLoc0A_494, word16, 16), v40_103, SLICE(v40_103, word16, 16));
		Eq_2 v45_139 = seg28BA->tAA80;
		Eq_2 v46_147 = SEQ(ss, fp - 0x60)[wLoc10_501];
		byte al_715;
		word16 bx_716;
		fn216E_01DC(ax_76, ax_94, v46_147, SLICE(v46_147, word16, 16), v45_139, SLICE(v45_139, word16, 16), out al_715, out bx_716);
		seg28BA->tA188 = wArg10;
		do
			;
		while (seg28BA->tA188 > 0x00);
		Eq_11683 v49_176 = seg28BA->tAA80;
		fn216E_0000(ax_76, ax_94, (word16) dwLoc0A_494, SLICE(dwLoc0A_494, word16, 16), v49_176, SLICE(v49_176, word16, 16), out es_195);
	}
	__cli();
	Eq_2 ds_52;
	word16 dx_713;
	word16 bx_714;
	word16 cx_712;
	fn2425_0286(es_195, ds, out cx_712, out dx_713, out bx_714, out ds_52);
	__sti();
	return ds_52;
}

