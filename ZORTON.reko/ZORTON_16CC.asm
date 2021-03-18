;;; Segment 16CC (16CC:0000)
16CC:0000 01                                              .              

l16C6_0061:
	inc	cx

l16C6_0062:
	pop	ebx
	pop	eax
	movzx	ax,cl

l16C6_0069:
	retf
16C6:006A                               00 00 00 00 58 02           ....X.
16C6:0070 58 02 00 00 00 00 00 00 00 00 00 00             X...........   

;; fn16CC_001C: 16CC:001C
;;   Called from:
;;     1744:0496 (in fn1744_044D)
;;     1744:04B9 (in fn1744_044D)
;;     1744:04DB (in fn1744_044D)
fn16CC_001C proc
	enter	0h,0h
	push	bp
	mov	bp,sp
	push	gs
	push	fs
	push	ecx
	push	edx
	push	esi
	push	edi
	push	ds
	push	es
	cld
	lfs	si,[bp+8h]
	mov	ax,[bp+0Eh]
	mov	gs,ax
	or	word ptr fs:[si+1Ah],2h
	mov	bx,fs:[si+0Eh]
	mov	ax,fs:[si+10h]
	mov	es,ax
	mov	edx,es:[bx]
	shr	dx,1h
	mov	ecx,edx
	shr	ecx,10h
	mov	dh,cl
	mov	ax,fs:[si+6h]
	mov	fs:[si+2h],ax
	cmp	ax,cs:[0010h]
	jnc	006Ch

l16CC_0068:
	mov	cs:[0010h],ax

l16CC_006C:
	mov	bl,dh
	xor	bh,bh
	add	bx,ax
	cmp	bx,cs:[0014h]
	jc	007Eh

l16CC_0079:
	mov	cs:[0014h],bx

l16CC_007E:
	xor	bx,bx
	mov	bh,al
	shl	ax,6h
	add	ax,bx
	mov	bx,fs:[si+4h]
	mov	fs:[si],bx
	cmp	bx,cs:[000Eh]
	jnc	009Ah

l16CC_0095:
	mov	cs:[000Eh],bx

l16CC_009A:
	mov	cl,dl
	xor	ch,ch
	shl	cx,1h
	add	cx,bx
	cmp	cx,cs:[0012h]
	jc	00AEh

l16CC_00A9:
	mov	cs:[0012h],cx

l16CC_00AE:
	add	ax,bx
	mov	cs:[000Ah],ax
	mov	ax,fs:[si+1Ah]
	and	ax,4h
	jz	014Bh

l16CC_00BF:
	mov	eax,fs:[si+12h]
	mov	di,ax
	shr	eax,10h
	mov	es,ax
	mov	al,dh
	xor	ah,ah
	shl	eax,10h
	mov	al,dl
	mov	es:[di],eax
	add	di,4h
	mov	si,[bp+0Ch]
	mov	ax,gs:[si+0Eh]
	mov	si,gs:[si+0Ch]
	mov	ds,ax
	mov	bl,dh
	xor	cx,cx
	mov	ax,0A0h
	sub	al,dl
	add	ax,ax
	add	si,cs:[000Ah]
	test	si,1h
	jnz	010Ch

l16CC_0100:
	mov	cl,dl

l16CC_0102:
	rep movsw

l16CC_0104:
	add	si,ax
	dec	bl
	jnz	0100h

l16CC_010A:
	jmp	0127h

l16CC_010C:
	dec	dl
	jnz	0119h

l16CC_0110:
	movsw
	add	si,ax
	dec	bl
	jnz	0110h

l16CC_0117:
	jmp	0127h

l16CC_0119:
	movsb
	mov	cl,dl

l16CC_011C:
	rep movsw

l16CC_011E:
	movsb
	add	si,ax
	dec	bl
	jnz	0119h

l16CC_0125:
	inc	dl

l16CC_0127:
	mov	di,[bp+0Ch]
	mov	bl,gs:[di+10h]
	mov	cl,bl
	xor	bh,bh
	shl	bx,2h
	add	bx,12h
	inc	cl
	mov	si,fs
	shl	esi,10h
	mov	si,[bp+8h]
	mov	gs:[bx+di],esi
	mov	gs:[di+10h],cl

