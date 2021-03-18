;;; Segment 209F (209F:0000)
209F:0000 FB                                              .              

l2057_0481:
	retf

;; fn209F_0002: 209F:0002
;;   Called from:
;;     209F:011A (in fn209F_00DD)
fn209F_0002 proc
	enter	0Ah,0h
	mov	ax,[96CEh]
	mov	[bp-2h],ax
	mov	word ptr [bp-4h],0h
	jmp	005Eh

l209F_0013:
	mov	dx,[bp-2h]
	add	dx,6h
	mov	al,1h
	out	dx,al
	mov	dword ptr [bp-8h],0h
	jmp	002Ah

l209F_0026:
	inc	dword ptr [bp-8h]

l209F_002A:
	cmp	dword ptr [bp-8h],2710h
	jl	0026h

l209F_0034:
	mov	dx,[bp-2h]
	add	dx,6h
	mov	al,0h
	out	dx,al

l209F_003D:
	mov	dx,[bp-2h]
	add	dx,0Eh
	in	al,dx
	mov	ah,0h
	test	ax,80h
	jz	003Dh

l209F_004B:
	mov	dx,[bp-2h]
	add	dx,0Ah
	in	al,dx
	mov	[bp-9h],al
	cmp	byte ptr [bp-9h],0AAh
	jz	0064h

l209F_005B:
	inc	word ptr [bp-4h]

l209F_005E:
	cmp	word ptr [bp-4h],64h
	jl	0013h

l209F_0064:
	cmp	word ptr [bp-4h],64h
	jnz	0086h

l209F_006A:
	push	word ptr [bp-2h]
	push	ds
	push	8357h
	call	far 0800h:37D3h
	add	sp,6h
	call	far 0800h:20A6h
	push	1h
	call	far 0800h:03B9h
	pop	cx

l209F_0086:
	mov	dx,[bp-2h]
	add	dx,0Ch
	in	al,dx
	mov	[bp-9h],al
	test	byte ptr [bp-9h],80h
	jnz	0086h

l209F_0096:
	mov	dx,[bp-2h]
	add	dx,0Ch
	mov	al,0E1h
	out	dx,al

l209F_009F:
	mov	dx,[bp-2h]
	add	dx,0Eh
	in	al,dx
	mov	[bp-9h],al
	mov	ah,0h
	test	ax,80h
	jz	009Fh

l209F_00B0:
	mov	dx,[bp-2h]
	add	dx,0Ah
	in	al,dx
	les	bx,[bp+6h]
	mov	es:[bx],al

l209F_00BD:
	mov	dx,[bp-2h]
	add	dx,0Eh
	in	al,dx
	mov	[bp-9h],al
	mov	ah,0h
	test	ax,80h
	jz	00BDh

l209F_00CE:
	mov	dx,[bp-2h]
	add	dx,0Ah
	in	al,dx
	les	bx,[bp+0Ah]
	mov	es:[bx],al
	leave
	retf

;; fn209F_00DD: 209F:00DD
;;   Called from:
;;     268D:036A (in fn268D_034A)
fn209F_00DD proc
	enter	2h,0h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A183h],0h
	call	far 27FBh:050Ah
	or	ax,ax
	jnz	013Eh

l209F_00F5:
	call	far 27FBh:00DCh
	or	ax,ax
	jz	013Eh

l209F_00FE:
	call	far 27FBh:02C4h
	or	ax,ax
	jz	013Eh

l209F_0107:
	call	far 27FBh:039Ah
	or	ax,ax
	jl	013Eh

l209F_0110:
	push	ss
	lea	ax,[bp-2h]
	push	ax
	push	ss
	lea	ax,[bp-1h]
	push	ax
	push	cs
	call	0002h
	add	sp,8h
	mov	al,[bp-1h]
	mov	[0A427h],al
	mov	al,[bp-2h]
	mov	[0A428h],al
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A183h],1h
	jmp	0147h
