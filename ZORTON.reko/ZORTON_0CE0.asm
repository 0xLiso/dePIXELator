;;; Segment 0CE0 (0CE0:0000)
0CE0:0000 93 2A 00 08 59 C9 CB                            .*..Y..        

;; fn0CE0_0007: 0CE0:0007
;;   Called from:
;;     0CE0:09AC (in fn0CE0_08FC)
fn0CE0_0007 proc
	enter	0Ah,0h
	mov	dword ptr [bp-0Ah],2044h
	push	8001h
	push	ds
	push	51Eh
	call	far 0800h:3615h
	add	sp,6h
	mov	[bp-2h],ax
	cmp	word ptr [bp-2h],0FFh
	jnz	0037h

l0CE0_002B:
	push	ds
	push	51Eh
	call	far 263Fh:03F3h
	add	sp,4h

l0CE0_0037:
	push	0h
	push	4h
	push	word ptr [bp-2h]
	call	far 0800h:06ABh
	add	sp,8h
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[0A0CCh]
	mov	[bp-6h],eax
	push	0FA00h
	push	dword ptr [bp-6h]
	push	word ptr [bp-2h]
	call	far 0800h:3C87h
	add	sp,8h
	push	word ptr [bp-2h]
	call	far 0800h:2A93h
	pop	cx
	push	ss
	lea	ax,[bp-0Ah]
	push	ax
	push	ds
	push	52Ah
	push	28BAh
	push	0A0B8h
	push	ds
	push	52Ah
	call	far 263Fh:033Eh
	add	sp,10h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A0B8h]
	add	ax,2h
	push	word ptr es:[0A0BAh]
	push	ax
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[0A0B8h]
	mov	al,es:[bx+1h]
	mov	ah,0h
	dec	ax
	push	ax
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[0A0BAh]
	mov	al,es:[bx]
	mov	ah,0h
	push	ax
	call	far 2476h:043Bh
	add	sp,8h
	push	ss
	lea	ax,[bp-0Ah]
	push	ax
	push	ds
	push	535h
	push	28BAh
	push	9FA8h
	push	ds
	push	535h
	call	far 263Fh:033Eh
	add	sp,10h
	push	ss
	lea	ax,[bp-0Ah]
	push	ax
	push	ds
	push	540h
	push	ds
	push	9BE2h
	push	ds
	push	540h
	call	far 263Fh:033Eh
	add	sp,10h
	leave
	retf
