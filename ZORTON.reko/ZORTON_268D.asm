;;; Segment 268D (268D:0000)
268D:0000 00 08 83 C4 08 6A 01 9A E2 03 8D 26 59 5D CB    .....j.....&Y].

;; fn268D_000F: 268D:000F
;;   Called from:
;;     268D:0164 (in main)
fn268D_000F proc
	enter	40h,0h
	push	ds
	push	9159h
	push	ds
	push	914Eh
	call	far 0800h:302Bh
	add	sp,8h
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	cmp	dword ptr [bp-4h],0h
	jnz	0044h

l268D_0030:
	push	ds
	push	915Bh
	call	far 263Fh:03F3h
	add	sp,4h
	push	1h
	nop
	push	cs
	call	03E2h
	pop	cx

l268D_0044:
	push	ds
	push	0AA2Eh
	push	ds
	push	9166h
	push	dword ptr [bp-4h]
	call	far 0800h:3060h
	add	sp,0Ch
	push	dword ptr [bp-4h]
	call	far 0800h:2B50h
	add	sp,4h
	push	ds
	push	9159h
	push	ds
	push	9169h
	call	far 0800h:302Bh
	add	sp,8h
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	cmp	dword ptr [bp-4h],0h
	jz	00F3h

l268D_0081:
	push	ss
	lea	ax,[bp-40h]
	push	ax
	push	ss
	lea	ax,[bp-2Ch]
	push	ax
	push	ss
	lea	ax,[bp-18h]
	push	ax
	push	ds
	push	9174h
	push	dword ptr [bp-4h]
	call	far 0800h:3060h
	add	sp,14h
	push	ss
	lea	ax,[bp-18h]
	push	ax
	call	far 0800h:29F0h
	push	dx
	push	ax
	pop	eax
	add	sp,4h
	mov	dx,28BAh
	mov	es,dx
	mov	es:[7F3Ch],eax
	push	ss
	lea	ax,[bp-2Ch]
	push	ax
	nop
	push	cs
	call	0974h
	add	sp,4h
	mov	dx,28BAh
	mov	es,dx
	mov	es:[7F40h],ax
	push	ss
	lea	ax,[bp-40h]
	push	ax
	nop
	push	cs
	call	0974h
	add	sp,4h
	mov	dx,28BAh
	mov	es,dx
	mov	es:[7F42h],ax
	push	dword ptr [bp-4h]
	call	far 0800h:2B50h
	add	sp,4h

l268D_00F3:
	leave
	retf
268D:00F5                B8 01 00 CB                           ....      

;; main: 268D:00F9
main proc
	enter	2h,0h
	call	far 0800h:2056h
	push	dx
	push	ax
	pop	eax
	cmp	eax,4C000h
	jnc	013Ch

l268D_010E:
	push	ds
	push	917Bh
	call	far 0800h:37D3h
	add	sp,4h
	push	ds
	push	918Fh
	call	far 0800h:37D3h
	add	sp,4h
	push	3E8h
	call	far 0800h:1A83h
	pop	cx
	call	far 0800h:20A6h
	push	1h
	call	far 0800h:03B9h
	pop	cx

l268D_013C:
	push	268Dh
	push	0F5h
	call	far 0800h:02ECh
	add	sp,4h
	nop
	push	cs
	call	05D9h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[83D4h],0h
	mov	dword ptr [0AA80h],0A0000000h
	push	cs
	call	000Fh
	call	far 16C6h:0008h
	mov	[0AA7Eh],ax
	nop
	push	cs
	call	034Ah
	push	dword ptr [bp+8h]
	push	word ptr [bp+6h]
	nop
	push	cs
	call	08C8h
	add	sp,6h
	call	far 2476h:0104h
	mov	ax,2862h
	mov	es,ax
	mov	byte ptr es:[0000h],1h
	mov	ax,28B9h
	mov	es,ax
	cmp	byte ptr es:[0000h],1h
	jnz	01B6h

l268D_01A1:
	call	far 2425h:000Ah
	mov	ax,28BAh
	mov	es,ax
	or	word ptr es:[302Ah],2h
	call	far 2425h:0286h