209F:013A                               EB 02 EB 00                 .... 

l209F_013E:
	push	0FAh
	call	far 0800h:1A83h
	pop	cx

l209F_0147:
	leave
	retf

;; fn209F_0149: 209F:0149
;;   Called from:
;;     209F:04EC (in fn209F_04CB)
fn209F_0149 proc
	enter	0AAh,0h
	push	si
	push	11h
	call	far 0800h:1D2Eh
	pop	cx
	mov	[bp-4h],dx
	mov	[bp-6h],ax
	cmp	dword ptr [bp-6h],0h
	jnz	0172h

l209F_0163:
	push	0h
	push	ds
	push	8392h
	call	far 263Fh:043Fh
	add	sp,8h

l209F_0172:
	mov	word ptr [bp-2h],0h
	jmp	0193h

l209F_0179:
	mov	bx,[bp-2h]
	shl	bx,2h
	lea	ax,[bp+0FF56h]
	add	bx,ax
	mov	word ptr ss:[bx+2h],0h
	mov	word ptr ss:[bx],0h
	inc	word ptr [bp-2h]

l209F_0193:
	cmp	word ptr [bp-2h],28h
	jc	0179h

l209F_0199:
	mov	word ptr [bp-2h],0h
	jmp	021Dh

l209F_01A0:
	mov	ax,[bp+6h]
	add	ax,1F4h
	movsx	eax,ax
	push	eax
	call	far 0800h:1D38h
	add	sp,4h
	les	bx,[bp-6h]
	mov	es:[bx+6h],dx
	mov	es:[bx+4h],ax
	or	ax,dx
	jz	0226h

l209F_01C3:
	les	bx,[bp-6h]
	movzx	eax,word ptr es:[bx+6h]
	shl	eax,4h
	movzx	edx,word ptr es:[bx+4h]
	add	eax,edx
	mov	[bp-0Ah],eax
	sar	eax,10h
	mov	es:[bx+0Eh],al
	mov	ax,[bp-0Ah]
	mov	es:[bx+0Fh],ax
	mov	ax,[bp+6h]
	shl	ax,1h
	mov	dx,0FFFFh
	sub	dx,es:[bx+0Fh]
	cmp	ax,dx
	jbe	0226h

l209F_01FC:
	mov	bx,[bp-2h]
	shl	bx,2h
	lea	ax,[bp+0FF56h]
	add	bx,ax
	mov	si,[bp-6h]
	mov	ax,es:[si+6h]
	mov	dx,es:[si+4h]
	mov	ss:[bx+2h],ax
	mov	ss:[bx],dx
	inc	word ptr [bp-2h]

l209F_021D:
	cmp	word ptr [bp-2h],27h
	jnc	0226h

l209F_0223:
	jmp	01A0h

l209F_0226:
	mov	word ptr [bp-2h],0h
	jmp	025Dh

l209F_022D:
	mov	bx,[bp-2h]
	shl	bx,2h
	lea	ax,[bp+0FF56h]
	add	bx,ax
	mov	ax,ss:[bx]
	or	ax,ss:[bx+2h]
	jz	0263h

l209F_0242:
	mov	bx,[bp-2h]
	shl	bx,2h
	lea	ax,[bp+0FF56h]
	add	bx,ax
	push	dword ptr ss:[bx]
	call	far 0800h:1C24h
	add	sp,4h
	inc	word ptr [bp-2h]

l209F_025D:
	cmp	word ptr [bp-2h],28h
	jc	022Dh

l209F_0263:
	les	bx,[bp-6h]
	cmp	dword ptr es:[bx+4h],0h
	jnz	027Dh

l209F_026E:
	push	0h
	push	ds
	push	83A9h
	call	far 263Fh:043Fh
	add	sp,8h