0CE0:00FD                                        C8 04 00              ...
0CE0:0100 00 B8 BA 28 8E C0 26 A1 24 A5 05 C9 FF 89 46 FE ...(..&.$.....F.
0CE0:0110 BB 46 00 99 F7 FB 89 46 FE FF 46 FE B8 BA 28 8E .F.....F..F...(.
0CE0:0120 C0 26 A1 26 A5 05 ED FF 89 46 FC BB 36 00 99 F7 .&.&.....F..6...
0CE0:0130 FB 89 46 FC FF 46 FC 8B 46 FC 6B C0 05 03 46 FE ..F..F..F.k...F.
0CE0:0140 BA BA 28 8E C2 26 A3 1F 2F C9 CB                ..(..&../..    

;; fn0CE0_014B: 0CE0:014B
;;   Called from:
;;     0CE0:017C (in fn0CE0_0170)
;;     0CE0:024A (in fn0CE0_023E)
;;     0CE0:0318 (in fn0CE0_030C)
;;     0CE0:03E0 (in fn0CE0_03D4)
fn0CE0_014B proc
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[0A184h],1h
	jz	0161h

l0CE0_0159:
	push	0h
	push	ds
	push	54Ch
	jmp	0167h

l0CE0_0161:
	push	0h
	push	ds
	push	557h

l0CE0_0167:
	call	far 209Fh:08D2h
	add	sp,6h
	retf

;; fn0CE0_0170: 0CE0:0170
;;   Called from:
;;     0CE0:0D12 (in fn0CE0_08FC)
fn0CE0_0170 proc
	enter	2h,0h
	push	si
	cli
	call	far 2425h:01E8h
	sti
	push	cs
	call	014Bh
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	les	bx,[bp+6h]
	add	bx,ax
	mov	ax,es:[bx+2h]
	mov	dx,es:[bx]
	mov	bx,[bp+0Ah]
	add	bx,0FBh
	imul	bx,bx,6h
	mov	si,[bp+6h]
	add	si,bx
	mov	es:[si+2h],ax
	mov	es:[si],dx
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	word ptr es:[bx+2h],0h
	mov	word ptr es:[bx],0h
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	ax,es:[bx+4h]
	mov	dx,[bp+0Ah]
	add	dx,0FBh
	imul	dx,dx,6h
	mov	bx,[bp+6h]
	add	bx,dx
	mov	es:[bx+4h],ax
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	word ptr es:[bx+4h],0h
	mov	word ptr [bp-2h],0h
	jmp	022Eh

l0CE0_01F6:
	mov	ax,[bp+0Ah]
	add	ax,0FFFBh
	imul	ax,ax,6h
	les	bx,[bp+6h]
	add	bx,ax
	les	bx,es:[bx]
	sub	word ptr es:[bx+6h],12h
	push	dword ptr [bp+0Ch]
	call	far 1744h:044Dh
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A882h]
	call	far 16CCh:04CAh
	add	sp,4h
	inc	word ptr [bp-2h]

l0CE0_022E:
	cmp	word ptr [bp-2h],3h
	jc	01F6h

l0CE0_0234:
	cli
	call	far 2425h:0286h
	sti
	pop	si
	leave
	retf

;; fn0CE0_023E: 0CE0:023E
;;   Called from:
;;     0CE0:0DBA (in fn0CE0_08FC)
fn0CE0_023E proc
	enter	2h,0h
	push	si
	cli
	call	far 2425h:01E8h
	sti
	push	cs
	call	014Bh
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	les	bx,[bp+6h]
	add	bx,ax
	mov	ax,es:[bx+2h]
	mov	dx,es:[bx]
	mov	bx,[bp+0Ah]
	add	bx,5h
	imul	bx,bx,6h
	mov	si,[bp+6h]
	add	si,bx
	mov	es:[si+2h],ax
	mov	es:[si],dx
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	word ptr es:[bx+2h],0h
	mov	word ptr es:[bx],0h
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	ax,es:[bx+4h]
	mov	dx,[bp+0Ah]
	add	dx,5h
	imul	dx,dx,6h
	mov	bx,[bp+6h]
	add	bx,dx
	mov	es:[bx+4h],ax
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	word ptr es:[bx+4h],0h
	mov	word ptr [bp-2h],0h
	jmp	02FCh

l0CE0_02C4:
	mov	ax,[bp+0Ah]
	add	ax,5h
	imul	ax,ax,6h
	les	bx,[bp+6h]
	add	bx,ax
	les	bx,es:[bx]
	add	word ptr es:[bx+6h],12h
	push	dword ptr [bp+0Ch]
	call	far 1744h:044Dh
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A882h]
	call	far 16CCh:04CAh
	add	sp,4h
	inc	word ptr [bp-2h]

l0CE0_02FC:
	cmp	word ptr [bp-2h],3h
	jc	02C4h

l0CE0_0302:
	cli
	call	far 2425h:0286h
	sti
	pop	si
	leave
	retf

;; fn0CE0_030C: 0CE0:030C
;;   Called from:
;;     0CE0:0D4A (in fn0CE0_08FC)
fn0CE0_030C proc
	enter	2h,0h
	push	si
	cli
	call	far 2425h:01E8h
	sti
	push	cs
	call	014Bh
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	les	bx,[bp+6h]
	add	bx,ax
	mov	ax,es:[bx+2h]
	mov	dx,es:[bx]
	mov	bx,[bp+0Ah]
	dec	bx
	imul	bx,bx,6h
	mov	si,[bp+6h]
	add	si,bx
	mov	es:[si+2h],ax
	mov	es:[si],dx
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	word ptr es:[bx+2h],0h
	mov	word ptr es:[bx],0h
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	ax,es:[bx+4h]
	mov	dx,[bp+0Ah]
	dec	dx
	imul	dx,dx,6h
	mov	bx,[bp+6h]
	add	bx,dx
	mov	es:[bx+4h],ax
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	word ptr es:[bx+4h],0h
	mov	word ptr [bp-2h],0h
	jmp	03C4h

l0CE0_038E:
	mov	ax,[bp+0Ah]
	dec	ax
	imul	ax,ax,6h
	les	bx,[bp+6h]
	add	bx,ax
	les	bx,es:[bx]
	sub	word ptr es:[bx+4h],0Eh
	push	dword ptr [bp+0Ch]
	call	far 1744h:044Dh
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A882h]
	call	far 16CCh:04CAh
	add	sp,4h
	inc	word ptr [bp-2h]

l0CE0_03C4:
	cmp	word ptr [bp-2h],5h
	jc	038Eh

l0CE0_03CA:
	cli
	call	far 2425h:0286h
	sti
	pop	si
	leave
	retf

;; fn0CE0_03D4: 0CE0:03D4
;;   Called from:
;;     0CE0:0D81 (in fn0CE0_08FC)
fn0CE0_03D4 proc
	enter	2h,0h
	push	si
	cli
	call	far 2425h:01E8h
	sti
	push	cs
	call	014Bh
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	les	bx,[bp+6h]
	add	bx,ax
	mov	ax,es:[bx+2h]
	mov	dx,es:[bx]
	mov	bx,[bp+0Ah]
	inc	bx
	imul	bx,bx,6h
	mov	si,[bp+6h]
	add	si,bx
	mov	es:[si+2h],ax
	mov	es:[si],dx
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	word ptr es:[bx+2h],0h
	mov	word ptr es:[bx],0h
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	ax,es:[bx+4h]
	mov	dx,[bp+0Ah]
	inc	dx
	imul	dx,dx,6h
	mov	bx,[bp+6h]
	add	bx,dx
	mov	es:[bx+4h],ax
	mov	ax,[bp+0Ah]
	imul	ax,ax,6h
	mov	bx,[bp+6h]
	add	bx,ax
	mov	word ptr es:[bx+4h],0h
	mov	word ptr [bp-2h],0h
	jmp	048Ch

l0CE0_0456:
	mov	ax,[bp+0Ah]
	inc	ax
	imul	ax,ax,6h
	les	bx,[bp+6h]
	add	bx,ax
	les	bx,es:[bx]
	add	word ptr es:[bx+4h],0Eh
	push	dword ptr [bp+0Ch]
	call	far 1744h:044Dh
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A882h]
	call	far 16CCh:04CAh
	add	sp,4h
	inc	word ptr [bp-2h]

l0CE0_048C:
	cmp	word ptr [bp-2h],5h
	jc	0456h

l0CE0_0492:
	cli
	call	far 2425h:0286h
	sti
	pop	si
	leave
	retf