l268D_01B6:
	call	far 2141h:020Eh
	call	far 2057h:005Ch
	mov	word ptr [bp-2h],1h
	jmp	0210h

l268D_01C7:
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A8AEh]
	add	ax,2h
	push	word ptr es:[0A8B0h]
	push	ax
	push	word ptr [bp-2h]
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[0A8AEh]
	mov	al,es:[bx+1h]
	mov	ah,0h
	push	ax
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[0A8B0h]
	mov	al,es:[bx]
	mov	ah,0h
	push	ax
	call	far 2476h:0407h
	add	sp,0Ah
	push	14h
	call	far 0800h:1A83h
	pop	cx
	inc	word ptr [bp-2h]

l268D_0210:
	cmp	word ptr [bp-2h],65h
	jl	01C7h

l268D_0216:
	push	1008001h
	push	ds
	push	0AA2Eh
	call	far 0800h:3615h
	add	sp,8h
	mov	dx,28BAh
	mov	es,dx
	mov	es:[0A18Ah],ax
	cmp	ax,0FFFFh
	jnz	024Ah

l268D_0236:
	push	ds
	push	91DEh
	call	far 263Fh:04B6h
	add	sp,4h
	push	1h
	nop
	push	cs
	call	03E2h
	pop	cx

l268D_024A:
	mov	ax,28BAh
	mov	es,ax
	or	word ptr es:[302Ah],20h
	push	0h
	push	20h
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[0A18Ah]
	call	far 0800h:06ABh
	add	sp,8h
	call	far 0F2Bh:153Fh
	nop
	push	cs
	call	0282h
	push	0h
	nop
	push	cs
	call	03E2h
	pop	cx
	xor	ax,ax
	leave
	retf

;; fn268D_0282: 268D:0282
;;   Called from:
;;     268D:0272 (in main)
fn268D_0282 proc
	enter	16h,0h
	call	far 1197h:09ACh
	mov	word ptr [bp-2h],0h
	jmp	02A1h

l268D_0292:
	lea	ax,[bp-16h]
	mov	bx,[bp-2h]
	add	bx,ax
	mov	byte ptr ss:[bx],0h
	inc	word ptr [bp-2h]

l268D_02A1:
	cmp	word ptr [bp-2h],11h
	jl	0292h

l268D_02A7:
	mov	word ptr [bp-2h],0h
	jmp	0300h

l268D_02AE:
	call	far 0800h:083Fh
	mov	bx,11h
	cwd
	idiv	bx
	mov	[bp-4h],dx
	lea	ax,[bp-16h]
	mov	bx,[bp-4h]
	add	bx,ax
	cmp	byte ptr ss:[bx],0h
	jnz	02AEh

l268D_02CA:
	mov	bx,[bp-4h]
	add	bx,ax
	mov	byte ptr ss:[bx],1h
	mov	bx,[bp-4h]
	shl	bx,2h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[bx+7FA8h]
	mov	dx,es:[bx+7FA6h]
	mov	bx,[bp-2h]
	shl	bx,2h
	mov	cx,28BAh
	mov	es,cx
	mov	es:[bx+0A390h],ax
	mov	es:[bx+0A38Eh],dx
	inc	word ptr [bp-2h]

l268D_0300:
	cmp	word ptr [bp-2h],11h
	jl	02AEh

l268D_0306:
	call	far 1ED7h:000Eh
	mov	[bp-2h],ax
	cmp	word ptr [bp-2h],0h
	jl	0348h

l268D_0314:
	cli
	mov	ax,28BAh
	mov	es,ax
	mov	dword ptr es:[302Ch],0h
	push	word ptr [bp-2h]
	call	far 1F0Fh:000Fh
	pop	cx
	cli

l268D_032E:
	call	far 2331h:0167h
	or	ax,dx
	jnz	032Eh

l268D_0337:
	mov	ax,28BAh
	mov	es,ax
	mov	dword ptr es:[302Ch],0h
	jmp	0306h

l268D_0348:
	leave
	retf

