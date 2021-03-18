;;; Segment 2425 (2425:0000)
2425:0000 9A BA 00 31 23 83 C4 06 CB CB                   ...1#.....     

;; fn2425_000A: 2425:000A
;;   Called from:
;;     268D:01A1 (in main)
fn2425_000A proc
	enter	14h,0h
	mov	word ptr [bp-14h],0Ch
	mov	word ptr [bp-10h],0Bh
	mov	word ptr [bp-4h],2425h
	mov	word ptr [bp-0Eh],7Ah
	push	ss
	lea	ax,[bp-14h]
	push	ax
	push	33h
	call	far 0800h:22C3h
	add	sp,6h
	mov	word ptr [bp-14h],7h
	mov	word ptr [bp-10h],0h
	mov	word ptr [bp-0Eh],258h
	push	ss
	lea	ax,[bp-14h]
	push	ax
	push	33h
	call	far 0800h:22C3h
	add	sp,6h
	mov	word ptr [bp-14h],8h
	mov	word ptr [bp-10h],0h
	mov	word ptr [bp-0Eh],0BEh
	push	ss
	lea	ax,[bp-14h]
	push	ax
	push	33h
	call	far 0800h:22C3h
	add	sp,6h
	mov	ax,2863h
	mov	es,ax
	mov	byte ptr es:[0004h],0h
	leave
	retf