l16CC_014B:
	mov	bx,[bp+0Ch]
	mov	ax,fs:[si+1Ah]
	mov	di,cs:[000Ah]
	add	di,gs:[bx+0Ch]
	mov	cx,gs:[bx+0Eh]
	mov	es,cx
	mov	cx,fs:[si+10h]
	mov	ds,cx
	mov	si,fs:[si+0Eh]
	mov	bl,dh
	add	si,4h
	test	ax,20h
	jz	026Bh

l16CC_0177:
	mov	ax,0A0h
	sub	al,dl
	add	ax,ax
	mov	bp,ax
	xor	cx,cx
	test	di,1h
	jnz	01DFh

l16CC_0188:
	mov	cl,dl

l16CC_018A:
	mov	ax,[si]
	add	si,2h
	test	ah,ah
	jz	0199h

l16CC_0193:
	test	al,al
	jnz	01CEh

l16CC_0197:
	jmp	01BCh

l16CC_0199:
	cmp	ah,al
	jnz	01ABh

l16CC_019D:
	add	di,2h
	loop	018Ah

l16CC_01A2:
	add	di,bp
	dec	bl
	jnz	0188h

l16CC_01A8:
	jmp	029Fh

l16CC_01AB:
	mov	es:[di],al
	add	di,2h
	loop	018Ah

l16CC_01B3:
	add	di,bp
	dec	bl
	jnz	0188h

l16CC_01B9:
	jmp	029Fh

l16CC_01BC:
	mov	es:[di+1h],ah
	add	di,2h
	loop	018Ah

l16CC_01C5:
	add	di,bp
	dec	bl
	jnz	0188h

l16CC_01CB:
	jmp	029Fh

l16CC_01CE:
	mov	es:[di],ax
	add	di,2h
	loop	018Ah

l16CC_01D6:
	add	di,bp
	dec	bl
	jnz	0188h

l16CC_01DC:
	jmp	029Fh

l16CC_01DF:
	dec	dl
	inc	bp

l16CC_01E2:
	mov	cl,dl
	mov	al,[si]
	inc	si
	and	al,al
	jz	01EEh

l16CC_01EB:
	mov	es:[di],al

l16CC_01EE:
	inc	di

l16CC_01EF:
	mov	ax,[si]
	add	si,2h
	test	ah,ah
	jz	01FEh

l16CC_01F8:
	test	al,al
	jnz	024Fh

l16CC_01FC:
	jmp	0234h

l16CC_01FE:
	cmp	ah,al
	jnz	021Ah

l16CC_0202:
	add	di,2h
	loop	01EFh

l16CC_0207:
	mov	al,[si]
	inc	si
	and	al,al
	jz	0211h

l16CC_020E:
	mov	es:[di],al

l16CC_0211:
	add	di,bp
	dec	bl
	jnz	01E2h

l16CC_0217:
	jmp	029Fh

l16CC_021A:
	mov	es:[di],al
	add	di,2h
	loop	01EFh

l16CC_0222:
	mov	al,[si]
	inc	si
	and	al,al
	jz	022Ch

l16CC_0229:
	mov	es:[di],al

l16CC_022C:
	add	di,bp
	dec	bl
	jnz	01E2h

l16CC_0232:
	jmp	029Fh

l16CC_0234:
	mov	es:[di+1h],ah
	add	di,2h
	loop	01EFh

l16CC_023D:
	mov	al,[si]
	inc	si
	and	al,al
	jz	0247h

l16CC_0244:
	mov	es:[di],al

l16CC_0247:
	add	di,bp
	dec	bl
	jnz	01E2h

l16CC_024D:
	jmp	029Fh

l16CC_024F:
	mov	es:[di],ax
	add	di,2h
	loop	01EFh

l16CC_0257:
	mov	al,[si]
	inc	si
	and	al,al
	jz	0261h

l16CC_025E:
	mov	es:[di],al

l16CC_0261:
	add	di,bp
	dec	bl
	jnz	01E2h

l16CC_0269:
	jmp	029Fh

l16CC_026B:
	mov	ax,0A0h
	sub	al,dl
	add	ax,ax
	xor	cx,cx
	test	di,1h
	jnz	0286h

l16CC_027A:
	mov	cl,dl

l16CC_027C:
	rep movsw

l16CC_027E:
	add	di,ax
	dec	bl
	jnz	027Ah

l16CC_0284:
	jmp	029Fh

l16CC_0286:
	dec	dl
	jnz	0293h

l16CC_028A:
	movsw
	add	di,ax
	dec	bl
	jnz	028Ah

l16CC_0291:
	jmp	029Fh