0CE0:049C                                     C8 08 00 00             ....
0CE0:04A0 C7 46 FC 00 00 BA DA 03 EC A8 08 74 F8 C7 46 FE .F.........t..F.
0CE0:04B0 01 00 E9 83 00 BA C7 03 8A 46 FE EE BA C9 03 EC .........F......
0CE0:04C0 24 3F 88 46 FB EC 24 3F 88 46 FA EC 24 3F 88 46 $?.F..$?.F..$?.F
0CE0:04D0 F9 8A 46 FB B4 00 25 3F 00 3D 3F 00 74 0D C7 46 ..F...%?.=?.t..F
0CE0:04E0 FC 01 00 8A 46 FB FE C0 88 46 FB 8A 46 FA B4 00 ....F....F..F...
0CE0:04F0 25 3F 00 3D 3F 00 74 0D C7 46 FC 01 00 8A 46 FA %?.=?.t..F....F.
0CE0:0500 FE C0 88 46 FA 8A 46 F9 B4 00 25 3F 00 3D 3F 00 ...F..F...%?.=?.
0CE0:0510 74 0D C7 46 FC 01 00 8A 46 F9 FE C0 88 46 F9 BA t..F....F....F..
0CE0:0520 C8 03 8A 46 FE EE BA C9 03 8A 46 FB EE 8A 46 FA ...F......F...F.
0CE0:0530 EE 8A 46 F9 EE FF 46 FE 81 7E FE C1 00 7D 03 E9 ..F...F..~...}..
0CE0:0540 73 FF 8B 46 FC C9 CB                            s..F...        

;; fn0CE0_0547: 0CE0:0547
;;   Called from:
;;     0CE0:0EF1 (in fn0CE0_08FC)
fn0CE0_0547 proc
	enter	0Ah,0h
	mov	word ptr [bp-4h],0h

l0CE0_0550:
	mov	dx,3DAh
	in	al,dx
	test	al,8h
	jz	0550h

l0CE0_0558:
	mov	word ptr [bp-2h],1h
	jmp	05ECh

l0CE0_0560:
	mov	dx,3C7h
	mov	al,[bp-2h]
	out	dx,al
	mov	dx,3C9h
	in	al,dx
	mov	ah,0h
	and	ax,3Fh
	mov	[bp-6h],ax
	in	al,dx
	mov	ah,0h
	and	ax,3Fh
	mov	[bp-8h],ax
	in	al,dx
	mov	ah,0h
	and	ax,3Fh
	mov	[bp-0Ah],ax
	cmp	word ptr [bp-6h],0h
	jz	059Fh

l0CE0_058B:
	mov	word ptr [bp-4h],1h
	mov	ax,[bp-6h]
	imul	ax,ax,62h
	mov	bx,64h
	cwd
	idiv	bx
	mov	[bp-6h],ax

l0CE0_059F:
	cmp	word ptr [bp-8h],0h
	jz	05B9h

l0CE0_05A5:
	mov	word ptr [bp-4h],1h
	mov	ax,[bp-8h]
	imul	ax,ax,62h
	mov	bx,64h
	cwd
	idiv	bx
	mov	[bp-8h],ax

l0CE0_05B9:
	cmp	word ptr [bp-0Ah],0h
	jz	05D3h

l0CE0_05BF:
	mov	word ptr [bp-4h],1h
	mov	ax,[bp-0Ah]
	imul	ax,ax,62h
	mov	bx,64h
	cwd
	idiv	bx
	mov	[bp-0Ah],ax

l0CE0_05D3:
	mov	dx,3C8h
	mov	al,[bp-2h]
	out	dx,al
	mov	dx,3C9h
	mov	al,[bp-6h]
	out	dx,al
	mov	al,[bp-8h]
	out	dx,al
	mov	al,[bp-0Ah]
	out	dx,al
	inc	word ptr [bp-2h]

l0CE0_05EC:
	cmp	word ptr [bp-2h],0C1h
	jge	05F6h

l0CE0_05F3:
	jmp	0560h

l0CE0_05F6:
	mov	ax,[bp-4h]
	leave
	retf

;; fn0CE0_05FB: 0CE0:05FB
;;   Called from:
;;     0CE0:101D (in fn0CE0_08FC)
fn0CE0_05FB proc
	enter	16h,0h
	cmp	dword ptr [050Dh],0h
	jz	060Ah

l0CE0_0607:
	jmp	06A0h

l0CE0_060A:
	mov	word ptr [9BEEh],0h
	push	243h
	call	far 0800h:1D38h
	add	sp,4h
	mov	[050Fh],dx
	mov	[050Dh],ax
	cmp	dword ptr [050Dh],0h
	jnz	063Fh

l0CE0_062D:
	push	300h
	push	ds
	push	562h
	call	far 263Fh:043Fh
	add	sp,8h

l0CE0_063F:
	mov	word ptr [bp-2h],0h
	jmp	0699h

l0CE0_0646:
	mov	dx,3C7h
	mov	al,[bp-2h]
	out	dx,al
	mov	dx,3C9h
	in	al,dx
	mov	ah,0h
	mov	[bp-6h],ax
	in	al,dx
	mov	ah,0h
	mov	[bp-8h],ax
	in	al,dx
	mov	ah,0h
	mov	[bp-0Ah],ax
	mov	ax,[bp-2h]
	imul	ax,ax,3h
	les	bx,[050Dh]
	add	bx,ax
	mov	al,[bp-6h]
	mov	es:[bx],al
	mov	bx,[bp-2h]
	imul	bx,bx,3h
	add	bx,[050Dh]
	mov	al,[bp-8h]
	mov	es:[bx+1h],al
	mov	bx,[bp-2h]
	imul	bx,bx,3h
	add	bx,[050Dh]
	mov	al,[bp-0Ah]
	mov	es:[bx+2h],al
	inc	word ptr [bp-2h]