l209F_027D:
	les	bx,[bp-6h]
	mov	ax,[bp+6h]
	mov	es:[bx+2h],ax
	mov	word ptr es:[bx+8h],0h
	mov	word ptr es:[bx+0Ah],0h
	mov	word ptr es:[bx+0Ch],0h
	mov	word ptr es:[bx],0h
	mov	dx,[bp-4h]
	mov	ax,[bp-6h]
	pop	si
	leave
	retf

;; fn209F_02A7: 209F:02A7
;;   Called from:
;;     0CE0:12E9 (in fn0CE0_08FC)
;;     1D10:032A (in fn1D10_02AE)
;;     1D10:065A (in fn1D10_02AE)
;;     1D10:0E46 (in fn1D10_09C2)
;;     1D10:0EBD (in fn1D10_0E66)
;;     1F0F:0337 (in fn1F0F_000F)
;;     209F:0931 (in fn209F_08D2)
fn209F_02A7 proc
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jz	02E2h

l209F_02B4:
	les	bx,[0A423h]
	mov	word ptr es:[bx+8h],0h
	mov	word ptr es:[bx+0Ah],0h
	mov	word ptr es:[bx+0Ch],0h
	mov	word ptr es:[bx],0h
	push	22740080h
	push	dword ptr es:[bx+4h]
	call	far 0800h:3556h
	add	sp,8h

l209F_02E2:
	retf

;; fn209F_02E3: 209F:02E3
;;   Called from:
;;     263F:025B (in fn263F_00A6)
;;     263F:0291 (in fn263F_00A6)
;;     263F:02B8 (in fn263F_00A6)
;;     263F:02DF (in fn263F_00A6)
fn209F_02E3 proc
	enter	0ACh,0h
	push	si
	push	8001h
	push	dword ptr [bp+6h]
	call	far 0800h:3615h
	add	sp,8h
	mov	[bp-6h],ax
	cmp	word ptr [bp-6h],0FFh
	jnz	030Fh

l209F_0303:
	push	dword ptr [bp+6h]
	call	far 263Fh:03F3h
	add	sp,4h

l209F_030F:
	push	9h
	call	far 0800h:1D38h
	add	sp,4h
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	or	ax,dx
	jnz	032Bh

l209F_0324:
	xor	dx,dx
	xor	ax,ax
	jmp	0497h

l209F_032B:
	push	2h
	push	0h
	push	word ptr [bp-6h]
	call	far 0800h:06ABh
	add	sp,8h
	les	bx,[bp-4h]
	mov	es:[bx],ax
	mov	word ptr [bp-8h],0h
	jmp	0362h

l209F_0348:
	mov	bx,[bp-8h]
	shl	bx,2h
	lea	ax,[bp+0FF54h]
	add	bx,ax
	mov	word ptr ss:[bx+2h],0h
	mov	word ptr ss:[bx],0h
	inc	word ptr [bp-8h]

l209F_0362:
	cmp	word ptr [bp-8h],28h
	jc	0348h

l209F_0368:
	mov	word ptr [bp-8h],0h
	jmp	0414h

l209F_0370:
	les	bx,[bp-4h]
	movsx	eax,word ptr es:[bx]
	push	eax
	call	far 0800h:1D38h
	add	sp,4h
	les	bx,[bp-4h]
	mov	es:[bx+4h],dx
	mov	es:[bx+2h],ax
	or	ax,dx
	jnz	0394h

l209F_0391:
	jmp	041Dh

l209F_0394:
	les	bx,[bp-4h]
	movzx	eax,word ptr es:[bx+4h]
	shl	eax,4h
	movzx	edx,word ptr es:[bx+2h]
	add	eax,edx
	mov	[bp-0Ch],eax
	sar	eax,10h
	mov	es:[bx+8h],al
	mov	ax,[bp-0Ch]
	mov	es:[bx+6h],ax
	mov	ax,0FFFFh
	sub	ax,es:[bx+6h]
	cmp	ax,es:[bx]
	jnc	03ECh