;; fn268D_034A: 268D:034A
;;   Called from:
;;     268D:0171 (in main)
fn268D_034A proc
	enter	14h,0h
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[007Dh]
	mov	ah,0h
	mov	[bp-2h],ax
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[007Eh]
	mov	ah,0h
	mov	[bp-4h],ax
	call	far 209Fh:00DDh
	mov	word ptr [bp-14h],0h
	push	ss
	lea	ax,[bp-14h]
	push	ax
	push	ss
	push	ax
	push	33h
	call	far 0800h:21F9h
	add	sp,0Ah
	mov	ax,28B9h
	mov	es,ax
	mov	byte ptr es:[0000h],1h
	cmp	word ptr [0AA7Eh],3h
	jge	03B0h

l268D_0397:
	push	ds
	push	91F9h
	call	far 0800h:37D3h
	add	sp,4h
	call	far 0800h:20A6h
	push	1h
	nop
	push	cs
	call	03E2h
	pop	cx

l268D_03B0:
	cmp	word ptr [bp-2h],3h
	jc	03C2h

l268D_03B6:
	cmp	word ptr [bp-2h],3h
	jnz	03DBh

l268D_03BC:
	cmp	word ptr [bp-4h],1Eh
	jnc	03DBh

l268D_03C2:
	push	ds
	push	9226h
	call	far 0800h:37D3h
	add	sp,4h
	call	far 0800h:20A6h
	push	1h
	nop
	push	cs
	call	03E2h
	pop	cx

l268D_03DB:
	call	far 263Fh:00A6h
	leave
	retf

;; fn268D_03E2: 268D:03E2
;;   Called from:
;;     263F:0437 (in fn263F_03F3)
;;     263F:04AE (in fn263F_043F)
;;     268D:0007 (in fn263F_04B6)
;;     268D:003F (in fn268D_000F)
;;     268D:0245 (in main)
;;     268D:0279 (in main)
;;     268D:03AB (in fn268D_034A)
;;     268D:03D6 (in fn268D_034A)
fn268D_03E2 proc
	enter	1Ch,0h
	cmp	word ptr [bp+6h],0h
	jz	03EFh

l268D_03EC:
	jmp	052Bh

l268D_03EF:
	push	8001h
	push	ds
	push	925Eh
	call	far 0800h:3615h
	add	sp,6h
	mov	[bp-2h],ax
	cmp	word ptr [bp-2h],0FFh
	jnz	0413h

l268D_0407:
	push	ds
	push	926Bh
	call	far 263Fh:03F3h
	add	sp,4h

l268D_0413:
	push	word ptr [bp-2h]
	call	far 0800h:2DD1h
	pop	cx
	mov	[bp-0Ch],ax
	xor	ax,ax
	mov	[bp-0Ah],ax
	mov	[bp-8h],ax
	push	1h
	push	ss
	lea	ax,[bp-8h]
	push	ax
	push	word ptr [bp-2h]
	call	far 0800h:3C87h
	add	sp,8h
	push	1h
	push	ss
	lea	ax,[bp-0Ah]
	push	ax
	push	word ptr [bp-2h]
	call	far 0800h:3C87h
	add	sp,8h
	mov	ax,[bp-0Ch]
	add	ax,0FFFEh
	push	ax
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A558h]
	push	word ptr [bp-2h]
	call	far 0800h:3C87h
	add	sp,8h
	push	word ptr [bp-2h]
	call	far 0800h:2A93h
	pop	cx
	call	far 2476h:081Fh
	push	ds
	push	9278h
	push	0h
	call	far 2476h:0630h
	add	sp,8h
	mov	word ptr [bp-4h],0h
	jmp	04CBh

l268D_048C:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A558h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-8h]
	call	far 2476h:0407h
	add	sp,0Ah

l268D_04A8:
	mov	dx,3DAh
	in	al,dx
	mov	ah,0h
	mov	[bp-6h],ax
	test	word ptr [bp-6h],8h
	jnz	04A8h

l268D_04B8:
	mov	dx,3DAh
	in	al,dx
	mov	ah,0h
	mov	[bp-6h],ax
	test	word ptr [bp-6h],8h
	jz	04B8h

l268D_04C8:
	inc	word ptr [bp-4h]

l268D_04CB:
	cmp	word ptr [bp-4h],64h
	jle	048Ch