l0CE0_0699:
	cmp	word ptr [bp-2h],0C1h
	jl	0646h

l0CE0_06A0:
	mov	word ptr [bp-4h],0h

l0CE0_06A5:
	mov	dx,3DAh
	in	al,dx
	test	al,8h
	jz	06A5h

l0CE0_06AD:
	mov	word ptr [bp-2h],1h
	jmp	08CDh

l0CE0_06B5:
	mov	dx,3C7h
	mov	al,[bp-2h]
	out	dx,al
	mov	dx,3C9h
	in	al,dx
	mov	ah,0h
	mov	[bp-6h],ax
	in	al,dx
	mov	ah,0h
	mov	[bp-8h],ax
	in	al,dx
	mov	ah,0h
	mov	[bp-0Ah],ax
	mov	ax,[bp-2h]
	imul	ax,ax,3h
	les	bx,[050Dh]
	add	bx,ax
	mov	al,es:[bx]
	mov	ah,0h
	mov	[bp-12h],ax
	mov	bx,[bp-2h]
	imul	bx,bx,3h
	add	bx,[050Dh]
	mov	al,es:[bx+1h]
	mov	ah,0h
	mov	[bp-14h],ax
	mov	bx,[bp-2h]
	imul	bx,bx,3h
	add	bx,[050Dh]
	mov	al,es:[bx+2h]
	mov	ah,0h
	mov	[bp-16h],ax
	mov	ax,[bp-2h]
	imul	ax,ax,3h
	mov	dx,28BAh
	mov	es,dx
	mov	dx,es:[0A0BAh]
	add	ax,es:[0A0B8h]
	mov	bx,ax
	mov	es,dx
	mov	al,es:[bx-1h]
	mov	ah,0h
	and	ax,3Fh
	mov	[bp-0Ch],ax
	mov	ax,[bp-2h]
	imul	ax,ax,3h
	mov	dx,28BAh
	mov	es,dx
	les	bx,es:[0A0B8h]
	add	bx,ax
	mov	al,es:[bx]
	mov	ah,0h
	and	ax,3Fh
	mov	[bp-0Eh],ax
	mov	ax,[bp-2h]
	imul	ax,ax,3h
	mov	es,dx
	mov	dx,es:[0A0BAh]
	add	ax,es:[0A0B8h]
	mov	bx,ax
	mov	es,dx
	mov	al,es:[bx+1h]
	mov	ah,0h
	and	ax,3Fh
	mov	[bp-10h],ax
	mov	ax,[bp-6h]
	cmp	ax,[bp-0Ch]
	jle	07A2h

l0CE0_0777:
	mov	word ptr [bp-4h],1h
	movsx	eax,word ptr [9BEEh]
	mov	dx,[bp-12h]
	sub	dx,[bp-0Ch]
	movsx	edx,dx
	imul	eax,edx
	mov	ebx,32h
	cdq
	idiv	ebx
	mov	dx,[bp-12h]
	sub	dx,ax
	jmp	07D3h

l0CE0_07A2:
	mov	ax,[bp-6h]
	cmp	ax,[bp-0Ch]
	jge	07D6h

l0CE0_07AA:
	mov	word ptr [bp-4h],1h
	movsx	eax,word ptr [9BEEh]
	mov	dx,[bp-0Ch]
	sub	dx,[bp-12h]
	movsx	edx,dx
	imul	eax,edx
	mov	ebx,32h
	cdq
	idiv	ebx
	mov	dx,[bp-12h]
	add	dx,ax

l0CE0_07D3:
	mov	[bp-6h],dx

l0CE0_07D6:
	mov	ax,[bp-8h]
	cmp	ax,[bp-0Eh]
	jle	0809h

l0CE0_07DE:
	mov	word ptr [bp-4h],1h
	movsx	eax,word ptr [9BEEh]
	mov	dx,[bp-14h]
	sub	dx,[bp-0Eh]
	movsx	edx,dx
	imul	eax,edx
	mov	ebx,32h
	cdq
	idiv	ebx
	mov	dx,[bp-14h]
	sub	dx,ax
	jmp	083Ah

l0CE0_0809:
	mov	ax,[bp-8h]
	cmp	ax,[bp-0Eh]
	jge	083Dh

l0CE0_0811:
	mov	word ptr [bp-4h],1h
	movsx	eax,word ptr [9BEEh]
	mov	dx,[bp-0Eh]
	sub	dx,[bp-14h]
	movsx	edx,dx
	imul	eax,edx
	mov	ebx,32h
	cdq
	idiv	ebx
	mov	dx,[bp-14h]
	add	dx,ax

l0CE0_083A:
	mov	[bp-8h],dx

l0CE0_083D:
	mov	ax,[bp-0Ah]
	cmp	ax,[bp-10h]
	jle	0870h

l0CE0_0845:
	mov	word ptr [bp-4h],1h
	movsx	eax,word ptr [9BEEh]
	mov	dx,[bp-16h]
	sub	dx,[bp-10h]
	movsx	edx,dx
	imul	eax,edx
	mov	ebx,32h
	cdq
	idiv	ebx
	mov	dx,[bp-16h]
	sub	dx,ax
	jmp	08A1h

l0CE0_0870:
	mov	ax,[bp-0Ah]
	cmp	ax,[bp-10h]
	jge	08A4h

l0CE0_0878:
	mov	word ptr [bp-4h],1h
	movsx	eax,word ptr [9BEEh]
	mov	dx,[bp-10h]
	sub	dx,[bp-16h]
	movsx	edx,dx
	imul	eax,edx
	mov	ebx,32h
	cdq
	idiv	ebx
	mov	dx,[bp-16h]
	add	dx,ax