l209F_03C9:
	mov	bx,[bp-8h]
	shl	bx,2h
	lea	ax,[bp+0FF54h]
	add	bx,ax
	mov	si,[bp-4h]
	mov	ax,es:[si+4h]
	mov	dx,es:[si+2h]
	mov	ss:[bx+2h],ax
	mov	ss:[bx],dx
	inc	word ptr [bp-8h]
	jmp	0414h

l209F_03EC:
	push	0h
	push	0h
	push	word ptr [bp-6h]
	call	far 0800h:06ABh
	add	sp,8h
	les	bx,[bp-4h]
	push	word ptr es:[bx]
	push	dword ptr es:[bx+2h]
	push	word ptr [bp-6h]
	call	far 0800h:3C87h
	add	sp,8h
	jmp	041Dh

l209F_0414:
	cmp	word ptr [bp-8h],27h
	jnc	041Dh

l209F_041A:
	jmp	0370h

l209F_041D:
	mov	word ptr [bp-8h],0h
	jmp	0454h

l209F_0424:
	mov	bx,[bp-8h]
	shl	bx,2h
	lea	ax,[bp+0FF54h]
	add	bx,ax
	mov	ax,ss:[bx]
	or	ax,ss:[bx+2h]
	jz	045Ah

l209F_0439:
	mov	bx,[bp-8h]
	shl	bx,2h
	lea	ax,[bp+0FF54h]
	add	bx,ax
	push	dword ptr ss:[bx]
	call	far 0800h:1C24h
	add	sp,4h
	inc	word ptr [bp-8h]

l209F_0454:
	cmp	word ptr [bp-8h],28h
	jc	0424h

l209F_045A:
	push	word ptr [bp-6h]
	call	far 0800h:2A93h
	pop	cx
	les	bx,[bp-4h]
	cmp	dword ptr es:[bx+2h],0h
	jnz	0491h

l209F_046E:
	mov	al,[82E7h]
	cbw
	or	ax,ax
	jz	0479h

l209F_0476:
	jmp	0324h

l209F_0479:
	movsx	eax,word ptr es:[bx]
	push	eax
	push	ds
	push	83C1h
	call	far 263Fh:043Fh
	add	sp,8h
	jmp	0491h
209F:048E                                           E9 93               ..
209F:0490 FE                                              .              

l209F_0491:
	mov	dx,[bp-2h]
	mov	ax,[bp-4h]

l209F_0497:
	pop	si
	leave
	retf

;; fn209F_049A: 209F:049A
;;   Called from:
;;     1D10:0417 (in fn1D10_02AE)
;;     1D10:0E5C (in fn1D10_09C2)
;;     1D10:0F3A (in fn1D10_0E66)
;;     209F:0971 (in fn209F_08D2)
fn209F_049A proc
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jz	04CAh

l209F_04A7:
	push	2274h
	les	bx,[0A423h]
	mov	ax,es:[bx+0Fh]
	shr	ax,8h
	push	ax
	mov	al,es:[bx+0Fh]
	and	al,0FFh
	push	ax
	mov	al,es:[bx+0Eh]
	push	ax
	call	far 2057h:0283h
	add	sp,8h

l209F_04CA:
	retf

;; fn209F_04CB: 209F:04CB
;;   Called from:
;;     263F:0307 (in fn263F_00A6)
fn209F_04CB proc
	push	bp
	mov	bp,sp
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A183h]
	cbw
	or	ax,ax
	jnz	04E9h

l209F_04DC:
	les	bx,[bp+6h]
	sub	dword ptr es:[bx],2274h
	jmp	0511h

l209F_04E9:
	push	2274h
	push	cs
	call	0149h
	pop	cx
	mov	[0A425h],dx
	mov	[0A423h],ax
	or	ax,dx
	jnz	0500h

l209F_04FC:
	xor	ax,ax
	jmp	0514h

l209F_0500:
	les	bx,[0A423h]
	movsx	eax,word ptr es:[bx+2h]
	les	bx,[bp+6h]
	sub	es:[bx],eax

l209F_0511:
	mov	ax,1h

