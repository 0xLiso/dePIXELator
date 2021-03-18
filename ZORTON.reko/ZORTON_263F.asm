;;; Segment 263F (263F:0000)
263F:0000 47 11 F3 10 9C 11 3A 12                         G.....:.       

;; fn263F_0008: 263F:0008
;;   Called from:
;;     263F:0329 (in fn263F_00A6)
fn263F_0008 proc
	enter	0A4h,0h

l263F_000C:
	push	dword ptr [bp+6h]
	push	50h
	push	ss
	lea	ax,[bp-54h]
	push	ax
	call	far 0800h:2CD5h
	add	sp,0Ah
	push	ss
	lea	ax,[bp-54h]
	push	ax
	call	far 0800h:3E0Fh
	add	sp,4h
	dec	ax
	lea	dx,[bp-54h]
	add	ax,dx
	mov	bx,ax
	mov	byte ptr ss:[bx],0h
	push	dword ptr [bp+6h]
	push	50h
	push	ss
	lea	ax,[bp+0FF5Ch]
	push	ax
	call	far 0800h:2CD5h
	add	sp,0Ah
	push	ss
	lea	ax,[bp+0FF5Ch]
	push	ax
	call	far 0800h:3E0Fh
	add	sp,4h
	dec	ax
	lea	dx,[bp+0FF5Ch]
	add	ax,dx
	mov	bx,ax
	mov	byte ptr ss:[bx],0h
	mov	ax,ss
	lea	dx,[bp-54h]
	or	dx,ax
	jz	0096h

l263F_0070:
	push	ax
	lea	ax,[bp-4h]
	push	ax
	push	ss
	lea	ax,[bp+0FF5Ch]
	push	ax
	mov	ax,[bp+0Ah]
	inc	word ptr [bp+0Ah]
	shl	ax,2h
	add	ax,0A89Eh
	push	ds
	push	ax
	push	ss
	lea	ax,[bp-54h]
	push	ax
	nop
	push	cs
	call	033Eh
	add	sp,10h

l263F_0096:
	les	bx,[bp+6h]
	test	word ptr es:[bx+2h],20h
	jnz	00A4h

l263F_00A1:
	jmp	000Ch

l263F_00A4:
	leave
	retf

;; fn263F_00A6: 263F:00A6
;;   Called from:
;;     268D:03DB (in fn268D_034A)
fn263F_00A6 proc
	enter	36h,0h
	mov	dword ptr [bp-4h],17F78h
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jz	00CDh

l263F_00BF:
	mov	eax,[bp-4h]
	add	eax,44E8h
	mov	[bp-4h],eax

l263F_00CD:
	push	0h
	push	ss
	lea	ax,[bp-36h]
	push	ax
	push	ds
	push	8A68h
	call	far 0800h:2D71h
	add	sp,0Ah
	jmp	00F7h

l263F_00E2:
	mov	eax,[bp-1Ch]
	add	[bp-4h],eax
	push	ss
	lea	ax,[bp-36h]
	push	ax
	call	far 0800h:2DA4h
	add	sp,4h

l263F_00F7:
	mov	[bp-6h],ax
	cmp	word ptr [bp-6h],0h
	jz	00E2h

l263F_0100:
	push	0FDE8h
	call	far 0800h:1D38h
	add	sp,4h
	mov	[0A884h],dx
	mov	[0A882h],ax
	or	ax,dx
	jnz	0129h

l263F_0119:
	push	dword ptr [bp-4h]
	push	ds
	push	8A6Eh
	nop
	push	cs
	call	043Fh
	add	sp,8h

l263F_0129:
	sub	dword ptr [bp-4h],0FDE8h
	sub	dword ptr [bp-4h],8000h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A51Ch],0h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A51Eh],0h
	mov	ax,28BAh
	mov	es,ax
	inc	word ptr es:[9804h]
	jge	017Ah

l263F_015D:
	mov	es,ax
	mov	ax,es:[9812h]
	mov	bx,es:[9810h]
	inc	word ptr es:[9810h]
	mov	dl,0Ah
	mov	es,ax
	mov	es:[bx],dl
	mov	al,dl
	mov	ah,0h
	jmp	018Ah

l263F_017A:
	push	28BAh
	push	9804h
	push	0Ah
	call	far 0800h:37EEh
	add	sp,6h