2425:007A                               50 51 52 53 54 55           PQRSTU
2425:0080 56 57 1E 06 BD BA 28 8E DD 8B EC 66 A3 2A A5 66 VW....(....f.*.f
2425:0090 89 1E 2E A5 66 89 0E 32 A5 66 89 16 36 A5 66 89 ....f..2.f..6.f.
2425:00A0 36 3A A5 66 89 3E 3E A5 66 89 2E 42 A5 66 89 26 6:.f.>>.f..B.f.&
2425:00B0 46 A5 8C 26 4A A5 8C 2E 4C A5 8C C0 A3 4E A5 8C F..&J...L....N..
2425:00C0 D8 8C 1E 50 A5 66 A1 2A A5 09 06 22 A5 09 1E 28 ...P.f.*..."...(
2425:00D0 A5 89 16 26 A5 D1 E9 89 0E 24 A5 A0 4A 88 98 0B ...&.....$..J...
2425:00E0 C0 74 03 E9 B7 00 C6 06 4A 88 01 B8 BA 28 8E C0 .t......J....(..
2425:00F0 66 26 83 3E 2C 30 00 75 03 E9 9A 00 B8 63 28 8E f&.>,0.u.....c(.
2425:0100 C0 26 80 3E 04 00 00 75 03 E9 8A 00 F7 06 22 A5 .&.>...u......".
2425:0110 01 00 74 0B 66 FF 36 24 A5 E8 E9 02 83 C4 04 F7 ..t.f.6$........
2425:0120 06 22 A5 0A 00 74 63 B8 BA 28 8E C0 66 26 83 3E ."...tc..(..f&.>
2425:0130 30 30 00 74 55 F7 06 22 A5 02 00 74 22 8E C0 26 00.tU.."...t"..&
2425:0140 C4 1E 30 30 66 26 83 7F 10 00 74 13 C7 06 22 A5 ..00f&....t...".
2425:0150 00 00 8E C0 26 8E 06 32 30 26 FF 5F 10 EB 2B F7 ....&..20&._..+.
2425:0160 06 22 A5 08 00 74 23 B8 BA 28 8E C0 26 C4 1E 30 ."...t#..(..&..0
2425:0170 30 66 26 83 7F 14 00 74 11 C7 06 22 A5 00 00 8E 0f&....t..."....
2425:0180 C0 26 8E 06 32 30 26 FF 5F 14 C7 06 22 A5 00 00 .&..20&._..."...
2425:0190 C7 06 28 A5 00 00 C6 06 4A 88 00 EB 05 C6 06 4A ..(.....J......J
2425:01A0 88 02 66 8B 1E 2E A5 66 8B 0E 32 A5 66 8B 16 36 ..f....f..2.f..6
2425:01B0 A5 66 8B 36 3A A5 66 8B 3E 3E A5 66 8B 2E 42 A5 .f.6:.f.>>.f..B.
2425:01C0 66 8B 26 46 A5 8E 26 4A A5 8E 2E 4C A5 A1 4E A5 f.&F..&J...L..N.
2425:01D0 8E C0 A1 50 A5 8E D8 66 A1 2A A5 8B E5 07 1F 5F ...P...f.*....._
2425:01E0 5E 5D 5B 5B 5A 59 58 CB                         ^][[ZYX.       

;; fn2425_01E8: 2425:01E8
;;   Called from:
;;     0CE0:0176 (in fn0CE0_0170)
;;     0CE0:0244 (in fn0CE0_023E)
;;     0CE0:0312 (in fn0CE0_030C)
;;     0CE0:03DA (in fn0CE0_03D4)
;;     0CE0:0925 (in fn0CE0_08FC)
;;     0CE0:0C19 (in fn0CE0_08FC)
;;     0CE0:0E2D (in fn0CE0_08FC)
;;     0CE0:112D (in fn0CE0_08FC)
;;     0CE0:1231 (in fn0CE0_08FC)
;;     1D10:10F4 (in fn1D10_0FB3)
;;     1D10:117D (in fn1D10_1153)
;;     1ED7:0013 (in fn1ED7_000E)
;;     1F0F:026B (in fn1F0F_000F)
;;     1F0F:0C3C (in fn1F0F_0BF7)
;;     1F0F:101C (in fn1F0F_0BF7)
;;     1F0F:1066 (in fn1F0F_0BF7)
;;     226D:010F (in fn226D_00F9)
;;     226D:0595 (in fn226D_057F)
;;     226D:0BDD (in fn226D_0BC6)
;;     23F8:00B2 (in fn23F8_00A0)
;;     2504:0A15 (in fn2504_094D)
fn2425_01E8 proc
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[30A0h],0h
	jz	0234h

l2425_01F5:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	0Ah
	push	3C0000h
	push	0h
	call	far 216Eh:03D8h
	add	sp,0Eh
	call	far 0800h:2056h
	push	dx
	push	ax
	pop	eax
	mov	ebx,3E8h
	xor	edx,edx
	div	ebx
	push	ax
	push	32h
	call	far 0F2Bh:130Ah
	add	sp,6h

l2425_0234:
	mov	ax,2863h
	mov	es,ax
	mov	byte ptr es:[0004h],0h
	mov	ax,2864h
	mov	es,ax
	cmp	word ptr es:[0088h],0h
	jz	0279h

l2425_024C:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	2864h
	push	88h
	mov	ax,2863h
	mov	es,ax
	push	word ptr es:[0002h]
	mov	ax,2863h
	mov	es,ax
	push	word ptr es:[0000h]
	call	far 216Eh:0000h
	add	sp,0Ch

l2425_0279:
	mov	ax,2864h
	mov	es,ax
	mov	word ptr es:[0088h],0h
	retf

;; fn2425_0286: 2425:0286
;;   Called from:
;;     0CE0:0235 (in fn0CE0_0170)
;;     0CE0:0303 (in fn0CE0_023E)
;;     0CE0:03CB (in fn0CE0_030C)
;;     0CE0:0493 (in fn0CE0_03D4)
;;     0CE0:0C81 (in fn0CE0_08FC)
;;     0CE0:1181 (in fn0CE0_08FC)
;;     1D10:12A9 (in fn1D10_1153)
;;     1F0F:0C51 (in fn1F0F_0BF7)
;;     1F0F:103B (in fn1F0F_0BF7)
;;     1F0F:10EB (in fn1F0F_0BF7)
;;     1F0F:11FF (in fn1F0F_0BF7)
;;     226D:056B (in fn226D_00F9)
;;     226D:064E (in fn226D_057F)
;;     226D:0C27 (in fn226D_0BC6)
;;     23F8:01E3 (in fn23F8_00A0)
;;     2504:0C02 (in fn2504_094D)
;;     268D:01B1 (in main)
fn2425_0286 proc
	enter	10h,0h
	mov	word ptr [bp-10h],3h
	push	ss
	lea	ax,[bp-10h]
	push	ax
	push	ss
	push	ax
	push	33h
	call	far 0800h:21F9h
	add	sp,0Ah
	mov	ax,[bp-0Ch]
	shr	ax,1h
	mov	[0A524h],ax
	mov	ax,[bp-0Ah]
	mov	[0A526h],ax
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[302Ch],0h
	jnz	02BFh

l2425_02BC:
	jmp	0348h

l2425_02BF:
	cli
	push	dword ptr [0A524h]
	call	0405h
	add	sp,4h
	sti
	test	word ptr [0A522h],0Ah
	jnz	02D7h

l2425_02D4:
	jmp	0353h
2425:02D6                   90                                  .        

l2425_02D7:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[3030h],0h
	jz	0353h

l2425_02E5:
	test	word ptr [0A522h],2h
	jz	030Fh

l2425_02ED:
	mov	es,ax
	les	bx,es:[3030h]
	cmp	dword ptr es:[bx+10h],0h
	jz	030Fh

l2425_02FC:
	mov	word ptr [0A522h],0h
	mov	es,ax
	mov	es,es:[3032h]
	call	dword ptr es:[bx+10h]
	jmp	033Ah

l2425_030F:
	test	word ptr [0A522h],8h
	jz	033Ah

l2425_0317:
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[3030h]
	cmp	dword ptr es:[bx+14h],0h
	jz	033Ah

l2425_0329:
	mov	word ptr [0A522h],0h
	mov	es,ax
	mov	es,es:[3032h]
	call	dword ptr es:[bx+14h]

l2425_033A:
	mov	word ptr [0A522h],0h
	mov	word ptr [0A528h],0h
	jmp	0353h

l2425_0348:
	mov	ax,2863h
	mov	es,ax
	mov	byte ptr es:[0004h],1h

l2425_0353:
	mov	ax,2863h
	mov	es,ax
	mov	byte ptr es:[0004h],1h
	leave
	retf

;; fn2425_0360: 2425:0360
;;   Called from:
;;     2425:04C6 (in fn2425_0405)
;;     2476:0002 (in fn2425_0405)
fn2425_0360 proc
	push	bp
	mov	bp,sp
	mov	ax,2864h
	mov	es,ax
	cmp	word ptr es:[0088h],0h
	jz	039Dh

l2425_0370:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	2864h
	push	88h
	mov	ax,2863h
	mov	es,ax
	push	word ptr es:[0002h]
	mov	ax,2863h
	mov	es,ax
	push	word ptr es:[0000h]
	call	far 216Eh:009Ch
	add	sp,0Ch

l2425_039D:
	mov	ax,2864h
	mov	es,ax
	mov	word ptr es:[0088h],0h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	2864h
	push	88h
	push	dword ptr [bp+4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	far 216Eh:0138h
	add	sp,10h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	dword ptr [bp+4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	ax,2863h
	mov	dx,[bp+8h]
	mov	es,ax
	mov	es:[0000h],dx
	mov	ax,2863h
	mov	dx,[bp+0Ah]
	mov	es,ax
	mov	es:[0002h],dx
	pop	bp
	ret

;; fn2425_0405: 2425:0405
;;   Called from:
;;     2425:02C5 (in fn2425_0286)
fn2425_0405 proc
	push	bp
	mov	bp,sp
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[302Ch],0h
	jnz	0419h

l2425_0416:
	jmp	0518h

l2425_0419:
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[302Ch]
	jmp	04DDh

l2425_0426:
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[3030h]
	mov	ax,es:[bx]
	cmp	ax,[bp+4h]
	jle	043Bh

l2425_0438:
	jmp	04CEh

l2425_043B:
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[3032h]
	mov	ax,es:[bx+4h]
	cmp	ax,[bp+4h]
	jge	0451h

l2425_044E:
	jmp	04CEh
2425:0450 90                                              .              

l2425_0451:
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[3032h]
	mov	ax,es:[bx+2h]
	cmp	ax,[bp+6h]
	jg	04CEh

l2425_0464:
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[3032h]
	mov	ax,es:[bx+6h]
	cmp	ax,[bp+6h]
	jl	04CEh

l2425_0477:
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[3032h]
	cmp	dword ptr es:[bx+8h],0h
	jz	04F8h

l2425_0489:
	mov	es,ax
	cmp	dword ptr es:[3030h],0h
	jz	04AEh

l2425_0494:
	mov	es,ax
	mov	es,es:[3032h]
	cmp	dword ptr es:[bx+0Ch],0h
	jz	04AEh

l2425_04A3:
	mov	es,ax
	mov	es,es:[3032h]
	call	dword ptr es:[bx+0Ch]

l2425_04AE:
	push	word ptr [bp+6h]
	push	word ptr [bp+4h]
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[3030h]
	les	bx,es:[bx+8h]
	push	dword ptr es:[bx]
	call	0360h
	add	sp,8h
	jmp	04F8h

l2425_04CE:
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[3030h]
	mov	eax,es:[bx+1Ch]

l2425_04DD:
	mov	dx,28BAh
	mov	es,dx
	mov	es:[3030h],eax
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[3030h],0h
	jz	04F8h

l2425_04F5:
	jmp	0426h

l2425_04F8:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[3030h],0h
	jnz	0518h

l2425_0506:
	push	word ptr [bp+6h]
	push	word ptr [bp+4h]
	push	2864h
	push	0h