l209F_0514:
	pop	bp
	retf

;; fn209F_0516: 209F:0516
;;   Called from:
;;     1D10:0399 (in fn1D10_02AE)
;;     1D10:04FD (in fn1D10_02AE)
;;     1D10:05AB (in fn1D10_02AE)
;;     1D10:0DC5 (in fn1D10_09C2)
;;     1D10:0DED (in fn1D10_09C2)
;;     1D10:13E3 (in fn1D10_1368)
;;     1D10:173C (in fn1D10_155B)
;;     209F:0958 (in fn209F_08D2)
;;     209F:0983 (in fn209F_08D2)
;;     209F:09A4 (in fn209F_08D2)
fn209F_0516 proc
	enter	6h,0h
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jnz	052Ah

l209F_0527:
	jmp	061Ah

l209F_052A:
	les	bx,[0A423h]
	mov	ax,es:[bx+2h]
	sub	ax,es:[bx+0Ch]
	cmp	ax,[bp+8h]
	jge	0541h

l209F_053B:
	mov	ax,[bp+8h]
	jmp	0630h

l209F_0541:
	les	bx,[0A423h]
	mov	ax,es:[bx]
	mov	[bp-6h],ax
	cmp	word ptr [bp-6h],0h
	jz	05AEh

l209F_0551:
	cmp	ax,[bp+8h]
	jl	0559h

l209F_0556:
	mov	ax,[bp+8h]

l209F_0559:
	mov	[bp-4h],ax
	push	word ptr [bp-4h]
	push	dword ptr [0A429h]
	les	bx,[0A423h]
	mov	ax,es:[bx+4h]
	push	bx
	push	es
	add	ax,es:[bx+8h]
	pop	es
	pop	bx
	push	word ptr es:[bx+6h]
	push	ax
	call	far 0800h:350Eh
	add	sp,0Ah
	les	bx,[0A423h]
	mov	ax,[bp-4h]
	add	es:[bx+8h],ax
	add	es:[bx+0Ch],ax
	sub	es:[bx],ax
	sub	[bp+8h],ax
	add	[0A429h],ax
	push	1h
	movsx	eax,word ptr [bp-4h]
	push	eax
	push	word ptr [bp+6h]
	call	far 0800h:06ABh
	add	sp,8h

l209F_05AE:
	cmp	word ptr [bp+8h],0h
	jz	05FDh

l209F_05B4:
	push	word ptr [bp+8h]
	les	bx,[0A423h]
	mov	ax,es:[bx+4h]
	push	bx
	push	es
	add	ax,es:[bx+8h]
	pop	es
	pop	bx
	push	word ptr es:[bx+6h]
	push	ax
	push	word ptr [bp+6h]
	call	far 0800h:3C87h
	add	sp,8h
	mov	[bp-2h],ax
	les	bx,[0A423h]
	mov	ax,es:[bx+8h]
	add	ax,[bp-2h]
	mov	es:[bx+8h],ax
	mov	ax,es:[bx+0Ch]
	add	ax,[bp-2h]
	mov	es:[bx+0Ch],ax
	mov	ax,[bp+8h]
	sub	ax,[bp-2h]
	mov	[bp+8h],ax

l209F_05FD:
	les	bx,[0A423h]
	mov	ax,es:[bx+8h]
	cmp	ax,es:[bx+2h]
	jge	060Eh

l209F_060B:
	jmp	053Bh

l209F_060E:
	mov	word ptr es:[bx+8h],0h
	jmp	053Bh
209F:0617                      E9 21 FF                          .!.     

l209F_061A:
	push	1h
	movsx	eax,word ptr [bp+8h]
	push	eax
	push	word ptr [bp+6h]
	call	far 0800h:06ABh
	add	sp,8h
	xor	ax,ax

l209F_0630:
	leave
	retf