l268D_04D1:
	call	far 0800h:2390h
	or	ax,ax
	jz	04D1h

l268D_04DA:
	call	far 0800h:20A6h
	mov	word ptr [bp-4h],64h
	jmp	0525h

l268D_04E6:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A558h]
	push	word ptr [bp-4h]
	push	word ptr [bp-0Ah]
	push	word ptr [bp-8h]
	call	far 2476h:0407h
	add	sp,0Ah

l268D_0502:
	mov	dx,3DAh
	in	al,dx
	mov	ah,0h
	mov	[bp-6h],ax
	test	word ptr [bp-6h],8h
	jnz	0502h

l268D_0512:
	mov	dx,3DAh
	in	al,dx
	mov	ah,0h
	mov	[bp-6h],ax
	test	word ptr [bp-6h],8h
	jz	0512h

l268D_0522:
	dec	word ptr [bp-4h]

l268D_0525:
	cmp	word ptr [bp-4h],0h
	jge	04E6h

l268D_052B:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[0A882h],0h
	jz	0549h

l268D_0539:
	mov	es,ax
	push	dword ptr es:[0A882h]
	call	far 0800h:1C24h
	add	sp,4h

l268D_0549:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[302Ah],1h
	jz	055Ch

l268D_0557:
	call	far 2476h:03E6h

l268D_055C:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[302Ah],2h
	jz	0580h

l268D_056A:
	mov	word ptr [bp-1Ch],0h
	push	ss
	lea	ax,[bp-1Ch]
	push	ax
	push	ss
	push	ax
	push	33h
	call	far 0800h:21F9h
	add	sp,0Ah

l268D_0580:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[302Ah],4h
	jz	0593h

l268D_058E:
	call	far 2141h:0271h

l268D_0593:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[302Ah],10h
	jz	05A6h

l268D_05A1:
	call	far 2057h:011Eh

l268D_05A6:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[302Ah],20h
	jz	05C4h

l268D_05B4:
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[0A18Ah]
	call	far 0800h:2A93h
	pop	cx

l268D_05C4:
	cmp	word ptr [bp+6h],0h
	jnz	05CFh

l268D_05CA:
	nop
	push	cs
	call	05D9h

l268D_05CF:
	push	0h
	call	far 0800h:03B9h
	pop	cx
	leave
	retf

;; fn268D_05D9: 268D:05D9
;;   Called from:
;;     268D:014B (in main)
;;     268D:05CB (in fn268D_03E2)
fn268D_05D9 proc
	retf

;; fn268D_05DA: 268D:05DA
;;   Called from:
;;     268D:06F1 (in fn268D_06AA)
fn268D_05DA proc
	push	bp
	mov	bp,sp

l268D_05DD:
	mov	dx,3DAh
	in	al,dx
	mov	ah,0h
	test	ax,8h
	jz	05DDh

l268D_05E8:
	mov	dx,3DAh
	in	al,dx
	mov	ah,0h
	test	ax,8h
	jnz	05E8h

l268D_05F3:
	dec	dword ptr [bp+6h]
	jnz	05DDh

l268D_05F9:
	pop	bp
	retf

;; fn268D_05FB: 268D:05FB
;;   Called from:
;;     268D:06CB (in fn268D_06AA)
fn268D_05FB proc
	enter	2h,0h
	mov	word ptr [bp-2h],384h
	jmp	061Ah

l268D_0606:
	push	word ptr [bp-2h]
	call	far 0800h:295Ah
	pop	cx
	push	1h
	call	far 0800h:1A83h
	pop	cx
	inc	word ptr [bp-2h]

l268D_061A:
	cmp	word ptr [bp-2h],3E8h
	jl	0606h

l268D_0621:
	call	far 0800h:2986h
	leave
	retf
