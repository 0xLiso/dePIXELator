;;; Segment 1ED7 (1ED7:0000)
1ED7:0000 B0 7D 9A B6 04 3F 26 83 C4 04                   .}...?&...     

l1ED0_007A:
	xor	ax,ax
	leave
	retf

;; fn1ED7_000E: 1ED7:000E
;;   Called from:
;;     268D:0306 (in fn268D_0282)
fn1ED7_000E proc
	enter	0Ch,0h
	cli
	call	far 2425h:01E8h
	sti
	mov	ax,28BAh
	mov	es,ax
	mov	dword ptr es:[302Ch],0h
	mov	ax,2862h
	mov	es,ax
	mov	byte ptr es:[0000h],1h
	cli
	mov	ax,28BAh
	xor	dx,dx
	mov	es,ax
	mov	es:[0A51Eh],dx
	mov	ax,dx
	mov	dx,28BAh
	mov	es,dx
	mov	es:[0A51Ch],ax
	sti
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A8AEh]
	add	ax,2h
	push	word ptr es:[0A8B0h]
	push	ax
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
	call	far 2476h:043Bh
	add	sp,8h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A182h],19h
	push	0h
	call	far 226Dh:0656h
	pop	cx
	mov	ax,28BAh
	mov	es,ax
	mov	dword ptr es:[0A17Eh],0h
	call	far 226Dh:057Fh
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[2E1Ch],28BAh
	mov	word ptr es:[2E1Ah],2D72h
	mov	word ptr [bp-6h],0h
	jmp	00DCh

l1ED7_00C8:
	mov	bx,[bp-6h]
	imul	bx,bx,15h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[bx+2D72h],0h
	inc	word ptr [bp-6h]

l1ED7_00DC:
	cmp	word ptr [bp-6h],8h
	jc	00C8h

l1ED7_00E2:
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[83D4h],0h
	mov	ax,28BAh
	xor	dx,dx
	mov	es,ax
	mov	es:[0A35Ch],dx
	mov	ax,dx
	mov	dx,28BAh
	mov	es,dx
	mov	es:[0A18Ch],ax
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A27Eh],0h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A188h]
	and	ax,3h
	mov	[bp-6h],ax
	mov	bx,[bp-6h]
	shl	bx,3h
	mov	al,[bx+7F5Dh]
	mov	ah,0h
	mov	dx,28BAh
	mov	es,dx
	mov	es:[3059h],ax
	mov	bx,[bp-6h]
	shl	bx,3h
	mov	al,[bx+7F5Eh]
	mov	ah,0h
	mov	es,dx
	mov	es:[3061h],ax
	mov	bx,[bp-6h]
	shl	bx,3h
	mov	al,[bx+7F5Fh]
	mov	ah,0h
	mov	es,dx
	mov	es:[3069h],ax
	mov	bx,[bp-6h]
	shl	bx,3h
	mov	al,[bx+7F60h]
	mov	ah,0h
	mov	es,dx
	mov	es:[3071h],ax
	mov	bx,[bp-6h]
	shl	bx,3h
	mov	al,[bx+7F61h]
	mov	ah,0h
	mov	es,dx
	mov	es:[3079h],ax
	mov	bx,[bp-6h]
	shl	bx,3h
	mov	al,[bx+7F62h]
	mov	ah,0h
	mov	es,dx
	mov	es:[3081h],ax
	mov	bx,[bp-6h]
	shl	bx,3h
	mov	al,[bx+7F63h]
	mov	ah,0h
	mov	es,dx
	mov	es:[3089h],ax
	mov	bx,[bp-6h]
	shl	bx,3h
	mov	al,[bx+7F64h]
	mov	ah,0h
	mov	es,dx
	mov	es:[3091h],ax
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A520h],3h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[3034h],6h
	mov	es,ax
	mov	byte ptr es:[3035h],6h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[8586h],2h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[3051h],28BAh
	mov	word ptr es:[304Fh],3034h
	call	far 226Dh:00F9h
	call	far 23F8h:0004h
	push	28BAh
	push	87ACh
	call	far 23F8h:0055h
	add	sp,4h
	push	28BAh
	push	87EEh
	call	far 23F8h:0055h
	add	sp,4h
	push	28BAh
	push	8830h
	call	far 23F8h:0055h
	add	sp,4h
	call	far 23F8h:00A0h
	mov	ax,28BAh
	mov	es,ax
	or	word ptr es:[0A520h],10Ch
	push	0h
	push	1h
	push	0h
	push	1h
	push	0h
	push	0h
	push	1h
	push	1h
	call	far 2353h:0004h
	add	sp,14h