l16CC_0293:
	movsb
	mov	cl,dl

l16CC_0296:
	rep movsw

l16CC_0298:
	movsb
	add	di,ax
	dec	bl
	jnz	0293h

l16CC_029F:
	sub	di,ax
	pop	es
	pop	ds
	pop	edi
	pop	esi
	pop	edx
	pop	ecx
	pop	fs
	pop	gs
	pop	bp
	leave
	retf

;; fn16CC_02B2: 16CC:02B2
;;   Called from:
;;     1744:045F (in fn1744_044D)
fn16CC_02B2 proc
	enter	0h,0h
	push	bp
	mov	bp,sp
	push	gs
	push	fs
	push	ecx
	push	edx
	push	esi
	push	edi
	push	ds
	push	es
	cld
	lfs	si,[bp+8h]
	mov	cs:[001Ah],si
	mov	bx,fs:[si+10h]
	mov	word ptr fs:[si+10h],0h
	les	di,fs:[si+0Ch]
	mov	cs:[000Ch],di
	shl	bx,2h
	add	si,12h
	mov	bp,si

l16CC_02EC:
	lds	si,fs:[bx+si-4h]
	mov	ax,[si]
	mov	dx,[si+2h]
	lds	si,[si+12h]
	cmp	ax,cs:[000Eh]
	jnc	0303h

l16CC_02FF:
	mov	cs:[000Eh],ax

l16CC_0303:
	mov	cx,ax
	add	cx,[si]
	add	cx,[si]
	cmp	cx,cs:[0012h]
	jc	0315h

l16CC_0310:
	mov	cs:[0012h],cx

l16CC_0315:
	cmp	dx,cs:[0010h]
	jnc	0321h

l16CC_031C:
	mov	cs:[0010h],dx

l16CC_0321:
	mov	cx,dx
	add	cx,[si+2h]
	cmp	cx,cs:[0014h]
	jc	0332h

l16CC_032D:
	mov	cs:[0014h],cx

l16CC_0332:
	xor	cx,cx
	mov	ch,dl
	shl	dx,6h
	add	cx,dx
	add	cx,ax
	add	di,cx
	mov	ax,[si]
	mov	cx,[si+2h]
	add	si,4h
	mov	ah,cl
	mov	dx,0A0h
	sub	dl,al
	add	dx,dx
	xor	cx,cx
	test	di,1h
	jnz	0364h

l16CC_0358:
	mov	cl,al

l16CC_035A:
	rep movsw

l16CC_035C:
	add	di,dx
	dec	ah
	jnz	0358h

l16CC_0362:
	jmp	0372h

l16CC_0364:
	dec	al

l16CC_0366:
	movsb
	mov	cl,al

l16CC_0369:
	rep movsw

l16CC_036B:
	movsb
	add	di,dx
	dec	ah
	jnz	0366h

l16CC_0372:
	mov	si,bp
	lds	di,fs:[bx+si-4h]
	mov	ax,[di+1Ah]
	and	ax,10h
	jz	03E5h

l16CC_0380:
	mov	eax,[di+28h]
	and	eax,eax
	jz	039Ah

l16CC_0389:
	mov	ecx,[di+24h]
	mov	si,ax
	shr	eax,10h
	mov	gs,ax
	mov	gs:[si+24h],ecx

l16CC_039A:
	mov	eax,[di+24h]
	and	eax,eax
	jz	03B4h

l16CC_03A3:
	mov	ecx,[di+28h]
	mov	si,ax
	shr	eax,10h
	mov	gs,ax
	mov	gs:[si+28h],ecx

l16CC_03B4:
	mov	si,cs:[001Ah]
	mov	eax,fs:[si]
	mov	cx,ds
	shl	ecx,10h
	mov	cx,di
	cmp	eax,ecx
	jnz	03D2h

l16CC_03CA:
	mov	edx,[di+24h]
	mov	fs:[si],edx

l16CC_03D2:
	mov	eax,fs:[si+4h]
	cmp	eax,ecx
	jnz	03E5h

l16CC_03DC:
	mov	edx,[di+28h]
	mov	fs:[si+4h],edx

l16CC_03E5:
	mov	di,cs:[000Ch]
	sub	bx,4h
	jnz	02ECh

l16CC_03F1:
	pop	es
	pop	ds
	pop	edi
	pop	esi
	pop	edx
	pop	ecx
	pop	fs
	pop	gs
	pop	bp
	leave
	retf