l0CE0_08A1:
	mov	[bp-0Ah],dx

l0CE0_08A4:
	mov	dx,3C8h
	mov	al,[bp-2h]
	out	dx,al
	mov	dx,3C9h
	mov	al,[bp-6h]
	out	dx,al
	mov	al,[bp-8h]
	out	dx,al
	mov	al,[bp-0Ah]
	out	dx,al
	call	far 0800h:2390h
	or	ax,ax
	jz	08CAh

l0CE0_08C3:
	call	far 0800h:20A6h
	jmp	08D7h

l0CE0_08CA:
	inc	word ptr [bp-2h]

l0CE0_08CD:
	cmp	word ptr [bp-2h],0C1h
	jge	08D7h

l0CE0_08D4:
	jmp	06B5h

l0CE0_08D7:
	cmp	word ptr [bp-4h],0h
	jnz	08F3h

l0CE0_08DD:
	push	dword ptr [050Dh]
	call	far 0800h:1C24h
	add	sp,4h
	mov	dword ptr [050Dh],0h

l0CE0_08F3:
	inc	word ptr [9BEEh]
	mov	ax,[bp-4h]
	leave
	retf

;; fn0CE0_08FC: 0CE0:08FC
;;   Called from:
;;     1F0F:03B3 (in fn1F0F_000F)
;;     226D:03C7 (in fn226D_00F9)
fn0CE0_08FC proc
	enter	0F2h,0h
	lea	ax,[bp+0FF0Eh]
	push	ss
	push	ax
	push	ds
	push	511h
	mov	cx,0Dh
	call	far 0800h:03F4h
	mov	ax,2862h
	mov	es,ax
	test	byte ptr es:[0000h],1h
	jz	0924h

l0CE0_091F:
	xor	ax,ax
	jmp	130Ah

l0CE0_0924:
	cli
	call	far 2425h:01E8h
	sti

l0CE0_092B:
	call	far 2331h:0167h
	or	ax,dx
	jnz	092Bh

l0CE0_0934:
	mov	ax,28BAh
	mov	es,ax
	mov	dword ptr es:[302Ch],0h
	mov	ax,2862h
	mov	es,ax
	mov	al,es:[0000h]
	mov	ah,0h
	mov	[bp-2Ah],ax
	mov	ax,2862h
	mov	es,ax
	or	byte ptr es:[0000h],20h
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[0A882h]
	mov	dx,28BAh
	mov	es,dx
	mov	es:[0A0CCh],eax
	push	3E80h
	call	far 0800h:1D38h
	add	sp,4h
	mov	bx,28BAh
	mov	es,bx
	mov	es:[0A0E6h],dx
	mov	es:[0A0E4h],ax
	or	ax,dx
	jnz	09A7h

l0CE0_0990:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A148h]
	push	ds
	push	576h
	call	far 263Fh:043Fh
	add	sp,8h

l0CE0_09A7:
	call	far 2476h:0282h
	push	cs
	call	0007h
	mov	eax,[9BE2h]
	mov	[bp+0FF1Ch],eax
	mov	ax,[9BE4h]
	mov	dx,[9BE2h]
	add	dx,0EC8h
	mov	[bp-6h],ax
	mov	[bp-8h],dx
	add	dx,0EC8h
	mov	[bp-0Ah],ax
	mov	[bp-0Ch],dx
	mov	eax,[bp-0Ch]
	mov	[bp+0FF20h],eax
	mov	ax,[bp-0Ah]
	add	dx,0EC8h
	mov	[bp-0Eh],ax
	mov	[bp-10h],dx
	mov	eax,[bp-10h]
	mov	[bp+0FF24h],eax
	mov	ax,[bp-0Eh]
	add	dx,0EC8h
	mov	[bp-12h],ax
	mov	[bp-14h],dx
	mov	eax,[bp-14h]
	mov	[bp+0FF28h],eax
	mov	ax,[bp-12h]
	add	dx,0EC8h
	mov	[bp-16h],ax
	mov	[bp-18h],dx
	mov	eax,[bp-18h]
	mov	[bp+0FF2Ch],eax
	mov	ax,[bp-16h]
	add	dx,0EC8h
	mov	[bp-1Ah],ax
	mov	[bp-1Ch],dx
	mov	eax,[bp-1Ch]
	mov	[bp+0FF30h],eax
	mov	ax,[bp-1Ah]
	add	dx,0EC8h
	mov	[bp-1Eh],ax
	mov	[bp-20h],dx
	mov	eax,[bp-20h]
	mov	[bp+0FF34h],eax
	mov	ax,[bp-1Eh]
	add	dx,0EC8h
	mov	[bp-22h],ax
	mov	[bp-24h],dx
	mov	eax,[bp-24h]
	mov	[bp+0FF38h],eax
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A147h],0h
	xor	ax,ax
	mov	dx,28BAh
	mov	es,dx
	mov	es:[9FE3h],al
	mov	dx,28BAh
	mov	es,dx
	mov	es:[2F1Eh],al
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A882h]
	call	far 1744h:000Ah
	add	sp,4h
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	mov	word ptr [bp-26h],0h
	jmp	0ACBh

l0CE0_0AA0:
	mov	bx,[bp-26h]
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	mov	word ptr ss:[bx+2h],0FFFFh
	mov	word ptr ss:[bx],0FFFFh
	mov	bx,[bp-26h]
	imul	bx,bx,6h
	lea	ax,[bp+0FF40h]
	add	bx,ax
	mov	word ptr ss:[bx],0h
	inc	word ptr [bp-26h]