209F:0632       55 8B EC B8 BA 28 8E C0 26 80 3E 83 A1 00   U....(..&.>...
209F:0640 75 03 E9 91 00 0E E8 5E FC C4 1E 23 A4 26 8B 47 u......^...#.&.G
209F:0650 02 C4 5E 06 26 3B 07 7C 3B 26 8B 07 BB B9 01 99 ..^.&;.|;&......
209F:0660 F7 FB 69 C0 B9 01 C4 1E 23 A4 26 89 47 0C 26 89 ..i.....#.&.G.&.
209F:0670 47 08 C4 5E 06 26 FF 37 66 26 FF 77 02 C4 1E 23 G..^.&.7f&.w...#
209F:0680 A4 66 26 FF 77 04 9A 0E 35 00 08 83 C4 0A 0E E8 .f&.w...5.......
209F:0690 08 FE EB 42 C4 5E 06 26 8B 07 BB B9 01 99 F7 FB ...B.^.&........
209F:06A0 69 C0 B9 01 05 47 FE C4 1E 23 A4 26 89 47 0C 26 i....G...#.&.G.&
209F:06B0 8B 47 0C 05 B9 01 50 C4 5E 06 26 8B 47 06 C1 F8 .G....P.^.&.G...
209F:06C0 08 50 26 8A 47 06 24 FF 50 26 8A 47 08 50 9A 83 .P&.G.$.P&.G.P..
209F:06D0 02 57 20 83 C4 08 5D CB                         .W ...].       

;; fn209F_06D8: 209F:06D8
;;   Called from:
;;     1D10:0434 (in fn1D10_02AE)
;;     1D10:045F (in fn1D10_02AE)
;;     1D10:0EDA (in fn1D10_0E66)
fn209F_06D8 proc
	enter	0Ch,0h
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jnz	06ECh

l209F_06E9:
	jmp	08D0h

l209F_06EC:
	les	bx,[0A423h]
	mov	ax,es:[bx+8h]
	mov	[bp-6h],ax
	call	far 2057h:041Eh
	les	bx,[0A423h]
	sub	ax,es:[bx+0Fh]
	mov	[bp-8h],ax
	cmp	word ptr [bp-8h],0h
	jl	0716h

l209F_070D:
	mov	ax,es:[bx+2h]
	cmp	ax,[bp-8h]
	jg	071Bh

l209F_0716:
	mov	word ptr [bp-8h],0h

l209F_071B:
	les	bx,[0A423h]
	cmp	word ptr es:[bx+0Ch],1B9h
	jg	073Fh

l209F_0727:
	les	bx,[bp+6h]
	mov	ax,es:[bx]
	les	bx,[0A423h]
	mov	es:[bx],ax
	les	bx,[bp+6h]
	mov	eax,es:[bx+2h]
	jmp	08CCh

l209F_073F:
	mov	ax,[bp-8h]
	mov	[bp-0Ah],ax
	cmp	word ptr [bp-0Ah],2274h
	jl	0751h

l209F_074C:
	mov	word ptr [bp-0Ah],0h

l209F_0751:
	mov	ax,[bp-6h]
	cmp	ax,[bp-0Ah]
	jl	07D6h

l209F_0759:
	sub	ax,[bp-0Ah]
	mov	[bp-0Ch],ax
	les	bx,[bp+6h]
	mov	ax,es:[bx]
	cmp	ax,[bp-0Ch]
	jg	078Bh

l209F_076A:
	push	ax
	push	dword ptr es:[bx+2h]
	les	bx,[0A423h]
	mov	ax,es:[bx+4h]
	add	ax,[bp-0Ah]
	push	word ptr es:[bx+6h]
	push	ax
	call	far 0800h:350Eh
	add	sp,0Ah
	jmp	08D0h

