// ZORTON_2353.c
// Generated by decompiling ZORTON.EXE
// using Reko decompiler version 0.9.2.3.

#include "ZORTON_2353.h"

// 2353:0004: Register word16 fn2353_0004(Register Eq_2 ds, Stack Eq_2 bArg04, Stack Eq_2 bArg06, Stack Eq_10477 bArg08, Stack Eq_10473 bArg0A, Stack Eq_10469 bArg0C, Stack Eq_2 dwArg0E, Stack Eq_2 bArg12, Register out Eq_10500 bpOut, Register out Eq_2 esOut)
// Called from:
//      fn0CE0_08FC
//      fn1ED7_000E
//      fn1F0F_0BF7
word16 fn2353_0004(Eq_2 ds, Eq_2 bArg04, Eq_2 bArg06, Eq_10477 bArg08, Eq_10473 bArg0A, Eq_10469 bArg0C, Eq_2 dwArg0E, Eq_2 bArg12, union Eq_10500 & bpOut, union Eq_2 & esOut)
{
	__cli();
	seg28BA->t302C = 0x00;
	*((word32) ds + 34500) = 0x00;
	*((word32) ds + 0x00008724) = 0x00;
	*((word32) ds + 0x00008744) = 0x00;
	*((word32) ds + 0x00008784) = 0x00;
	((word32) ds + 0x000087A8)->u1 = 0x00;
	*((word32) ds + 34660) = 0x00;
	struct Eq_27360 Eq_27508::* bp_233 = fp - 2;
	Eq_2 es_11 = 0x28BA;
	if (bArg04 != 0x00)
	{
		seg28BA->t302E = ds;
		seg28BA->t302C = 0x86E8;
		ptrLoc06 = SEQ(ds, 0x86A8);
		((word32) ptrLoc06 + 28)->u0 = 0x00;
		es_11 = ds;
		bx = 0x86A8;
	}
	if (bArg06 != 0x00)
	{
		if (seg28BA->t302C == 0x00)
		{
			seg28BA->t302E = ds;
			seg28BA->t302C = 0x8688;
		}
		else
		{
			*((word32) ptrLoc06 + 30) = ds;
			((word32) ptrLoc06 + 28)->u0 = 0x8688;
		}
		ptrLoc06 = SEQ(ds, 0x8588);
		((word32) ptrLoc06 + 28)->u0 = 0x00;
		es_11 = ds;
		bx = 0x8588;
	}
	if (bArg08 != 0x00)
	{
		if (seg28BA->t302C == 0x00)
		{
			seg28BA->t302E = ds;
			seg28BA->t302C = 0x8748;
			ptrLoc06 = SEQ(ds, 0x8748);
		}
		else
		{
			*((word32) ptrLoc06 + 30) = ds;
			((word32) ptrLoc06 + 28)->u0 = 0x8748;
			ptrLoc06 = SEQ(ds, 0x8748);
		}
		((word32) ptrLoc06 + 28)->u0 = 0x00;
		es_11 = SLICE(ptrLoc06, selector, 16);
		bx = (word16) ptrLoc06;
	}
	if (bArg0A != 0x00)
	{
		if (seg28BA->t302C == 0x00)
		{
			seg28BA->t302E = ds;
			seg28BA->t302C = 0x8728;
			ptrLoc06 = SEQ(ds, 0x8728);
		}
		else
		{
			*((word32) ptrLoc06 + 30) = ds;
			((word32) ptrLoc06 + 28)->u0 = 0x8728;
			ptrLoc06 = SEQ(ds, 0x8728);
		}
		((word32) ptrLoc06 + 28)->u0 = 0x00;
		es_11 = SLICE(ptrLoc06, selector, 16);
		bx = (word16) ptrLoc06;
	}
	if (bArg0C != 0x00)
	{
		if (seg28BA->t302C == 0x00)
		{
			seg28BA->t302E = ds;
			seg28BA->t302C = 0x8708;
			ptrLoc06 = SEQ(ds, 0x8708);
		}
		else
		{
			*((word32) ptrLoc06 + 30) = ds;
			((word32) ptrLoc06 + 28)->u0 = 0x8708;
			ptrLoc06 = SEQ(ds, 0x8708);
		}
		((word32) ptrLoc06 + 28)->u0 = 0x00;
		es_11 = SLICE(ptrLoc06, selector, 16);
		bx = (word16) ptrLoc06;
	}
	if (dwArg0E != 0x00)
	{
		Eq_2 eax_169;
		if (seg28BA->t302C == 0x00)
		{
			seg28BA->t302C = dwArg0E;
			eax_169 = dwArg0E;
		}
		else
		{
			*((word32) ptrLoc06 + 28) = dwArg0E;
			eax_169 = dwArg0E;
		}
		while (true)
		{
			ptrLoc06 = eax_169;
			es_11 = SLICE(eax_169, selector, 16);
			bx = (word16) eax_169;
			if (*((word32) eax_169 + 28) == 0x00)
				break;
			eax_169 = *((word32) eax_169 + 28);
		}
	}
	if (bArg12 != 0x00)
	{
		struct Eq_27514 * ptrLoc06_356;
		if (seg28BA->t302C == 0x00)
		{
			seg28BA->t302E = ds;
			seg28BA->t302C = 34664;
			ptrLoc06_356 = SEQ(ds, 34664);
		}
		else
		{
			*((word32) ptrLoc06 + 30) = ds;
			((word32) ptrLoc06 + 28)->u0 = 34664;
			ptrLoc06_356 = SEQ(ds, 34664);
		}
		*((word32) ds + 0x000087AA) = ds;
		((word32) ds + 0x000087A8)->u0 = 34664;
		ptrLoc06_356->dw001C = 0x00;
		seg28BA->t3030 = (<type-error>) ptrLoc06_356;
		bx = fn2504_0283(out bp_233, out es_11);
	}
	if ((ss->*bp_233).ptr0016 != null)
	{
		struct Eq_27511 * eax_251;
		if (seg28BA->t302C == 0x00)
		{
			struct Eq_27511 * edx_255 = (ss->*bp_233).ptr0016;
			seg28BA->t302C = (<type-error>) edx_255;
			eax_251 = edx_255;
		}
		else
		{
			eax_251 = (ss->*bp_233).ptr0016;
			(ss->*bp_233).ptrFFFFFFFC->ptr001C = eax_251;
		}
		(ss->*bp_233).ptrFFFFFFFC = eax_251;
		struct Eq_27511 * es_bx_263 = (ss->*bp_233).ptrFFFFFFFC;
		es_bx_263->ptr001C = null;
		es_11 = SLICE(es_bx_263, selector, 16);
		bx = (word16) es_bx_263;
	}
	__sti();
	bpOut = (ss->*bp_233).t0000;
	esOut = es_11;
	return bx;
}