l263F_018A:
	push	ss
	lea	ax,[bp-4h]
	push	ax
	push	ds
	push	8A88h
	push	28BAh
	push	87E2h
	push	ds
	push	8A7Bh
	nop
	push	cs
	call	033Eh
	add	sp,10h
	push	ss
	lea	ax,[bp-4h]
	push	ax
	push	ds
	push	8A9Bh
	push	28BAh
	push	87F8h
	push	ds
	push	8A91h
	nop
	push	cs
	call	033Eh
	add	sp,10h
	push	ss
	lea	ax,[bp-4h]
	push	ax
	push	ds
	push	8AAAh
	push	28BAh
	push	87CCh
	push	ds
	push	8AA1h
	nop
	push	cs
	call	033Eh
	add	sp,10h
	push	ss
	lea	ax,[bp-4h]
	push	ax
	push	ds
	push	8ABCh
	push	28BAh
	push	880Eh
	push	ds
	push	8AAFh
	nop
	push	cs
	call	033Eh
	add	sp,10h
	push	ss
	lea	ax,[bp-4h]
	push	ax
	push	ds
	push	8AD0h
	push	28BAh
	push	87B6h
	push	ds
	push	8AC3h
	nop
	push	cs
	call	033Eh
	add	sp,10h
	push	ss
	lea	ax,[bp-4h]
	push	ax
	push	ds
	push	8AE5h
	push	28BAh
	push	883Ah
	push	ds
	push	8AD8h
	nop
	push	cs
	call	033Eh
	add	sp,10h
	push	ss
	lea	ax,[bp-4h]
	push	ax
	push	ds
	push	8AFFh
	push	28BAh
	push	8824h
	push	ds
	push	8AF2h
	nop
	push	cs
	call	033Eh
	add	sp,10h
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jnz	0257h

l263F_0254:
	jmp	030Fh

l263F_0257:
	push	ds
	push	8B05h
	call	far 209Fh:02E3h
	add	sp,4h
	mov	[0A894h],dx
	mov	[0A892h],ax
	or	ax,dx
	jnz	0280h

l263F_026E:
	push	dword ptr [bp-4h]
	push	ds
	push	8B0Eh
	nop
	push	cs
	call	043Fh
	add	sp,8h
	jmp	028Dh

l263F_0280:
	les	bx,[0A88Ah]
	movsx	eax,word ptr es:[bx]
	sub	[bp-4h],eax

l263F_028D:
	push	ds
	push	8B31h
	call	far 209Fh:02E3h
	add	sp,4h
	mov	[0A890h],dx
	mov	[0A88Eh],ax
	or	ax,dx
	jnz	02B4h

l263F_02A4:
	push	dword ptr [bp-4h]
	push	ds
	push	8B0Eh
	nop
	push	cs
	call	043Fh
	add	sp,8h

l263F_02B4:
	push	ds
	push	8B3Ah
	call	far 209Fh:02E3h
	add	sp,4h
	mov	[0A89Ch],dx
	mov	[0A89Ah],ax
	or	ax,dx
	jnz	02DBh

l263F_02CB:
	push	dword ptr [bp-4h]
	push	ds
	push	8B0Eh
	nop
	push	cs
	call	043Fh
	add	sp,8h

l263F_02DB:
	push	ds
	push	8B43h
	call	far 209Fh:02E3h
	add	sp,4h
	mov	[0A898h],dx
	mov	[0A896h],ax
	or	ax,dx
	jnz	0302h

l263F_02F2:
	push	dword ptr [bp-4h]
	push	ds
	push	8B0Eh
	nop
	push	cs
	call	043Fh
	add	sp,8h

l263F_0302:
	push	ss
	lea	ax,[bp-4h]
	push	ax
	call	far 209Fh:04CBh
	add	sp,4h

l263F_030F:
	push	ds
	push	8B56h
	push	ds
	push	8B4Ch
	call	far 0800h:302Bh
	add	sp,8h
	mov	[bp-8h],dx
	mov	[bp-0Ah],ax
	push	0h
	push	dx
	push	ax
	push	cs
	call	0008h
	add	sp,6h
	push	dword ptr [bp-0Ah]
	call	far 0800h:2B50h
	add	sp,4h
	leave
	retf

;; fn263F_033E: 263F:033E
;;   Called from:
;;     0CE0:0083 (in fn0CE0_0007)
;;     0CE0:00DA (in fn0CE0_0007)
;;     0CE0:00F3 (in fn0CE0_0007)
;;     1F0F:109F (in fn1F0F_0BF7)
;;     263F:008F (in fn263F_0008)
;;     263F:019E (in fn263F_00A6)
;;     263F:01B9 (in fn263F_00A6)
;;     263F:01D4 (in fn263F_00A6)
;;     263F:01EF (in fn263F_00A6)
;;     263F:020A (in fn263F_00A6)
;;     263F:0225 (in fn263F_00A6)
;;     263F:0240 (in fn263F_00A6)
fn263F_033E proc
	enter	6h,0h
	push	8001h
	push	dword ptr [bp+6h]
	call	far 0800h:3615h
	add	sp,8h
	mov	[bp-6h],ax
	cmp	word ptr [bp-6h],0FFh
	jnz	0369h

l263F_035D:
	push	dword ptr [bp+6h]
	nop
	push	cs
	call	03F3h
	add	sp,4h

l263F_0369:
	push	2h
	push	0h
	push	word ptr [bp-6h]
	call	far 0800h:06ABh
	push	dx
	push	ax
	pop	eax
	add	sp,8h
	mov	[bp-4h],eax
	push	eax
	call	far 0800h:1D38h
	add	sp,4h
	les	bx,[bp+0Ah]
	mov	es:[bx+2h],dx
	mov	es:[bx],ax
	or	ax,dx
	jnz	03ACh