l209F_078B:
	push	word ptr [bp-0Ch]
	les	bx,[bp+6h]
	push	dword ptr es:[bx+2h]
	les	bx,[0A423h]
	mov	ax,es:[bx+4h]
	add	ax,[bp-0Ah]
	push	word ptr es:[bx+6h]
	push	ax
	call	far 0800h:350Eh
	add	sp,0Ah
	les	bx,[bp+6h]
	mov	ax,es:[bx]
	sub	ax,[bp-0Ch]
	les	bx,[0A423h]
	mov	es:[bx],ax
	les	bx,[bp+6h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+2h]
	add	dx,[bp-0Ch]
	mov	[0A42Bh],ax
	mov	[0A429h],dx
	jmp	08D0h

l209F_07D6:
	mov	ax,2274h
	sub	ax,[bp-0Ah]
	mov	[bp-0Ch],ax
	les	bx,[bp+6h]
	mov	ax,es:[bx]
	cmp	ax,[bp-0Ch]
	jg	080Bh

l209F_07EA:
	push	ax
	push	dword ptr es:[bx+2h]
	les	bx,[0A423h]
	mov	ax,es:[bx+4h]
	add	ax,[bp-0Ah]
	push	word ptr es:[bx+6h]
	push	ax
	call	far 0800h:350Eh
	add	sp,0Ah
	jmp	08D0h

l209F_080B:
	les	bx,[bp+6h]
	mov	eax,es:[bx+2h]
	mov	[bp-4h],eax
	push	word ptr [bp-0Ch]
	push	dword ptr [bp-4h]
	les	bx,[0A423h]
	mov	ax,es:[bx+4h]
	add	ax,[bp-0Ah]
	push	word ptr es:[bx+6h]
	push	ax
	call	far 0800h:350Eh
	add	sp,0Ah
	les	bx,[bp+6h]
	mov	ax,es:[bx]
	sub	ax,[bp-0Ch]
	les	bx,[0A423h]
	mov	es:[bx],ax
	les	bx,[bp+6h]
	mov	ax,es:[bx+4h]
	mov	dx,es:[bx+2h]
	add	dx,[bp-0Ch]
	mov	[0A42Bh],ax
	mov	[0A429h],dx
	mov	ax,[bp-0Ch]
	add	[bp-4h],ax
	mov	word ptr [bp-0Ah],0h
	mov	ax,[bp-6h]
	mov	[bp-0Ch],ax
	les	bx,[0A423h]
	mov	ax,es:[bx]
	cmp	ax,[bp-0Ch]
	jg	089Ch

l209F_0878:
	push	ax
	push	dword ptr [bp-4h]
	mov	ax,es:[bx+4h]
	add	ax,[bp-0Ah]
	push	word ptr es:[bx+6h]
	push	ax
	call	far 0800h:350Eh
	add	sp,0Ah
	les	bx,[0A423h]
	mov	word ptr es:[bx],0h
	jmp	08D0h

l209F_089C:
	push	word ptr [bp-0Ch]
	push	dword ptr [bp-4h]
	les	bx,[0A423h]
	mov	ax,es:[bx+4h]
	add	ax,[bp-0Ah]
	push	word ptr es:[bx+6h]
	push	ax
	call	far 0800h:350Eh
	add	sp,0Ah
	mov	ax,[bp-0Ch]
	add	[bp-4h],ax
	les	bx,[0A423h]
	sub	es:[bx],ax
	mov	eax,[bp-4h]

l209F_08CC:
	mov	[0A429h],eax

l209F_08D0:
	leave
	retf

;; fn209F_08D2: 209F:08D2
;;   Called from:
;;     0CE0:0167 (in fn0CE0_014B)
;;     1F0F:0CDD (in fn1F0F_0BF7)
;;     1F0F:0D6E (in fn1F0F_0BF7)
;;     1F0F:0E08 (in fn1F0F_0BF7)
;;     1F0F:0E6B (in fn1F0F_0BF7)
;;     1F0F:0EF4 (in fn1F0F_0BF7)
;;     1F0F:0F57 (in fn1F0F_0BF7)
;;     1F0F:0FD5 (in fn1F0F_0BF7)
;;     226D:07CD (in fn226D_0656)
;;     226D:09C9 (in fn226D_0656)
;;     226D:0A1E (in fn226D_0656)
;;     226D:0A99 (in fn226D_0656)
;;     226D:0B53 (in fn226D_0656)
fn209F_08D2 proc
	enter	0Eh,0h
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A183h]
	cbw
	or	ax,ax
	jnz	08E7h