l0CE0_0ACB:
	cmp	word ptr [bp-26h],19h
	jc	0AA0h

l0CE0_0AD1:
	mov	word ptr [bp-26h],0h
	jmp	0BA4h

l0CE0_0AD9:
	push	360047h
	push	240001h
	push	0h
	mov	bx,[bp-26h]
	shl	bx,3h
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[bx+3057h]
	mov	bx,[bp-26h]
	shl	bx,3h
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[bx+3055h]
	call	far 1744h:0972h
	add	sp,10h
	mov	bx,[bp-26h]
	shl	bx,3h
	mov	cx,28BAh
	mov	es,cx
	mov	bx,es:[bx+3053h]
	imul	bx,bx,6h
	lea	cx,[bp+0FF3Ch]
	add	bx,cx
	mov	ss:[bx+2h],dx
	mov	ss:[bx],ax
	mov	bx,[bp-26h]
	shl	bx,3h
	mov	ax,28BAh
	mov	es,ax
	mov	bx,es:[bx+3059h]
	shl	bx,2h
	lea	ax,[bp+0FF1Ch]
	add	bx,ax
	mov	ax,ss:[bx+2h]
	mov	dx,ss:[bx]
	mov	bx,[bp-26h]
	shl	bx,3h
	mov	cx,28BAh
	mov	es,cx
	mov	bx,es:[bx+3053h]
	imul	bx,bx,6h
	lea	cx,[bp+0FF3Ch]
	add	bx,cx
	les	bx,ss:[bx]
	mov	es:[bx+10h],ax
	mov	es:[bx+0Eh],dx
	mov	bx,[bp-26h]
	shl	bx,3h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[bx+3059h]
	inc	ax
	mov	bx,[bp-26h]
	shl	bx,3h
	mov	dx,28BAh
	mov	es,dx
	mov	bx,es:[bx+3053h]
	imul	bx,bx,6h
	lea	dx,[bp+0FF40h]
	add	bx,dx
	mov	ss:[bx],ax
	inc	word ptr [bp-26h]

l0CE0_0BA4:
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A18Ch]
	cmp	ax,[bp-26h]
	jbe	0BB5h

l0CE0_0BB2:
	jmp	0AD9h

l0CE0_0BB5:
	mov	dword ptr [bp+0FF66h],0h
	mov	word ptr [bp-26h],0h
	jmp	0C12h

l0CE0_0BC5:
	mov	bx,[bp-26h]
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	mov	ax,ss:[bx]
	or	ax,ss:[bx+2h]
	jz	0C0Fh

l0CE0_0BDA:
	mov	bx,[bp-26h]
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	cmp	word ptr ss:[bx+2h],0FFh
	jnz	0BF3h

l0CE0_0BED:
	cmp	word ptr ss:[bx],0FFh
	jz	0C0Fh

l0CE0_0BF3:
	push	dword ptr [bp-4h]
	mov	bx,[bp-26h]
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	push	dword ptr ss:[bx]
	call	far 1744h:005Bh
	add	sp,8h

l0CE0_0C0F:
	inc	word ptr [bp-26h]

l0CE0_0C12:
	cmp	word ptr [bp-26h],19h
	jc	0BC5h

l0CE0_0C18:
	cli
	call	far 2425h:01E8h
	sti
	mov	ax,28BAh
	mov	es,ax
	mov	es:[302Eh],ds
	mov	word ptr es:[302Ch],48Ah
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A882h]
	call	far 16CCh:0481h
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A0CCh]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A0E4h]
	call	far 18D5h:11FBh
	add	sp,8h
	push	dword ptr [bp-4h]
	call	far 1744h:044Dh
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A882h]
	call	far 1312h:1037h
	add	sp,4h
	cli
	call	far 2425h:0286h
	sti

l0CE0_0C87:
	cmp	word ptr [bp+6h],0h
	jnz	0C90h

l0CE0_0C8D:
	jmp	110Ch

l0CE0_0C90:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[2F1Fh],0h
	jnz	0CA0h

l0CE0_0C9D:
	jmp	110Ch

l0CE0_0CA0:
	mov	es,ax
	mov	bx,es:[2F1Fh]
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	mov	ax,ss:[bx]
	or	ax,ss:[bx+2h]
	jnz	0CBCh

l0CE0_0CB9:
	jmp	0DC1h

l0CE0_0CBC:
	mov	ax,28BAh
	mov	es,ax
	mov	bx,es:[2F1Fh]
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	cmp	word ptr ss:[bx+2h],0FFh
	jnz	0CDFh

l0CE0_0CD6:
	cmp	word ptr ss:[bx],0FFh
	jnz	0CDFh

l0CE0_0CDC:
	jmp	0DC1h

l0CE0_0CDF:
	mov	ax,28BAh
	mov	es,ax
	mov	bx,es:[2F1Fh]
	sub	bx,5h
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	mov	ax,ss:[bx]
	or	ax,ss:[bx+2h]
	jnz	0D19h

l0CE0_0CFE:
	push	dword ptr [bp-4h]
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[2F1Fh]
	push	ss
	lea	ax,[bp+0FF3Ch]
	push	ax
	push	cs
	call	0170h
	jmp	0DBEh

l0CE0_0D19:
	mov	ax,28BAh
	mov	es,ax
	mov	bx,es:[2F1Fh]
	dec	bx
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	mov	ax,ss:[bx]
	or	ax,ss:[bx+2h]
	jnz	0D50h

l0CE0_0D36:
	push	dword ptr [bp-4h]
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[2F1Fh]
	push	ss
	lea	ax,[bp+0FF3Ch]
	push	ax
	push	cs
	call	030Ch
	jmp	0DBEh

