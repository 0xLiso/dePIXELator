// ZORTON_0F2B.c
// Generated by decompiling ZORTON.EXE
// using Reko decompiler version 0.9.2.3.

#include "ZORTON_0F2B.h"

// 0F2B:130A: FlagGroup bool fn0F2B_130A(Register Eq_2 ds, Stack Eq_10469 wArg04, Stack Eq_2 wArg06, Stack uint16 wArg08, Register out Eq_2 alOut, Register out ptr16 cxOut, Register out ptr16 bxOut)
// Called from:
//      fn2331_0167
//      fn2425_01E8
bool fn0F2B_130A(Eq_2 ds, Eq_10469 wArg04, Eq_2 wArg06, uint16 wArg08, union Eq_2 & alOut, ptr16 & cxOut, ptr16 & bxOut)
{
	fn0800_03F4(0x43, SEQ(ds, 0x0E7E), SEQ(ss, fp - 0x4A));
	Eq_10469 wLoc04_119 = wArg04;
	do
	{
		word16 dx_150;
		ptr16 cx_70 = fn0800_350E(SEQ(ss, fp - 0x46), SEQ(seg28BA->tA900, seg28BA->tA8FE + (uint16) ((uint32) wArg08 % 0x0A) *s 0x3F + 0x04), 0x3F, out dx_150);
		uint16 ax_46 = (uint16) ((uint32) wArg08 /u 0x0A);
		Eq_2 v18_82 = seg28BA->tAA80;
		wArg08 = ax_46;
		ptr16 bx_97;
		byte al_151;
		bool D_101 = fn216E_01DC(wLoc04_119, wArg06, fp - 0x4A, ss, v18_82, SLICE(v18_82, word16, 16), out al_151, out bx_97);
		wLoc04_119 -= 0x08;
	} while (ax_46 != 0x00);
	alOut.u0 = <invalid>;
	cxOut = cx_70;
	bxOut = bx_97;
	return D_101;
}