l209F_08E4:
	jmp	0A22h

l209F_08E7:
	push	8001h
	push	dword ptr [bp+6h]
	call	far 0800h:3615h
	add	sp,8h
	mov	[bp-4h],ax
	cmp	word ptr [bp-4h],0FFh
	jnz	0905h

l209F_0902:
	jmp	09C8h

l209F_0905:
	push	2h
	push	0h
	push	ax
	call	far 0800h:06ABh
	push	dx
	push	ax
	pop	eax
	add	sp,8h
	mov	[bp-8h],eax
	push	0h
	push	0h
	push	word ptr [bp-4h]
	call	far 0800h:06ABh
	add	sp,8h
	mov	ax,[bp-8h]
	mov	[bp-0Eh],ax
	push	cs
	call	02A7h
	les	bx,[0A423h]
	mov	ax,es:[bx+2h]
	cmp	ax,[bp-0Eh]
	jle	0947h

l209F_0942:
	mov	ax,[bp-0Eh]
	jmp	094Fh

l209F_0947:
	les	bx,[0A423h]
	mov	ax,es:[bx+2h]

l209F_094F:
	mov	[bp-0Ah],ax
	push	word ptr [bp-0Ah]
	push	word ptr [bp-4h]
	push	cs
	call	0516h
	add	sp,4h
	mov	[bp-0Ch],ax
	mov	ax,[bp-0Ah]
	sub	ax,[bp-0Ch]
	sub	[bp-0Eh],ax
	mov	ax,[bp-0Ch]
	mov	[bp-0Ah],ax
	push	cs
	call	049Ah
	jmp	09B7h

l209F_0977:
	cmp	word ptr [bp-0Ah],0h
	jz	099Eh

l209F_097D:
	push	word ptr [bp-0Ah]
	push	word ptr [bp-4h]
	push	cs
	call	0516h
	add	sp,4h
	mov	[bp-0Ch],ax
	mov	ax,[bp-0Ah]
	sub	ax,[bp-0Ch]
	sub	[bp-0Eh],ax
	mov	ax,[bp-0Ch]
	mov	[bp-0Ah],ax
	jmp	09B7h

l209F_099E:
	push	1B9h
	push	word ptr [bp-4h]
	push	cs
	call	0516h
	add	sp,4h
	mov	[bp-0Ah],ax
	mov	ax,1B9h
	sub	ax,[bp-0Ah]
	sub	[bp-0Eh],ax

l209F_09B7:
	cmp	word ptr [bp-0Eh],0h
	jnz	0977h

l209F_09BD:
	push	word ptr [bp-4h]
	call	far 0800h:2A93h
	pop	cx
	jmp	09D4h

l209F_09C8:
	push	dword ptr [bp+6h]
	call	far 263Fh:03F3h
	add	sp,4h

l209F_09D4:
	les	bx,[0A423h]
	mov	ax,es:[bx+8h]
	mov	[bp-2h],ax
	mov	ax,2274h
	sub	ax,[bp-2h]
	cmp	ax,1B9h
	jl	09FEh

l209F_09EA:
	push	1B90080h
	mov	ax,es:[bx+4h]
	add	ax,[bp-2h]
	push	word ptr es:[bx+6h]
	push	ax
	jmp	0A0Dh

l209F_09FE:
	push	1B90080h
	les	bx,[0A423h]
	push	dword ptr es:[bx+4h]

l209F_0A0D:
	call	far 0800h:3556h
	add	sp,8h
	cmp	byte ptr [bp+0Ah],0h
	jz	0A22h

l209F_0A1B:
	cmp	byte ptr [0A422h],1h