l0CE0_0D50:
	mov	ax,28BAh
	mov	es,ax
	mov	bx,es:[2F1Fh]
	inc	bx
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	mov	ax,ss:[bx]
	or	ax,ss:[bx+2h]
	jnz	0D87h

l0CE0_0D6D:
	push	dword ptr [bp-4h]
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[2F1Fh]
	push	ss
	lea	ax,[bp+0FF3Ch]
	push	ax
	push	cs
	call	03D4h
	jmp	0DBEh

l0CE0_0D87:
	mov	ax,28BAh
	mov	es,ax
	mov	bx,es:[2F1Fh]
	add	bx,5h
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	mov	ax,ss:[bx]
	or	ax,ss:[bx+2h]
	jnz	0DC1h

l0CE0_0DA6:
	push	dword ptr [bp-4h]
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[2F1Fh]
	push	ss
	lea	ax,[bp+0FF3Ch]
	push	ax
	push	cs
	call	023Eh

l0CE0_0DBE:
	add	sp,0Ah

l0CE0_0DC1:
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[2F1Fh],0h
	cmp	word ptr [bp+0FF64h],1h
	jz	0DD7h

l0CE0_0DD4:
	jmp	110Ch

l0CE0_0DD7:
	cmp	word ptr [bp+0FF6Ah],0h
	jz	0DE1h

l0CE0_0DDE:
	jmp	110Ch

l0CE0_0DE1:
	cmp	word ptr [bp+0FF70h],2h
	jz	0DEBh

l0CE0_0DE8:
	jmp	110Ch

l0CE0_0DEB:
	cmp	word ptr [bp-7Eh],3h
	jz	0DF4h

l0CE0_0DF1:
	jmp	110Ch

l0CE0_0DF4:
	cmp	word ptr [bp-78h],4h
	jz	0DFDh

l0CE0_0DFA:
	jmp	110Ch

l0CE0_0DFD:
	cmp	word ptr [bp-72h],5h
	jz	0E06h

l0CE0_0E03:
	jmp	110Ch

l0CE0_0E06:
	cmp	word ptr [bp-60h],6h
	jz	0E0Fh

l0CE0_0E0C:
	jmp	110Ch

l0CE0_0E0F:
	cmp	word ptr [bp-5Ah],7h
	jz	0E18h

l0CE0_0E15:
	jmp	110Ch

l0CE0_0E18:
	cmp	word ptr [bp-54h],8h
	jz	0E21h

l0CE0_0E1E:
	jmp	110Ch

l0CE0_0E21:
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[9FE3h],1h
	cli
	call	far 2425h:01E8h
	sti
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A18Ah]
	mov	[bp-2Eh],ax
	push	8001h
	push	ss
	lea	ax,[bp+0FF0Eh]
	push	ax
	call	far 0800h:3615h
	add	sp,6h
	mov	dx,28BAh
	mov	es,dx
	mov	es:[0A18Ah],ax
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A184h],0h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	dword ptr [bp-8h]
	push	13007Dh
	call	far 216Eh:01DCh
	add	sp,0Ch

l0CE0_0E82:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A422h],1h
	jz	0E82h

l0CE0_0E8F:
	push	ds
	push	4AAh
	call	far 1D10h:0E66h
	add	sp,4h
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A186h],0F0h

l0CE0_0ECB:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A184h],1h
	jge	0EE4h

l0CE0_0ED8:
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h

l0CE0_0EE4:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A186h],0h
	jg	0ECBh

l0CE0_0EF1:
	push	cs
	call	0547h
	mov	[bp-28h],ax
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A184h],1h
	jge	0F11h

l0CE0_0F05:
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h

l0CE0_0F11:
	cmp	word ptr [bp-28h],0h
	jnz	0EF1h

l0CE0_0F17:
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h
	push	8001h
	push	ds
	push	587h
	call	far 0800h:3615h
	add	sp,6h
	mov	[bp-2Ch],ax
	cmp	word ptr [bp-2Ch],0FFh
	jnz	0F5Fh

l0CE0_0F53:
	push	ds
	push	587h
	call	far 263Fh:03F3h
	add	sp,4h

l0CE0_0F5F:
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h
	push	0E100h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A882h]
	push	word ptr [bp-2Ch]
	call	far 0800h:3C87h
	add	sp,8h
	push	word ptr [bp-2Ch]
	call	far 0800h:2A93h
	pop	cx
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h
	push	8001h
	push	ds
	push	591h
	call	far 0800h:3615h
	add	sp,6h
	mov	[bp-2Ch],ax
	cmp	word ptr [bp-2Ch],0FFh
	jnz	0FBDh

l0CE0_0FB1:
	push	ds
	push	591h
	call	far 263Fh:03F3h
	add	sp,4h

l0CE0_0FBD:
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h
	push	242h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A0B8h]
	push	word ptr [bp-2Ch]
	call	far 0800h:3C87h
	add	sp,8h
	push	word ptr [bp-2Ch]
	call	far 0800h:2A93h
	pop	cx
	push	0B4012Ch
	call	far 1D10h:1A65h
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A882h]
	push	0A000Ah
	call	far 216Eh:0000h
	add	sp,0Ch

l0CE0_101D:
	push	cs
	call	05FBh
	mov	[bp-28h],ax
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A184h],1h
	jge	103Dh

l0CE0_1031:
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h

l0CE0_103D:
	cmp	word ptr [bp-28h],0h
	jnz	101Dh

l0CE0_1043:
	mov	word ptr [bp-26h],0h
	jmp	1066h

