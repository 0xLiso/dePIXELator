// ZORTON_2331.c
// Generated by decompiling ZORTON.EXE
// using Reko decompiler version 0.9.2.3.

#include "ZORTON_2331.h"

// 2331:0000: Register word16 fn2331_0000(Register Eq_2 ds, Register out Eq_2 dsOut)
// Called from:
//      fn2353_075C
word16 fn2331_0000(Eq_2 ds, union Eq_2 & dsOut)
{
	Eq_2 ds_109;
	Eq_2 es_125;
	word16 sp_134;
	struct Eq_26947 Eq_26964::* bp_130;
	Eq_13936 dwLoc06_176 = *((word32) ds + 34094);
	if (*((word32) ds + 34094) != 0x00)
	{
		while (*((word32) dwLoc06_176 + 5) != 0x00)
			dwLoc06_176 = *((word32) dwLoc06_176 + 5);
		word16 dx_84;
		struct Eq_27006 * es_232;
		Eq_13936 ax_79 = fn0800_07B4(ds, 0x09, out dx_84, out bp_130, out es_232, out ds_109);
		Eq_13936 es_bx_94 = (ss->*bp_130).tFFFFFFFC;
		((word32) es_bx_94 + 7)->u0 = dx_84;
		*((word32) es_bx_94 + 5) = ax_79;
		Eq_2 sp_87 = <invalid>;
		Eq_2 es_95 = SLICE(es_bx_94, selector, 16);
		if ((ss->*bp_130).tFFFFFFFC == 0x00)
		{
			ss->*sp_87 = ds_109;
			ss->*((word32) sp_87 - 2) = 0x8540;
			struct Eq_27053 * es_234;
			word16 dx_233;
			fn263F_04B6(es_95, ds_109, out dx_233, out es_234, out ds_109);
		}
		Eq_13936 es_bx_124 = (ss->*bp_130).tFFFFFFFC;
		(ss->*bp_130).tFFFFFFFC = *((word32) es_bx_124 + 5);
		sp_134 = (word16) ((word32) sp_87 + 2);
		es_125 = SLICE(es_bx_124, selector, 16);
	}
	else
	{
		word16 dx_22;
		Eq_13936 ax_17 = fn0800_07B4(ds, 0x09, out dx_22, out bp_130, out es_125, out ds_109);
		(ss->*bp_130).wFFFFFFFE = dx_22;
		(ss->*bp_130).tFFFFFFFC = ax_17;
		Eq_2 sp_25 = <invalid>;
		if ((ss->*bp_130).tFFFFFFFC == 0x00)
		{
			ss->*sp_25 = ds_109;
			ss->*((word32) sp_25 - 2) = 0x8540;
			word16 dx_231;
			fn263F_04B6(es_125, ds_109, out dx_231, out es_125, out ds_109);
		}
		*((word32) ds_109 + 34094) = (ss->*bp_130).tFFFFFFFC;
		sp_134 = (word16) ((word32) sp_25 + 2);
	}
	if ((ss->*bp_130).tFFFFFFFC == 0x00)
	{
		struct Eq_27084 Eq_26964::* sp_137 = sp_134 - 2;
		(ss->*sp_137).t0000 = ds_109;
		(ss->*sp_137).wFFFFFFFE = 0x8540;
		struct Eq_27094 * es_236;
		word16 dx_235;
		fn263F_04B6(es_125, ds_109, out dx_235, out es_236, out ds_109);
	}
	Eq_13936 es_bx_164 = (ss->*bp_130).tFFFFFFFC;
	*((word32) es_bx_164 + 1) = (ss->*bp_130).dw0008;
	*es_bx_164 = (ss->*bp_130).t0006;
	((word32) es_bx_164 + 5)->u0 = 0x00;
	word16 bp_173 = (ss->*bp_130).w0000;
	dsOut = ds_109;
	return bp_173;
}

// 2331:00BA: void fn2331_00BA(Register Eq_2 es, Register Eq_2 ds, Stack Eq_2 bArg04, Stack Eq_11021 wArg06, Stack word16 wArg08)
// Called from:
//      fn0CE0_08FC
//      fn1F0F_000F
//      fn2353_075C
void fn2331_00BA(Eq_2 es, Eq_2 ds, Eq_2 bArg04, Eq_11021 wArg06, word16 wArg08)
{
	__cli();
	SEQ(ds, 0xA454)[Mem15[ds:42270:word16] * 0x05] = bArg04;
	int16 bx_21 = *((word32) ds + 42270);
	SEQ(ds, 0xA457)[bx_21 * 0x05] = wArg08;
	SEQ(ds, 0xA455)[bx_21 * 0x05] = wArg06;
	++*((word32) ds + 42270);
	if (*((word32) ds + 42270) >= 0x28)
		*((word32) ds + 42270) = 0x00;
	if (*((word32) ds + 42270) == *((word32) ds + 42268))
	{
		struct Eq_27149 * es_130;
		struct Eq_27150 * ds_131;
		word16 dx_129;
		fn263F_04B6(es, ds, out dx_129, out es_130, out ds_131);
	}
	if ((SCZDOP & 0x0200) != 0x00)
		__sti();
}