16CC:0402       C8 00 00 00 55 8B EC 0F A8 0F A0 66 51 66   ....U......fQf
16CC:0410 52 66 56 66 57 1E 06 FC C5 76 08 B8 00 A0 8E C0 RfVfW....v......
16CC:0420 33 FF B9 80 3E F3 66 A5 07 1F 66 5F 66 5E 66 5A 3...>.f...f_f^fZ
16CC:0430 66 59 0F A1 0F A9 5D C9 CB C8 00 00 00 55 8B EC fY....]......U..
16CC:0440 0F A8 0F A0 66 51 66 52 66 56 66 57 1E 06 FC C5 ....fQfRfVfW....
16CC:0450 76 08 81 C6 8A 0C B8 00 A0 8E C0 BF 8A 0C B3 8C v...............
16CC:0460 B9 39 00 F3 66 A5 83 C6 5C 83 C7 5C FE CB 75 F0 .9..f...\..\..u.
16CC:0470 07 1F 66 5F 66 5E 66 5A 66 59 0F A1 0F A9 5D C9 ..f_f^fZfY....].
16CC:0480 CB                                              .              

;; fn16CC_0481: 16CC:0481
;;   Called from:
;;     0CE0:0C3B (in fn0CE0_08FC)
fn16CC_0481 proc
	enter	0h,0h
	push	bp
	mov	bp,sp
	push	gs
	push	fs
	push	ecx
	push	edx
	push	esi
	push	edi
	push	ds
	push	es
	cld
	lds	si,[bp+8h]
	add	si,0C8Ah
	mov	ax,0A000h
	mov	es,ax
	mov	di,0C8Ah
	mov	bl,8Ch

l16CC_04A8:
	mov	cx,4Dh

l16CC_04AB:
	rep movsd

l16CC_04AE:
	movsw
	add	si,0Ah
	add	di,0Ah
	dec	bl
	jnz	04A8h

l16CC_04B9:
	pop	es
	pop	ds
	pop	edi
	pop	esi
	pop	edx
	pop	ecx
	pop	fs
	pop	gs
	pop	bp
	leave
	retf

;; fn16CC_04CA: 16CC:04CA
;;   Called from:
;;     0CE0:0223 (in fn0CE0_0170)
;;     0CE0:02F1 (in fn0CE0_023E)
;;     0CE0:03B9 (in fn0CE0_030C)
;;     0CE0:0481 (in fn0CE0_03D4)
fn16CC_04CA proc
	enter	0h,0h
	push	bp
	mov	bp,sp
	push	gs
	push	fs
	push	ecx
	push	edx
	push	esi
	push	edi
	push	ds
	push	es
	cld
	lds	si,[bp+8h]
	mov	ax,0A000h
	mov	es,ax
	mov	dx,cs:[0012h]
	mov	ax,cs:[000Eh]
	and	ax,0FFFCh
	sub	dx,ax
	shr	dx,2h
	inc	dx
	mov	cx,cs:[0010h]
	xor	bx,bx
	mov	bh,cl
	shl	cx,6h
	add	cx,bx
	add	cx,ax
	mov	di,cx
	add	si,cx
	mov	bx,cs:[0014h]
	sub	bx,cs:[0010h]
	mov	ax,50h
	sub	ax,dx
	shl	ax,2h

l16CC_0520:
	mov	cx,dx

l16CC_0522:
	rep movsd

l16CC_0525:
	add	si,ax
	add	di,ax
	dec	bl
	jnz	0520h

l16CC_052D:
	mov	word ptr cs:[000Eh],258h
	mov	word ptr cs:[0010h],258h
	mov	word ptr cs:[0012h],0h
	mov	word ptr cs:[0014h],0h
	pop	es
	pop	ds
	pop	edi
	pop	esi
	pop	edx
	pop	ecx
	pop	fs
	pop	gs
	pop	bp
	leave
	retf