// 0F2B:153F: Register mp16 fn0F2B_153F(Register Eq_2 ds)
// Called from:
//      main
mp16 fn0F2B_153F(Eq_2 ds)
{
	fn0800_03F4(0x0D, SEQ(ds, 3777), SEQ(ss, fp - 0x1C));
	mp16 ax_10 = fp - 0x1C;
	struct Eq_12496 Eq_2::* sp_28 = fp - 0x1C;
	ci16 wLoc04_338;
	for (wLoc04_338 = 0x00; wLoc04_338 < 0x06; ++wLoc04_338)
	{
		struct Eq_12503 Eq_2::* sp_51 = sp_28 - 2;
		(ss->*sp_51).t0000.u0 = 0x00;
		(ss->*sp_51).tFFFFFFFE = ss;
		(ss->*sp_51).tFFFFFFFC = fp - 0x1C;
		mp16 ax_59 = fn0800_29B9(ds, (ss->*sp_51).t0000);
		sp_28 = (struct Eq_12496 Eq_2::*) ((char *) &sp_51->t0000 + 2);
		ax_10 = ax_59;
		if (ax_59 != 0x00)
		{
			(ss->*sp_51).tFFFFFFFE.u0 = 0x01808100;
			(ss->*sp_51).tFFFFFFFC = ss;
			(ss->*sp_51).tFFFFFFFA = fp - 0x1C;
			word16 cx_384;
			word16 dx_385;
			word16 bx_386;
			Eq_2 ax_81 = fn0800_3615(ds, (ss->*sp_51).tFFFFFFFA, (ss->*sp_51).tFFFFFFFE, (ss->*sp_51).t0000, out cx_384, out dx_385, out bx_386);
			(ss->*sp_51).t0000.u0 = 0x02;
			(ss->*sp_51).tFFFFFFFE = ss;
			(ss->*sp_51).tFFFFFFFC = fp - 0x0A;
			(ss->*sp_51).tFFFFFFFA = ax_81;
			fn0800_4655(ds, (ss->*sp_51).tFFFFFFFA, (ss->*sp_51).tFFFFFFFC, (ss->*sp_51).t0000);
			(ss->*sp_51).tFFFFFFFC.u0 = 0x02;
			(ss->*sp_51).tFFFFFFFA = ss;
			(ss->*sp_51).tFFFFFFF8 = fp - 0x0A;
			(ss->*sp_51).tFFFFFFF6 = ax_81;
			fn0800_4655(ds, (ss->*sp_51).tFFFFFFF6, (ss->*sp_51).tFFFFFFF8, (ss->*sp_51).tFFFFFFFC);
			(ss->*sp_51).tFFFFFFF8.u0 = 0x04;
			(ss->*sp_51).tFFFFFFF6 = ss;
			(ss->*sp_51).tFFFFFFF4 = fp - 0x0E;
			(ss->*sp_51).tFFFFFFF2 = ax_81;
			fn0800_4655(ds, (ss->*sp_51).tFFFFFFF2, (ss->*sp_51).tFFFFFFF4, (ss->*sp_51).tFFFFFFF8);
			(ss->*sp_51).tFFFFFFF4.u0 = 0x04;
			(ss->*sp_51).tFFFFFFF2 = ss;
			(ss->*sp_51).tFFFFFFF0 = fp - 0x0E;
			(ss->*sp_51).tFFFFFFEE = ax_81;
			fn0800_4655(ds, (ss->*sp_51).tFFFFFFEE, (ss->*sp_51).tFFFFFFF0, (ss->*sp_51).tFFFFFFF4);
			(ss->*sp_51).tFFFFFFF0.u0 = 0x04;
			(ss->*sp_51).tFFFFFFEE = ss;
			(ss->*sp_51).tFFFFFFEC = fp - 0x0E;
			(ss->*sp_51).tFFFFFFEA = ax_81;
			fn0800_4655(ds, (ss->*sp_51).tFFFFFFEA, (ss->*sp_51).tFFFFFFEC, (ss->*sp_51).tFFFFFFF0);
			(ss->*sp_51).tFFFFFFEC.u0 = 0x04;
			(ss->*sp_51).tFFFFFFEA = ss;
			(ss->*sp_51).tFFFFFFE8 = fp - 0x0E;
			(ss->*sp_51).tFFFFFFE6 = ax_81;
			fn0800_4655(ds, (ss->*sp_51).tFFFFFFE6, (ss->*sp_51).tFFFFFFE8, (ss->*sp_51).tFFFFFFEC);
			(ss->*sp_51).tFFFFFFE8.u0 = 0x04;
			(ss->*sp_51).tFFFFFFE6 = ss;
			(ss->*sp_51).tFFFFFFE4 = fp - 0x0E;
			(ss->*sp_51).tFFFFFFE2 = ax_81;
			fn0800_4655(ds, (ss->*sp_51).tFFFFFFE2, (ss->*sp_51).tFFFFFFE4, (ss->*sp_51).tFFFFFFE8);
			(ss->*sp_51).tFFFFFFE4.u0 = 0x04;
			(ss->*sp_51).tFFFFFFE2 = ss;
			(ss->*sp_51).tFFFFFFE0 = fp - 0x0E;
			(ss->*sp_51).tFFFFFFDE = ax_81;
			byte al_310 = (byte) (uint16) fn0800_4655(ds, (ss->*sp_51).tFFFFFFDE, (ss->*sp_51).tFFFFFFE0, (ss->*sp_51).tFFFFFFE4);
			struct Eq_12770 Eq_2::* sp_271 = sp_51 - 0x1E;
			ci16 wLoc06_352;
			for (wLoc06_352 = 0x00; wLoc06_352 < 0x08; ++wLoc06_352)
			{
				struct Eq_12779 Eq_2::* sp_281 = sp_271 - 2;
				(ss->*sp_281).t0000.u0 = 0x01;
				(ss->*sp_281).tFFFFFFFE = ss;
				(ss->*sp_281).tFFFFFFFC = fp - 0x0A;
				(ss->*sp_281).tFFFFFFFA = ax_81;
				al_310 = (byte) (uint16) fn0800_4655(ds, (ss->*sp_281).tFFFFFFFA, (ss->*sp_281).tFFFFFFFC, (ss->*sp_281).t0000);
				sp_271 = sp_281 - 0x02;
			}
			struct Eq_12814 Eq_2::* sp_308 = sp_271 - 2;
			(ss->*sp_308).t0000 = ax_81;
			word16 dx_387;
			word16 bx_388;
			ax_10 = fn0800_2A93(al_310, ds, (ss->*sp_308).t0000, out dx_387, out bx_388);
			sp_28 = (struct Eq_12496 Eq_2::*) ((char *) &sp_308->t0000 + 2);
		}
	}
	return ax_10;
}