268D:0628                         0E E8 CF FF 6A 0C 9A E9         ....j...
268D:0630 16 00 08 59 1E 68 85 92 9A 67 18 00 08 83 C4 04 ...Y.h...g......
268D:0640 B8 BA 28 8E C0 26 C6 06 93 30 01 66 6A 32 0E E8 ..(..&...0.fj2..
268D:0650 88 FF 83 C4 04 CB 0E E8 A1 FF 6A 0A 9A E9 16 00 ..........j.....
268D:0660 08 59 1E 68 AD 92 9A 67 18 00 08 83 C4 04 B8 BA .Y.h...g........
268D:0670 28 8E C0 26 C6 06 94 30 01 66 6A 32 0E E8 5A FF (..&...0.fj2..Z.
268D:0680 83 C4 04 CB 0E E8 73 FF 1E 68 D2 92 9A D3 37 00 ......s..h....7.
268D:0690 08 83 C4 04 B8 BA 28 8E C0 26 C6 06 95 30 01 66 ......(..&...0.f
268D:06A0 6A 32 0E E8 34 FF 83 C4 04 CB                   j2..4.....     

;; fn268D_06AA: 268D:06AA
;;   Called from:
;;     268D:0912 (in fn268D_08C8)
fn268D_06AA proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+6h]
	inc	ax
	push	word ptr [bp+8h]
	push	ax
	nop
	push	cs
	call	0974h
	add	sp,4h
	movsx	eax,ax
	mov	dx,28BAh
	mov	es,dx
	mov	es:[3096h],eax
	push	cs
	call	05FBh
	push	0Bh
	call	far 0800h:16E9h
	pop	cx
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[3096h]
	push	ds
	push	92F8h
	call	far 0800h:1867h
	add	sp,8h
	push	32h
	push	cs
	call	05DAh
	add	sp,4h
	pop	bp
	retf
268D:06FA                               0E E8 FD FE 6A 0B           ....j.
268D:0700 9A E9 16 00 08 59 1E 68 21 93 9A 67 18 00 08 83 .....Y.h!..g....
268D:0710 C4 04 B8 BA 28 8E C0 26 C6 06 9A 30 01 66 6A 32 ....(..&...0.fj2
268D:0720 0E E8 B6 FE 83 C4 04 CB 0E E8 CF FE 6A 0D 9A E9 ............j...
268D:0730 16 00 08 59 1E 68 49 93 9A 67 18 00 08 83 C4 04 ...Y.hI..g......
268D:0740 B8 BA 28 8E C0 26 C6 06 9D 30 01 66 6A 32 0E E8 ..(..&...0.fj2..
268D:0750 88 FE 83 C4 04 CB 0E E8 A1 FE 6A 09 9A E9 16 00 ..........j.....
268D:0760 08 59 1E 68 76 93 9A 67 18 00 08 83 C4 04 B8 BA .Y.hv..g........
268D:0770 28 8E C0 26 C6 06 9C 30 01 66 6A 32 0E E8 5A FE (..&...0.fj2..Z.
268D:0780 83 C4 04 CB 0E E8 73 FE 6A 0E 9A E9 16 00 08 59 ......s.j......Y
268D:0790 1E 68 A2 93 9A 67 18 00 08 83 C4 04 B8 BA 28 8E .h...g........(.
268D:07A0 C0 26 C6 06 9B 30 01 66 6A 32 0E E8 2C FE 83 C4 .&...0.fj2..,...
268D:07B0 04 CB 0E E8 45 FE 6A 0A 9A E9 16 00 08 59 1E 68 ....E.j......Y.h
268D:07C0 D0 93 9A 67 18 00 08 83 C4 04 B8 BA 28 8E C0 26 ...g........(..&
268D:07D0 C6 06 9E 30 01 66 6A 32 0E E8 FE FD 83 C4 04 CB ...0.fj2........
268D:07E0 0E E8 17 FE 6A 09 9A E9 16 00 08 59 1E 68 FD 93 ....j......Y.h..
268D:07F0 9A 67 18 00 08 83 C4 04 B8 BA 28 8E C0 26 C6 06 .g........(..&..
268D:0800 9F 30 01 66 6A 32 0E E8 D0 FD 83 C4 04 CB 0E E8 .0.fj2..........
268D:0810 E9 FD 6A 09 9A E9 16 00 08 59 1E 68 26 94 9A 67 ..j......Y.h&..g
268D:0820 18 00 08 83 C4 04 B8 BA 28 8E C0 26 C6 06 A0 30 ........(..&...0
268D:0830 01 66 6A 32 0E E8 A2 FD 83 C4 04 CB 0E E8 BB FD .fj2............
268D:0840 6A 0C 9A E9 16 00 08 59 1E 68 49 94 9A 67 18 00 j......Y.hI..g..
268D:0850 08 83 C4 04 B8 BA 28 8E C0 26 C6 06 A1 30 01 66 ......(..&...0.f
268D:0860 6A 32 0E E8 74 FD 83 C4 04 CB                   j2..t.....     

;; fn268D_086A: 268D:086A
;;   Called from:
;;     268D:093A (in fn268D_08C8)
fn268D_086A proc
	enter	2Ah,0h
	push	dword ptr [bp+6h]
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	call	far 0800h:47D7h
	add	sp,8h
	mov	byte ptr [bp-1h],0h
	jmp	08AFh

l268D_0885:
	mov	al,[bp-1h]
	cbw
	lea	dx,[bp-2Ah]
	add	ax,dx
	mov	bx,ax
	mov	al,ss:[bx]
	cbw
	or	ax,ax
	jz	08B5h

l268D_0898:
	mov	al,[bp-1h]
	cbw
	lea	dx,[bp-2Ah]
	add	ax,dx
	mov	bx,ax
	xor	byte ptr ss:[bx],0BBh
	mov	al,[bp-1h]
	inc	al
	mov	[bp-1h],al

l268D_08AF:
	cmp	byte ptr [bp-1h],27h
	jl	0885h

l268D_08B5:
	push	dword ptr [bp+0Ah]
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	call	far 0800h:47A7h
	add	sp,8h
	leave
	retf

;; fn268D_08C8: 268D:08C8
;;   Called from:
;;     268D:017D (in main)
fn268D_08C8 proc
	enter	1E6h,0h
	lea	ax,[bp+0FE1Ah]
	push	ss
	push	ax
	push	ds
	push	8F6Ah
	mov	cx,1E4h
	call	far 0800h:03F4h
	cmp	word ptr [bp+6h],2h
	jge	08E7h

l268D_08E4:
	jmp	0972h

l268D_08E7:
	jmp	0966h

l268D_08E9:
	mov	byte ptr [bp-1h],0h
	jmp	0960h

l268D_08EF:
	mov	ax,[bp+6h]
	shl	ax,2h
	les	bx,[bp+8h]
	add	bx,ax
	les	bx,es:[bx]
	cmp	byte ptr es:[bx],24h
	jnz	091Bh

l268D_0903:
	mov	ax,[bp+6h]
	shl	ax,2h
	les	bx,[bp+8h]
	add	bx,ax
	push	dword ptr es:[bx]
	push	cs
	call	06AAh
	add	sp,4h
	jmp	0966h

l268D_091B:
	mov	al,[bp-1h]
	mov	ah,0h
	imul	ax,ax,2Ch
	lea	dx,[bp+0FE1Ah]
	add	ax,dx
	push	ss
	push	ax
	mov	ax,[bp+6h]
	shl	ax,2h
	les	bx,[bp+8h]
	add	bx,ax
	push	dword ptr es:[bx]
	push	cs
	call	086Ah
	add	sp,8h
	or	ax,ax
	jnz	0958h

l268D_0945:
	mov	al,[bp-1h]
	mov	ah,0h
	imul	ax,ax,2Ch
	lea	dx,[bp+0FE42h]
	add	ax,dx
	mov	bx,ax
	call	dword ptr ss:[bx]

l268D_0958:
	mov	al,[bp-1h]
	inc	al
	mov	[bp-1h],al

l268D_0960:
	cmp	byte ptr [bp-1h],0Bh
	jc	08EFh

l268D_0966:
	dec	word ptr [bp+6h]
	cmp	word ptr [bp+6h],0h
	jle	0972h

l268D_096F:
	jmp	08E9h

l268D_0972:
	leave
	retf

;; fn268D_0974: 268D:0974
;;   Called from:
;;     268D:00C1 (in fn268D_000F)
;;     268D:00D7 (in fn268D_000F)
;;     268D:06B6 (in fn268D_06AA)
fn268D_0974 proc
	push	bp
	mov	bp,sp
	push	dword ptr [bp+6h]
	call	far 0800h:29F0h