16CC:055A                               C8 00 00 00 55 8B           ....U.
16CC:0560 EC 0F A8 0F A0 66 51 66 52 66 56 66 57 1E 06 FC .....fQfRfVfW...
16CC:0570 C5 76 08 C4 7E 0C 66 8B 04 83 C6 04 8B D0 C1 E8 .v..~.f.........
16CC:0580 04 66 33 DB 8A D8 8B C2 25 07 00 74 02 FE C3 66 .f3.....%..t...f
16CC:0590 C1 E8 11 8A F8 8A F0 66 26 89 1D 83 C7 04 D0 EA .......f&.......
16CC:05A0 66 33 C9 8A CA BB 80 00 33 C0 83 3C 00 74 02 0A f3......3..<.t..
16CC:05B0 C3 83 C6 02 D0 EB 74 28 E2 F0 26 88 05 8A C2 32 ......t(..&....2
16CC:05C0 E4 D1 E0 03 F0 47 33 C0 BB 80 00 FE CE 75 D4 07 .....G3......u..
16CC:05D0 1F 66 5F 66 5E 66 5A 66 59 0F A1 0F A9 5D C9 CB .f_f^fZfY....]..
16CC:05E0 26 88 05 47 33 C0 BB 80 00 EB CD C8 00 00 00 55 &..G3..........U
16CC:05F0 8B EC 0F A8 0F A0 66 51 66 52 66 56 66 57 1E 06 ......fQfRfVfW..
16CC:0600 FC C4 7E 08 26 C5 75 16 8B 14 83 C6 04 26 8B 45 ..~.&.u......&.E
16CC:0610 06 D1 E8 33 DB 8A F8 C1 E0 06 03 C3 26 8B 5D 04 ...3........&.].
16CC:0620 81 E3 FE FF 03 C3 03 46 0C 8B 5E 0E 26 8B 6D 0A .......F..^.&.m.
16CC:0630 2E 89 2E 18 00 26 8B 6D 0C 8E C3 8B F8 BB 14 00 .....&.m........
16CC:0640 2A DA C1 E3 04 2E 89 1E 16 00 33 C9 8B D9 8A CA *.........3.....
16CC:0650 8A 04 46 D0 E0 73 06 26 09 2D 26 0B 1D D0 E0 73 ..F..s.&.-&....s
16CC:0660 08 26 09 6D 02 26 0B 5D 02 D0 E0 73 08 26 09 6D .&.m.&.]...s.&.m
16CC:0670 04 26 0B 5D 04 D0 E0 73 08 26 09 6D 06 26 0B 5D .&.]...s.&.m.&.]
16CC:0680 06 D0 E0 73 08 26 09 6D 08 26 0B 5D 08 D0 E0 73 ...s.&.m.&.]...s
16CC:0690 08 26 09 6D 0A 26 0B 5D 0A D0 E0 73 08 26 09 6D .&.m.&.]...s.&.m
16CC:06A0 0C 26 0B 5D 0C 22 C0 74 08 26 09 6D 0E 26 0B 5D .&.].".t.&.m.&.]
16CC:06B0 0E 83 C7 10 E2 9A 2E 03 3E 16 00 FE CE 75 8F 2E ........>....u..
16CC:06C0 A1 18 00 23 C3 07 1F 66 5F 66 5E 66 5A 66 59 0F ...#...f_f^fZfY.
16CC:06D0 A1 0F A9 5D C9 CB C8 00 00 00 55 8B EC 0F A8 0F ...]......U.....
16CC:06E0 A0 66 51 66 52 66 56 66 57 1E 06 FC C4 7E 08 26 .fQfRfVfW....~.&
16CC:06F0 C5 75 16 8B 14 83 C6 04 26 8B 45 02 D1 E8 33 DB .u......&.E...3.
16CC:0700 8A F8 C1 E0 06 03 C3 26 8B 1D 81 E3 FE FF 03 C3 .......&........
16CC:0710 03 46 0C 8B 5E 0E 26 8B 6D 0C F7 D5 8E C3 8B F8 .F..^.&.m.......
16CC:0720 BB 14 00 2A DA C1 E3 04 33 C9 8A CA 8A 04 46 D0 ...*....3.....F.
16CC:0730 E0 73 03 26 21 2D D0 E0 73 04 26 21 6D 02 D0 E0 .s.&!-..s.&!m...
16CC:0740 73 04 26 21 6D 04 D0 E0 73 04 26 21 6D 06 D0 E0 s.&!m...s.&!m...
16CC:0750 73 04 26 21 6D 08 D0 E0 73 04 26 21 6D 0A D0 E0 s.&!m...s.&!m...
16CC:0760 73 04 26 21 6D 0C 22 C0 74 04 26 21 6D 0E 83 C7 s.&!m.".t.&!m...
16CC:0770 10 E2 B9 03 FB FE CE 75 B1 07 1F 66 5F 66 5E 66 .......u...f_f^f