l1ED7_0250:
	mov	word ptr [bp-8h],28BAh
	mov	word ptr [bp-0Ah],7F1Bh

l1ED7_025A:
	push	dword ptr [bp-0Ah]
	call	far 1D10h:02AEh
	add	sp,4h
	mov	[bp-8h],dx
	mov	[bp-0Ah],ax
	jmp	0311h

l1ED7_026F:
	cmp	dword ptr [bp-4h],0h
	jnz	0279h

l1ED7_0276:
	jmp	0311h

l1ED7_0279:
	les	bx,[bp-4h]
	mov	al,es:[bx]
	mov	ah,0h
	mov	[bp-0Ch],ax
	mov	cx,4h
	mov	bx,37Fh

l1ED7_028A:
	mov	ax,cs:[bx]
	cmp	ax,[bp-0Ch]
	jz	0299h

l1ED7_0292:
	add	bx,2h
	loop	028Ah

l1ED7_0297:
	jmp	0311h

l1ED7_0299:
	jmp	word ptr cs:[bx+8h]
1ED7:029D                                        66 68 25              fh%
1ED7:02A0 00 58 00 66 68 25 00 40 00 66 68 46 00 14 00 1E .X.fh%.@.fhF....
1ED7:02B0 68 7D 7F 9A A3 00 31 0E 83 C4 10 0B C0 74 52 B8 h}....1......tR.
1ED7:02C0 FF FF E9 B8 00 6A 01 9A 01 00 2B 0F 59 BA BA 28 .....j....+.Y..(
1ED7:02D0 8E C2 26 A3 62 80 B8 BA 28 8E C0 26 81 3E 62 80 ..&.b...(..&.>b.
1ED7:02E0 FF 00 74 08 8E C0 26 A1 62 80 EB D6 B8 BA 28 8E ..t...&.b.....(.
1ED7:02F0 C0 26 C7 06 62 80 00 00 EB 17 33 C0 EB C4 C4 5E .&..b.....3....^
1ED7:0300 FC 26 C4 5F 01 66 26 FF 37 9A 0F 00 C1 1B 83 C4 .&._.f&.7.......
1ED7:0310 04                                              .              

l1ED7_0311:
	call	far 2331h:0167h
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	or	ax,dx
	jz	0323h

l1ED7_0320:
	jmp	026Fh

l1ED7_0323:
	mov	ax,2862h
	mov	es,ax
	mov	byte ptr es:[0000h],1h
	push	0h
	push	1h
	push	0h
	push	1h
	push	0h
	push	0h
	push	1h
	push	1h
	call	far 2353h:0004h
	add	sp,14h

l1ED7_0348:
	call	far 2331h:0167h
	or	ax,dx
	jnz	0348h

l1ED7_0351:
	cmp	dword ptr [bp-0Ah],0h
	jnz	035Bh

l1ED7_0358:
	jmp	0250h

l1ED7_035B:
	les	bx,[bp-0Ah]
	cmp	byte ptr es:[bx+10h],0h
	jg	0368h

l1ED7_0365:
	jmp	0250h

l1ED7_0368:
	les	bx,es:[bx+11h]
	mov	eax,es:[bx]
	mov	[bp-0Ah],eax
	jmp	025Ah
1ED7:0377                      E9 D6 FE E9 D3 FE C9 CB 01        .........