l0CE0_104A:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A184h],1h
	jge	104Ah

l0CE0_1057:
	push	ds
	push	4AAh
	call	far 1D10h:0F47h
	add	sp,4h
	inc	word ptr [bp-26h]

l0CE0_1066:
	cmp	word ptr [bp-26h],50h
	jc	104Ah

l0CE0_106C:
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[0A18Ah]
	call	far 0800h:2A93h
	pop	cx
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A35Ch],1h
	mov	ax,28BAh
	mov	dx,[bp-2Eh]
	mov	es,ax
	mov	es:[0A18Ah],dx
	push	ds
	push	4ECh
	call	far 1D10h:02AEh
	add	sp,4h

l0CE0_10A1:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A422h],1h
	jz	10A1h

l0CE0_10AE:
	push	8001h
	push	ds
	push	59Bh
	call	far 0800h:3615h
	add	sp,6h
	mov	dx,28BAh
	mov	es,dx
	mov	es:[0A18Ah],ax
	push	ds
	push	4CBh
	call	far 1D10h:02AEh
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[0A18Ah]
	call	far 0800h:2A93h
	pop	cx
	mov	ax,28BAh
	mov	dx,[bp-2Eh]
	mov	es,ax
	mov	es:[0A18Ah],dx
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A18Ch],0FFh
	call	far 1D10h:1A88h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A35Ch],0h

l0CE0_110C:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[2F1Eh]
	mov	ah,0h
	or	ax,ax
	jnz	112Ch

l0CE0_111B:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[9FE3h]
	cbw
	or	ax,ax
	jnz	112Ch

l0CE0_1129:
	jmp	0C87h

l0CE0_112C:
	cli
	call	far 2425h:01E8h
	sti
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A0E4h]
	call	far 18D5h:129Bh
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	mov	dword ptr es:[302Ch],0h
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[9FE3h]
	cbw
	or	ax,ax
	jz	1166h

l0CE0_1163:
	jmp	1213h

l0CE0_1166:
	push	0h
	push	1h
	push	0h
	push	0h
	push	1h
	push	1h
	push	0h
	push	1h
	call	far 2353h:0004h
	add	sp,14h
	cli
	call	far 2425h:0286h
	sti

l0CE0_1187:
	call	far 2331h:0167h
	mov	bx,28BAh
	mov	es,bx
	mov	es:[0A10Ah],dx
	mov	es:[0A108h],ax
	or	ax,dx
	jz	1187h

l0CE0_119E:
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[0A108h]
	mov	al,es:[bx]
	mov	ah,0h
	sub	ax,2h
	mov	bx,ax
	cmp	bx,3h
	ja	11F2h

l0CE0_11B7:
	shl	bx,1h
	jmp	word ptr cs:[bx+130Ch]

l0CE0_11BE:
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A10Ch],1h
	jmp	11F2h

l0CE0_11CB:
	push	0h
	push	5h

l0CE0_11D0:
	call	far 2331h:00BAh
	add	sp,6h
	jmp	11BEh

l0CE0_11DA:
	cmp	word ptr [bp+6h],0h
	jnz	11E7h

l0CE0_11E0:
	push	0h
	push	4h
	jmp	11D0h

l0CE0_11E7:
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[2F1Eh],0h

l0CE0_11F2:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A10Ch]
	mov	ah,0h
	or	ax,ax
	jnz	121Eh

l0CE0_1201:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[2F1Eh],0h
	jz	1211h

l0CE0_120E:
	jmp	1187h

l0CE0_1211:
	jmp	121Eh

l0CE0_1213:
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A10Ch],1h

l0CE0_121E:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A10Ch]
	mov	ah,0h
	or	ax,ax
	jnz	1230h

l0CE0_122D:
	jmp	0C18h

l0CE0_1230:
	cli
	call	far 2425h:01E8h
	sti
	call	far 2476h:0362h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A0E4h]
	call	far 0800h:1C24h
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A0B8h]
	call	far 0800h:1C24h
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[9FA8h]
	call	far 0800h:1C24h
	add	sp,4h
	push	dword ptr [9BE2h]
	call	far 0800h:1C24h
	add	sp,4h
	mov	word ptr [bp-26h],0h
	jmp	12D2h

l0CE0_1289:
	mov	bx,[bp-26h]
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	mov	ax,ss:[bx]
	or	ax,ss:[bx+2h]
	jz	12CFh

l0CE0_129E:
	mov	bx,[bp-26h]
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	cmp	word ptr ss:[bx+2h],0FFh
	jnz	12B7h

l0CE0_12B1:
	cmp	word ptr ss:[bx],0FFh
	jz	12CFh

l0CE0_12B7:
	mov	bx,[bp-26h]
	imul	bx,bx,6h
	lea	ax,[bp+0FF3Ch]
	add	bx,ax
	push	dword ptr ss:[bx]
	call	far 1744h:0A6Fh
	add	sp,4h

l0CE0_12CF:
	inc	word ptr [bp-26h]

l0CE0_12D2:
	cmp	word ptr [bp-26h],19h
	jc	1289h

l0CE0_12D8:
	push	dword ptr [bp-4h]
	call	far 0800h:1C24h
	add	sp,4h
	call	far 2057h:0384h
	call	far 209Fh:02A7h
	call	far 1D10h:1A16h
	mov	ax,2862h
	mov	dl,[bp-2Ah]
	mov	es,ax
	mov	es:[0000h],dl
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[9FE3h]
	cbw

l0CE0_130A:
	leave
	retf
l0CE0_130C	dw	0x11E7
l0CE0_130E	dw	0x11BE