l263F_0399:
	les	bx,[bp+12h]
	push	dword ptr es:[bx]
	push	dword ptr [bp+0Eh]
	nop
	push	cs
	call	043Fh
	add	sp,8h

l263F_03AC:
	push	0h
	push	0h
	push	word ptr [bp-6h]
	call	far 0800h:06ABh
	add	sp,8h
	push	word ptr [bp-4h]
	les	bx,[bp+0Ah]
	push	dword ptr es:[bx]
	push	word ptr [bp-6h]
	call	far 0800h:3C87h
	add	sp,8h
	les	bx,[bp+12h]
	mov	eax,[bp-4h]
	sub	es:[bx],eax
	push	word ptr [bp-6h]
	call	far 0800h:2A93h
	pop	cx
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[302Ah],1h
	leave
	retf

;; fn263F_03F3: 263F:03F3
;;   Called from:
;;     0CE0:002F (in fn0CE0_0007)
;;     0CE0:0F57 (in fn0CE0_08FC)
;;     0CE0:0FB5 (in fn0CE0_08FC)
;;     0E31:0031 (in fn0E31_0002)
;;     1D10:1329 (in fn1D10_12D4)
;;     209F:0307 (in fn209F_02E3)
;;     209F:09CC (in fn209F_08D2)
;;     2476:0650 (in fn2476_0630)
;;     2504:0983 (in fn2504_094D)
;;     263F:0362 (in fn263F_033E)
;;     268D:0034 (in fn268D_000F)
;;     268D:040B (in fn268D_03E2)
fn263F_03F3 proc
	push	bp
	mov	bp,sp
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[302Ah],1h
	jz	0414h

l263F_0404:
	call	far 2476h:03E6h
	mov	ax,28BAh
	mov	es,ax
	and	word ptr es:[302Ah],0FEh

l263F_0414:
	push	dword ptr [bp+6h]
	push	ds
	push	8B59h
	call	far 0800h:37D3h
	add	sp,8h
	push	ds
	push	8B87h
	call	far 0800h:37D3h
	add	sp,4h
	call	far 0800h:20A6h
	push	1h
	call	far 268Dh:03E2h
	pop	cx
	pop	bp
	retf

;; fn263F_043F: 263F:043F
;;   Called from:
;;     0CE0:0637 (in fn0CE0_05FB)
;;     0CE0:099F (in fn0CE0_08FC)
;;     1744:09E1 (in fn1744_0972)
;;     209F:016A (in fn209F_0149)
;;     209F:0275 (in fn209F_0149)
;;     209F:0484 (in fn209F_02E3)
;;     226D:0355 (in fn226D_00F9)
;;     2476:02B5 (in fn2476_0282)
;;     263F:0122 (in fn263F_00A6)
;;     263F:0277 (in fn263F_00A6)
;;     263F:02AD (in fn263F_00A6)
;;     263F:02D4 (in fn263F_00A6)
;;     263F:02FB (in fn263F_00A6)
;;     263F:03A5 (in fn263F_033E)
fn263F_043F proc
	push	bp
	mov	bp,sp
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[302Ah],1h
	jz	0460h

l263F_0450:
	call	far 2476h:03E6h
	mov	ax,28BAh
	mov	es,ax
	and	word ptr es:[302Ah],0FEh

l263F_0460:
	push	ds
	push	8B9Eh
	call	far 0800h:37D3h
	add	sp,4h
	push	dword ptr [bp+6h]
	call	far 0800h:37D3h
	add	sp,4h
	push	dword ptr [bp+0Ah]
	push	ds
	push	8BC3h
	call	far 0800h:37D3h
	add	sp,8h
	call	far 0800h:2056h
	push	dx
	push	ax
	push	ds
	push	8BE5h
	call	far 0800h:37D3h
	add	sp,8h
	push	ds
	push	8B87h
	call	far 0800h:37D3h
	add	sp,4h
	call	far 0800h:20A6h
	push	1h
	call	far 268Dh:03E2h
	pop	cx
	pop	bp
	retf

;; fn263F_04B6: 263F:04B6
;;   Called from:
;;     1D10:10BA (in fn1D10_0FB3)
;;     1D10:10E1 (in fn1D10_0FB3)
;;     1D10:10FD (in fn1D10_0FB3)
;;     1ED0:0059 (in fn1ED0_0009)
;;     1ED7:0002 (in fn1ED0_0009)
;;     2331:004B (in fn2331_0000)
;;     2331:007A (in fn2331_0000)
;;     2331:0095 (in fn2331_0000)
;;     2331:0106 (in fn2331_00BA)
;;     268D:023A (in main)
fn263F_04B6 proc
	push	bp
	mov	bp,sp
	call	far 2476h:03E6h
	mov	ax,28BAh
	mov	es,ax
	and	word ptr es:[302Ah],0FEh
	push	ds
	push	8BFEh
	call	far 0800h:37D3h
	add	sp,4h
	push	dword ptr [bp+6h]
	push	ds
	push	8C08h
	call	far 0800h:37D3h