// 2353:075C: Register word16 fn2353_075C(Register Eq_2 ds, Register out Eq_2 dsOut)
// Called from:
//      fn1D10_02AE
word16 fn2353_075C(Eq_2 ds, union Eq_2 & dsOut)
{
	word16 Eq_27654::* bp_220 = fp - 2;
	if (((uint16) seg2862->t0000 & 0x01) != 0x00)
	{
		struct Eq_27610 * es_bx_194 = seg28BA->t304F;
		seg28BA->t3051->*(word16) es_bx_194 = es_bx_194->b0001;
		if (seg2862->t0000 != 0x02 && seg2862->t0000 != 0x01)
			goto l2353_0934;
	}
	else
	{
		if (seg28BA->t304F != 0x00)
		{
			if ((*((word32) ds + 0x00008586) & 0x02) != 0x00 && seg28BA->t309D != 0x00)
			{
				struct Eq_27668 * es_bx_35 = seg28BA->t304F;
				struct Eq_27671 Eq_27673::* bx_37 = (word16) es_bx_35;
				struct Eq_27673 * es_52 = seg28BA->t3051;
				(es_52->*bx_37).w0002 = (word16) ((byte) (es_bx_35->t0001 - (seg28BA->t3051->*bx_37).t0000) + (es_52->*bx_37).w0002);
			}
			if ((*((word32) ds + 0x00008586) & 0x08) != 0x00 && seg28BA->t309C != 0x00)
			{
				struct Eq_27702 * es_bx_67 = seg28BA->t304F;
				struct Eq_27705 Eq_27707::* bx_69 = (word16) es_bx_67;
				struct Eq_27707 * es_86 = seg28BA->t3051;
				(es_86->*bx_69).w0002 = (word16) ((byte) (es_bx_67->t0001 - (seg28BA->t3051->*bx_69).t0000) + (es_86->*bx_69).w0002);
			}
			if ((*((word32) ds + 0x00008586) & 0x04) != 0x00 && seg28BA->t309B != 0x00)
			{
				struct Eq_27752 * es_bx_101 = seg28BA->t304F;
				struct Eq_27755 Eq_27757::* bx_103 = (word16) es_bx_101;
				struct Eq_27757 * es_120 = seg28BA->t3051;
				(es_120->*bx_103).w0002 = (word16) ((byte) (es_bx_101->t0001 - (seg28BA->t3051->*bx_103).t0000) + (es_120->*bx_103).w0002);
			}
			struct Eq_27726 * es_bx_127 = seg28BA->t304F;
			struct Eq_27729 Eq_27736::* bx_129 = (word16) es_bx_127;
			byte al_134 = es_bx_127->b0001 - (seg28BA->t3051->*bx_129).b0000;
			if ((int16) al_134 <= (seg28BA->t3051->*bx_129).w0002)
			{
				(seg28BA->t3051->*bx_129).b0000 = (seg28BA->t3051->*bx_129).b0001;
				struct Eq_27736 * es_180 = seg28BA->t3051;
				(es_180->*bx_129).w0002 -= (int16) al_134;
			}
			else
			{
				struct Eq_27776 * es_bx_147 = seg28BA->t304F;
				struct Eq_27779 Eq_27791::* bx_159 = (word16) es_bx_147;
				(seg28BA->t3051->*bx_159).b0000 = seg28BA->t304F + 0x00 + es_bx_147->b0002;
				(seg28BA->t3051->*bx_159).w0002 = 0x00;
			}
		}
		if (seg2862->t0000 != 0x02 && seg2862->t0000 != 0x01)
		{
l2353_0934:
			fn2331_00BA(0x2862, ds, 0x15, 0x00, 0x00);
l2353_093E:
			word16 bp_261 = ss->*bp_220;
			dsOut = ds;
			return bp_261;
		}
	}
	bp_220 = fn2331_0000(ds, out ds);
	goto l2353_093E;
}