// 2331:0118: Register word16 fn2331_0118(Register Eq_2 ds, Register out ptr16 cxOut, Register out Eq_2 dxOut, Register out ptr16 bxOut, Register out Eq_2 dsOut)
// Called from:
//      fn1D10_02AE
//      fn1F0F_000F
word16 fn2331_0118(Eq_2 ds, ptr16 & cxOut, union Eq_2 & dxOut, ptr16 & bxOut, union Eq_2 & dsOut)
{
	word32 eax_67;
	Eq_2 dx_41;
	if (*((word32) ds + 34094) == 0x00)
	{
		((word32) ds + 0x00008536)->u0 = 0x00;
		dx_41.u0 = 0x00;
		eax_67 = SEQ(eax_16_16, 0x00);
	}
	else
	{
		Eq_13936 es_bx_13 = *((word32) ds + 34094);
		*((word32) ds + 0x00008536) = *es_bx_13;
		*((word32) ds + 34103) = (word32) *((word32) es_bx_13 + 1);
		Eq_13936 eax_20 = *((word32) es_bx_13 + 5);
		cx = fn0800_0312(ds, *((word32) ds + 0x00008530), out bx, out ds);
		*((word32) ds + 34094) = eax_20;
		dx_41 = ds;
		eax_67 = SEQ(SLICE(eax_20, word16, 16), 0x8536);
	}
	cxOut = cx;
	dxOut = dx_41;
	bxOut = bx;
	dsOut = ds;
	return (word16) eax_67;
}

// 2331:0167: Register word16 fn2331_0167(Register Eq_2 ds, Register out Eq_2 dxOut, Register out Eq_9764 ebxOut)
// Called from:
//      fn0CE0_08FC
//      fn1ED7_000E
//      fn1F0F_000F
//      fn1F0F_057A
//      fn1F0F_0BF7
//      fn268D_0282
word16 fn2331_0167(Eq_2 ds, union Eq_2 & dxOut, union Eq_9764 & ebxOut)
{
	Eq_947 al_74 = ~0x45;
	if (seg28BA->t30A0 != 0x00)
	{
		Eq_2 v9_16 = seg28BA->tAA80;
		fn216E_03D8(0x00, 0x00, 0x3C, 0x0A, 0x00, v9_16, SLICE(v9_16, word16, 16));
		word16 bx_253;
		word16 dx_252;
		fn0800_2056(ds, out dx_252, out bx_253);
		Eq_2 dx_ax_249 = <invalid>;
		uint32 eax_54 = (uint32) ((uint64) dx_ax_249 /u 1000);
		Eq_2 ax_61 = <invalid>;
		eax_16_16 = SLICE(eax_54, word16, 16);
		al_74 = (byte) ax_61;
		word16 bx_62;
		word16 cx_255;
		byte al_254;
		SCZDOP = fn0F2B_130A(ds, 0x32, 0x00, (word16) eax_54, out al_254, out cx_255, out bx_62) | SCZDOP;
		ebx.u0 = (uint32) bx_62;
	}
	word16 ebx_16_16_212 = SLICE(ebx, word16, 16);
	Eq_27215 DP_104 = SLICE(SCZDOP, bool, 5);
	DP_104.u0 = SLICE(SCZDOP, bool, 5);
	if (fn0800_2390(al_74, ds) != 0x00)
		fn0800_20A6(ds);
	word32 eax_195;
	int16 ax_94 = *((word32) ds + 42268);
	byte SCZDOP_107 = cond(ax_94 - *((word32) ds + 42270)) | SLICE(DP_104, bool, 5);
	if (ax_94 == *((word32) ds + 42270))
	{
		((word32) ds + 0x0000853B)->u0 = 0x00;
		eax_195 = SEQ(eax_16_16, 0x00);
	}
	else
	{
		__cli();
		Mem119[ds:0x853B:byte] = SEQ(ds, 0xA454)[Mem115[ds:42268:word16] * 0x05];
		int16 bx_120 = *((word32) ds + 42268);
		word16 dx_123 = SEQ(ds, 0xA455)[bx_120 * 0x05];
		Mem124[ds:34110:word16] = SEQ(ds, 0xA457)[bx_120 * 0x05];
		*((word32) ds + 0x0000853C) = dx_123;
		++*((word32) ds + 42268);
		ebx = SEQ(ebx_16_16_212, bx_120 *s 0x05);
		if (*((word32) ds + 42268) >= 0x28)
			*((word32) ds + 42268) = 0x00;
		if ((SCZDOP_107 & 0x0200) != 0x00)
			__sti();
		eax_195 = SEQ(eax_16_16, 0x853B);
	}
	dxOut.u0 = <invalid>;
	ebxOut = ebx;
	return (word16) eax_195;
}

