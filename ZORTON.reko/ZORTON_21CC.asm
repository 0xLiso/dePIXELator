;;; Segment 21CC (21CC:0000)

l216E_05E0:
	pop	es
	pop	si
	pop	di
	pop	bp
	retf
216E:05E5                00 00 00 00 00 FF 00 00 00 00 FF      ...........
216E:05F0 00 00 FF FF 00 00 00 00 FF 00 FF 00 FF 00 00 FF ................
216E:0600 FF 00 FF FF FF 00 00 00 00 FF FF 00 00 FF 00 FF ................
216E:0610 00 FF FF FF 00 FF 00 00 FF FF FF 00 FF FF 00 FF ................
216E:0620 FF FF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 ................
216E:0630 00 00                                           ..             

;; fn21CC_0052: 21CC:0052
;;   Called from:
;;     1D10:1238 (in fn1D10_1153)
fn21CC_0052 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	push	ds
	push	es
	push	si
	push	di
	mov	word ptr [bp-2h],0Ah
	lds	si,[bp+6h]
	mov	cl,[si]
	inc	si
	mov	ch,[si]
	inc	si
	mov	al,cl
	or	al,ch
	jz	00AFh

l21CC_0070:
	mov	ax,0A000h
	push	ax
	mov	ax,0h
	push	ax
	mov	al,ch
	cbw
	push	ax
	mov	al,cl
	cbw
	push	ax
	push	ax
	push	bp
	mov	bp,sp
	mov	word ptr [bp+2h],8Ch
	pop	bp
	push	ax
	push	bp
	mov	bp,sp
	mov	word ptr [bp+2h],0E4h
	pop	bp
	push	ax
	push	bp
	mov	bp,sp
	mov	word ptr [bp+2h],0Ah
	pop	bp
	push	ax
	push	bp
	mov	bp,sp
	mov	word ptr [bp+2h],0Ah
	pop	bp
	push	cs
	call	0156h
	add	sp,10h

l21CC_00AF:
	mov	cl,[si]
	or	cl,cl
	jnz	00B8h

l21CC_00B5:
	jmp	014Dh

l21CC_00B8:
	add	si,2h

l21CC_00BB:
	mov	dl,[si]
	add	si,2h
	mov	dh,[si]
	add	si,2h
	add	[bp-2h],dl
	mov	ax,0A000h
	mov	es,ax
	mov	di,0Ah
	mov	ax,[bp-2h]
	mov	bx,ax
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	add	ax,bx
	add	di,ax
	push	dx

l21CC_00F6:
	mov	ch,[si]
	inc	si
	push	di

l21CC_00FA:
	mov	bl,[si]
	inc	si
	mov	bh,[si]
	inc	si
	mov	al,bl
	mov	ah,0h
	add	di,ax
	test	bh,80h
	jz	0124h

l21CC_010B:
	push	cx
	mov	cl,bh
	and	cx,7Fh
	inc	cx
	cld
	mov	al,[si]
	mov	ah,al
	inc	si
	shr	cx,1h
	jnc	011Dh

l21CC_011C:
	stosb

l21CC_011D:
	jcxz	0121h

l21CC_011F:
	rep stosw

l21CC_0121:
	pop	cx
	jmp	0135h

l21CC_0124:
	push	cx
	mov	cl,bh
	mov	ch,0h
	inc	cx
	cld
	shr	cx,1h
	jnc	0130h

l21CC_012F:
	movsb

l21CC_0130:
	jcxz	0134h

l21CC_0132:
	rep movsw

l21CC_0134:
	pop	cx

l21CC_0135:
	dec	ch
	jnz	00FAh

l21CC_0139:
	pop	di
	add	di,140h
	dec	dh
	jnz	00F6h

l21CC_0142:
	pop	dx
	add	[bp-2h],dh
	dec	cl
	jz	014Dh

l21CC_014A:
	jmp	00BBh

l21CC_014D:
	pop	di
	pop	si
	pop	es
	pop	ds
	add	sp,2h
	pop	bp
	retf

;; fn21CC_0156: 21CC:0156
;;   Called from:
;;     21CC:00A8 (in fn21CC_0052)
fn21CC_0156 proc
	push	bp
	mov	bp,sp
	push	ds
	push	es
	push	si
	push	di
	lds	si,[bp+12h]
	mov	ax,ds
	mov	es,ax
	mov	di,si
	mov	ax,[bp+6h]
	mov	bx,ax
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	add	bx,ax
	add	bx,[bp+6h]
	add	bx,si
	cmp	byte ptr [bp+0Eh],0h
	jl	0197h

l21CC_0194:
	jmp	0260h

l21CC_0197:
	mov	si,bx
	mov	di,si
	mov	ax,[bp+0Eh]
	neg	ax
	add	si,ax
	cmp	byte ptr [bp+10h],0h
	jl	01AAh

l21CC_01A8:
	jmp	01F4h

l21CC_01AA:
	mov	ax,[bp+10h]
	neg	ax
	mov	bx,ax
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	add	ax,bx
	add	si,ax
	mov	dx,[bp+0Ch]
	add	dx,[bp+10h]
	mov	cx,[bp+0Ah]
	add	cx,[bp+0Eh]
	cld

l21CC_01DE:
	push	cx
	push	si
	push	di

l21CC_01E1:
	rep movsb

l21CC_01E3:
	pop	di
	pop	si
	pop	cx
	add	si,140h
	add	di,140h
	dec	dx
	jnz	01DEh

l21CC_01F1:
	jmp	034Fh

l21CC_01F4:
	mov	ax,[bp+0Ch]
	dec	ax
	mov	bx,ax
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	add	ax,bx
	add	si,ax
	add	di,ax
	mov	ax,[bp+10h]
	mov	bx,ax
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	add	ax,bx
	sub	si,ax
	mov	dx,[bp+0Ch]
	sub	dx,[bp+10h]
	mov	cx,[bp+0Ah]
	add	cx,[bp+0Eh]
	cld

l21CC_024A:
	push	cx
	push	si
	push	di

l21CC_024D:
	rep movsb

l21CC_024F:
	pop	di
	pop	si
	pop	cx
	sub	si,140h
	sub	di,140h
	dec	dx
	jnz	024Ah

l21CC_025D:
	jmp	034Fh

l21CC_0260:
	mov	si,bx
	add	si,[bp+0Ah]
	dec	si
	mov	di,si
	sub	si,[bp+0Eh]
	cmp	byte ptr [bp+10h],0h
	jl	0273h

l21CC_0271:
	jmp	02BDh

l21CC_0273:
	mov	ax,[bp+10h]
	neg	ax
	mov	bx,ax
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	add	ax,bx
	add	si,ax
	mov	dx,[bp+0Ch]
	add	dx,[bp+10h]
	mov	cx,[bp+0Ah]
	sub	cx,[bp+0Eh]
	std

l21CC_02A7:
	push	cx
	push	si
	push	di

l21CC_02AA:
	rep movsb

l21CC_02AC:
	pop	di
	pop	si
	pop	cx
	add	si,140h
	add	di,140h
	dec	dx
	jnz	02A7h

l21CC_02BA:
	jmp	034Fh

l21CC_02BD:
	mov	ax,[bp+0Ch]
	dec	ax
	mov	bx,ax
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	add	ax,bx
	add	di,ax
	add	si,ax
	mov	ax,[bp+10h]
	mov	bx,ax
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	add	ax,bx
	sub	si,ax
	mov	ax,[bp+10h]
	mov	bx,ax
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	shl	bx,1h
	add	ax,bx
	add	di,ax
	mov	dx,[bp+0Ch]
	sub	dx,[bp+10h]
	mov	cx,[bp+0Ah]
	sub	cx,[bp+0Eh]
	std

l21CC_033C:
	push	cx
	push	si
	push	di

l21CC_033F:
	rep movsb

l21CC_0341:
	pop	di
	pop	si
	pop	cx
	sub	si,140h
	sub	di,140h
	dec	dx
	jnz	033Ch

l21CC_034F:
	pop	di
	pop	si
	pop	es
	pop	ds
	pop	bp
	retf
21CC:0355                55 8B EC 06 57 B8 00 A0 8E C0 BF      U...W......
21CC:0360 8A 0C B9 8C 00 8A 46 06 8A E0 FC 57 51 B9 72 00 ......F....WQ.r.
21CC:0370 F3 AB 59 5F 81 C7 40 01 E2 F1 5F 07 5D CB       ..Y_..@..._.]. 

;; fn21CC_037E: 21CC:037E
;;   Called from:
;;     21CC:0420 (in fn21CC_03CC)
;;     21CC:0435 (in fn21CC_03CC)
fn21CC_037E proc
	push	di
	mov	dx,[si]
	mov	cx,4h

l21CC_0384:
	mov	bx,0h
	shr	dx,1h
	adc	bx,0h
	mov	al,[bx+si+2h]
	ror	eax,8h
	mov	bx,0h
	shr	dx,1h
	adc	bx,0h
	mov	al,[bx+si+2h]
	ror	eax,8h
	mov	bx,0h
	shr	dx,1h
	adc	bx,0h
	mov	al,[bx+si+2h]
	ror	eax,8h
	mov	bx,0h
	shr	dx,1h
	adc	bx,0h
	mov	al,[bx+si+2h]
	ror	eax,8h
	mov	es:[di],eax
	add	di,140h
	loop	0384h

l21CC_03CA:
	pop	di
	ret

;; fn21CC_03CC: 21CC:03CC
;;   Called from:
;;     1D10:1244 (in fn1D10_1153)
fn21CC_03CC proc
	push	bp
	mov	bp,sp
	push	ds
	push	es
	push	si
	push	di
	mov	ax,0A000h
	mov	es,ax
	mov	di,0C8Ah
	lds	si,[bp+6h]
	mov	cl,[si]
	inc	si
	or	cl,cl
	jnz	03E7h

l21CC_03E5:
	jmp	0454h

l21CC_03E7:
	mov	dl,[si]
	inc	si
	mov	dh,[si]
	inc	si
	mov	al,dl
	shl	al,2h
	mov	ah,0h
	mov	bx,ax
	shl	ax,8h
	shl	bx,6h
	add	ax,bx
	add	di,ax

l21CC_0400:
	mov	ch,[si]
	inc	si
	push	di

l21CC_0404:
	mov	al,[si]
	inc	si
	mov	ah,0h
	shl	ax,2h
	add	di,ax
	mov	al,[si]
	inc	si
	push	cx
	test	al,80h
	jz	042Fh

l21CC_0416:
	and	al,7Fh
	inc	al
	mov	cl,al
	mov	ch,0h

l21CC_041E:
	push	cx
	push	dx
	call	037Eh
	pop	dx
	pop	cx
	add	di,4h
	loop	041Eh

l21CC_042A:
	add	si,4h
	jmp	0442h

l21CC_042F:
	mov	cl,al
	mov	ch,0h

l21CC_0433:
	push	cx
	push	dx
	call	037Eh
	pop	dx
	pop	cx
	add	di,4h
	add	si,4h
	loop	0433h

l21CC_0442:
	pop	cx
	dec	ch
	jnz	0404h

l21CC_0447:
	pop	di
	add	di,500h
	dec	dh
	jnz	0400h

l21CC_0450:
	dec	cl
	jnz	03E7h

l21CC_0454:
	pop	di
	pop	si
	pop	es
	pop	ds
	pop	bp
	retf

;; fn21CC_045A: 21CC:045A
;;   Called from:
;;     1D10:11E7 (in fn1D10_1153)
fn21CC_045A proc
	push	bp
	mov	bp,sp
	push	ds
	push	es
	push	si
	push	di
	mov	ax,0A000h
	mov	es,ax
	mov	di,0C8Ah
	lds	si,[bp+6h]
	mov	bx,8Ch

l21CC_046F:
	push	di
	mov	dx,0E4h

l21CC_0473:
	mov	al,[si]
	inc	si
	test	al,80h
	jz	049Ah

l21CC_047A:
	and	al,7Fh
	mov	cl,al
	mov	ch,0h
	inc	cx
	mov	al,[si]
	inc	si
	mov	ah,al
	cld
	sub	dx,cx
	and	al,al
	jnz	0491h

l21CC_048D:
	add	di,cx
	jmp	04ABh

l21CC_0491:
	shr	cx,1h
	jnc	0496h

l21CC_0495:
	stosb

l21CC_0496:
	rep stosw

l21CC_0498:
	jmp	04ABh

l21CC_049A:
	mov	cl,al
	mov	ch,0h
	inc	cx
	cld
	sub	dx,cx
	shr	cx,1h
	jnc	04A7h

l21CC_04A6:
	movsb

l21CC_04A7:
	jcxz	04ABh

l21CC_04A9:
	rep movsw

l21CC_04AB:
	cmp	dx,0h
	jg	0473h

l21CC_04B0:
	pop	di
	add	di,140h
	dec	bx
	jnz	046Fh

l21CC_04B8:
	pop	di
	pop	si
	pop	es
	pop	ds
	pop	bp
	retf

;; fn21CC_04BE: 21CC:04BE
;;   Called from:
;;     1D10:11AA (in fn1D10_1153)
fn21CC_04BE proc
	push	bp
	mov	bp,sp
	push	ds
	push	si
	push	es
	push	di
	lds	si,[bp+6h]
	mov	ax,0A000h
	mov	es,ax
	mov	di,0C8Ah
	mov	cx,8Ch
	cld

l21CC_04D4:
	push	cx
	push	di
	mov	cx,39h

l21CC_04D9:
	rep movsd

l21CC_04DC:
	pop	di
	add	di,140h
	pop	cx
	loop	04D4h

l21CC_04E4:
	pop	di
	pop	es
	pop	si
	pop	ds
	pop	bp
	retf
21CC:04EA                               55 8B EC 83 EC 02           U.....
21CC:04F0 1E 06 56 57 C5 76 06 B8 00 A0 8E C0 BF 8A 0C C7 ..VW.v..........
21CC:0500 46 FE 00 00 8A 3C 46 F6 C7 01 74 14 B8 E4 00 BA F....<F...t.....
21CC:0510 8C 00 D1 E8 D1 EA F7 E2 05 07 00 C1 E8 03 03 F0 ................
21CC:0520 B9 8C 00 33 D2 51 B9 E4 00 57 F6 C7 01 74 20 F7 ...3.Q...W...t .
21CC:0530 46 FE 07 00 75 10 56 8B 46 FE C1 E8 03 40 8B 76 F...u.V.F....@.v
21CC:0540 06 03 F0 8A 04 5E FF 46 FE D0 E0 72 02 EB 5A 50 .....^.F...r..ZP
21CC:0550 8A 04 46 8A 24 46 42 F7 C2 01 00 75 08 8A 1C 46 ..F.$FB....u...F
21CC:0560 80 E3 0F EB 09 8A 5C 02 C0 EB 04 80 E3 0F D0 EB ......\.........
21CC:0570 73 05 26 88 25 EB 03 26 88 05 D0 EB 73 06 26 88 s.&.%..&....s.&.
21CC:0580 65 01 EB 04 26 88 45 01 D0 EB 73 07 26 88 A5 40 e...&.E...s.&..@
21CC:0590 01 EB 05 26 88 85 40 01 D0 EB 73 07 26 88 A5 41 ...&..@...s.&..A
21CC:05A0 01 EB 05 26 88 85 41 01 58 83 C7 02 49 E2 02 EB ...&..A.X...I...
21CC:05B0 03 E9 76 FF 5F 81 C7 80 02 59 49 E2 02 EB 03 E9 ..v._....YI.....
21CC:05C0 63 FF 5F 5E 07 1F 83 C4 02 5D CB                c._^.....].    

;; fn21CC_05CB: 21CC:05CB
;;   Called from:
;;     1D10:1299 (in fn1D10_1153)
fn21CC_05CB proc
	push	bp
	mov	bp,sp
	push	ds
	push	es
	push	si
	push	di
	lds	si,[bp+6h]
	mov	ax,0A000h
	mov	es,ax
	mov	di,0C8Ah
	mov	bh,[si]
	inc	si
	test	bh,1h
	jz	05FAh

l21CC_05E5:
	mov	ax,0E4h
	mov	dx,8Ch
	shr	ax,2h
	shr	dx,1h
	mul	dx
	add	ax,7h
	shr	ax,3h
	add	si,ax

l21CC_05FA:
	mov	cx,8Ch
	xor	dx,dx

l21CC_05FF:
	push	cx
	mov	cx,0E4h
	push	di

l21CC_0604:
	test	bh,1h
	jz	0626h

l21CC_0609:
	test	dx,7h
	jnz	061Eh

l21CC_060F:
	push	si
	mov	ax,dx
	shr	ax,3h
	inc	ax
	mov	si,[bp+6h]
	add	si,ax
	mov	al,[si]
	pop	si

l21CC_061E:
	inc	dx
	shl	al,1h
	jc	0626h

l21CC_0623:
	jmp	06A7h

l21CC_0626:
	push	ax
	mov	al,[si]
	inc	si
	mov	ah,[si]
	inc	si
	mov	bl,[si]
	inc	si
	shr	bl,1h
	jnc	0639h

l21CC_0634:
	mov	es:[di],ah
	jmp	063Ch

l21CC_0639:
	mov	es:[di],al

l21CC_063C:
	shr	bl,1h
	jnc	0646h

l21CC_0640:
	mov	es:[di+1h],ah
	jmp	064Ah

l21CC_0646:
	mov	es:[di+1h],al

l21CC_064A:
	shr	bl,1h
	jnc	0654h

l21CC_064E:
	mov	es:[di+2h],ah
	jmp	0658h

l21CC_0654:
	mov	es:[di+2h],al

l21CC_0658:
	shr	bl,1h
	jnc	0662h

l21CC_065C:
	mov	es:[di+3h],ah
	jmp	0666h

l21CC_0662:
	mov	es:[di+3h],al

l21CC_0666:
	shr	bl,1h
	jnc	0671h

l21CC_066A:
	mov	es:[di+140h],ah
	jmp	0676h

l21CC_0671:
	mov	es:[di+140h],al

l21CC_0676:
	shr	bl,1h
	jnc	0681h

l21CC_067A:
	mov	es:[di+141h],ah
	jmp	0686h

l21CC_0681:
	mov	es:[di+141h],al

l21CC_0686:
	shr	bl,1h
	jnc	0691h

l21CC_068A:
	mov	es:[di+142h],ah
	jmp	0696h

l21CC_0691:
	mov	es:[di+142h],al

l21CC_0696:
	shr	bl,1h
	jnc	06A1h

l21CC_069A:
	mov	es:[di+143h],ah
	jmp	06A6h

l21CC_06A1:
	mov	es:[di+143h],al

l21CC_06A6:
	pop	ax

l21CC_06A7:
	add	di,4h
	sub	cx,3h
	loop	06B1h

l21CC_06AF:
	jmp	06B4h

l21CC_06B1:
	jmp	0604h

l21CC_06B4:
	pop	di
	add	di,280h
	pop	cx
	dec	cx
	loop	06BFh

l21CC_06BD:
	jmp	06C2h

l21CC_06BF:
	jmp	05FFh

l21CC_06C2:
	pop	di
	pop	si
	pop	es
	pop	ds
	pop	bp
	retf

;; fn21CC_06C8: 21CC:06C8
;;   Called from:
;;     1D10:128D (in fn1D10_1153)
fn21CC_06C8 proc
	push	bp
	mov	bp,sp
	push	ds
	push	es
	push	esi
	push	edi
	mov	ax,cs:[07B3h]
	cmp	ax,4D2h
	jnz	06E3h

l21CC_06DA:
	mov	ax,cs:[07B9h]
	cmp	ax,10E1h
	jz	06F5h

l21CC_06E3:
	mov	ax,0A000h
	mov	es,ax
	mov	di,0h
	mov	ax,0FFFFh
	mov	cx,8000h

l21CC_06F1:
	rep stosw

l21CC_06F3:
	jmp	06F3h

l21CC_06F5:
	lds	si,[bp+6h]
	mov	bp,6h
	mov	ax,0A000h
	mov	es,ax
	mov	di,0C8Ah
	mov	al,[si]
	inc	si
	test	al,1h
	jz	070Dh

l21CC_070A:
	jmp	07BEh

l21CC_070D:
	mov	cx,46h

l21CC_0710:
	mov	cs:[07B7h],cx
	mov	cx,39h

l21CC_0718:
	mov	ax,[si]
	mov	bl,[si+2h]
	and	ebx,0Fh
	shl	bl,2h
	add	bx,bp
	mov	edx,cs:[bx]
	mov	bl,ah
	mov	bh,ah
	shl	ebx,10h
	mov	bl,ah
	mov	bh,ah
	and	ebx,edx
	mov	ah,al
	mov	cs:[07B5h],ax
	shl	eax,10h
	mov	ax,cs:[07B5h]
	not	edx
	and	eax,edx
	or	eax,ebx
	mov	es:[di],eax
	mov	ax,[si]
	mov	bl,[si+2h]
	add	si,3h
	and	ebx,0F0h
	shr	bl,2h
	add	bx,bp
	mov	edx,cs:[bx]
	mov	bl,ah
	mov	bh,ah
	shl	ebx,10h
	mov	bl,ah
	mov	bh,ah
	and	ebx,edx
	mov	ah,al
	mov	cs:[07B5h],ax
	shl	eax,10h
	mov	ax,cs:[07B5h]
	not	edx
	and	eax,edx
	or	eax,ebx
	mov	es:[di+140h],eax
	add	di,4h
	dec	cx
	jnz	0718h

l21CC_07A0:
	add	di,19Ch
	mov	cx,cs:[07B7h]
	loop	07BBh

l21CC_07AB:
	pop	edi
	pop	esi
	pop	es
	pop	ds
	pop	bp
	retf
21CC:07B3          D2 04 00 00 00 00 E1 10                   ........    

l21CC_07BB:
	jmp	0710h

l21CC_07BE:
	mov	bx,si
	add	bx,1F3h
	mov	al,[si]
	mov	cx,46h
	xor	edx,edx

l21CC_07CC:
	mov	cs:[07B7h],cx
	mov	cx,39h

l21CC_07D4:
	inc	dl
	cmp	dl,9h
	jnc	07F7h

l21CC_07DB:
	shl	al,1h
	jc	07FFh

l21CC_07DF:
	add	di,4h
	loop	07D4h

l21CC_07E4:
	add	di,19Ch
	mov	cx,cs:[07B7h]
	loop	07CCh

l21CC_07EF:
	pop	edi
	pop	esi
	pop	es
	pop	ds
	pop	bp
	retf

l21CC_07F7:
	inc	si
	mov	al,[si]
	xor	edx,edx
	jmp	07D4h

l21CC_07FF:
	mov	cs:[004Ah],si
	mov	cs:[0046h],dx
	mov	cs:[004Eh],ax
	mov	si,bx
	mov	ax,[si]
	mov	bl,[si+2h]
	and	ebx,0Fh
	shl	bl,2h
	add	bx,bp
	mov	edx,cs:[bx]
	mov	bl,ah
	mov	bh,ah
	shl	ebx,10h
	mov	bl,ah
	mov	bh,ah
	and	ebx,edx
	mov	ah,al
	mov	cs:[07B5h],ax
	shl	eax,10h
	mov	ax,cs:[07B5h]
	not	edx
	and	eax,edx
	or	eax,ebx
	mov	es:[di],eax
	mov	ax,[si]
	mov	bl,[si+2h]
	add	si,3h
	and	ebx,0F0h
	shr	bl,2h
	add	bx,bp
	mov	edx,cs:[bx]
	mov	bl,ah
	mov	bh,ah
	shl	ebx,10h
	mov	bl,ah
	mov	bh,ah
	and	ebx,edx
	mov	ah,al
	mov	cs:[07B5h],ax
	shl	eax,10h
	mov	ax,cs:[07B5h]
	not	edx
	and	eax,edx
	or	eax,ebx
	mov	es:[di+140h],eax
	mov	bx,si
	mov	dx,cs:[0046h]
	mov	ax,cs:[004Eh]
	mov	si,cs:[004Ah]
	jmp	07DFh

;; fn21CC_08A2: 21CC:08A2
;;   Called from:
;;     1D10:122C (in fn1D10_1153)
fn21CC_08A2 proc
	enter	0h,0h
	push	bp
	mov	bp,sp
	push	ds
	push	es
	push	si
	push	di
	lds	si,[bp+8h]
	add	si,2h
	xor	ch,ch
	mov	cl,[si]
	or	cl,cl
	jz	0A14h

l21CC_08BD:
	mov	ax,0A000h
	mov	es,ax
	mov	di,0C8Ah
	add	si,2h
	mov	bp,cx
	xor	bx,bx

l21CC_08CC:
	xor	dx,dx
	mov	eax,[si]
	add	si,4h
	xor	ah,ah
	and	ax,ax
	jz	08E3h

l21CC_08DA:
	mov	dh,al
	shl	ax,6h
	add	ax,dx
	add	di,ax

l21CC_08E3:
	shr	eax,10h
	xor	ah,ah
	mov	dx,ax

l21CC_08EB:
	mov	bl,[si]
	inc	si
	push	di

l21CC_08EF:
	xor	cx,cx
	mov	ax,[si]
	add	si,2h
	xchg	ah,ch
	add	di,ax
	test	ch,80h
	jz	09B0h

l21CC_0901:
	mov	al,[si]
	mov	ah,al
	shl	eax,10h
	mov	al,[si]
	inc	si
	mov	ah,al
	and	ch,7Fh
	inc	ch
	mov	cl,ch
	and	ch,3h
	jz	092Ch

l21CC_091A:
	shr	ch,1h
	jnc	0922h

l21CC_091E:
	mov	es:[di],al
	inc	di

l21CC_0922:
	shr	ch,1h
	jnc	092Ch

l21CC_0926:
	mov	es:[di],ax
	add	di,2h

l21CC_092C:
	shr	cl,2h
	jz	0A00h

l21CC_0933:
	test	di,1h
	jz	0981h

l21CC_0939:
	dec	cl
	jz	0977h

l21CC_093D:
	test	di,2h
	jnz	095Dh

l21CC_0943:
	mov	es:[di],al
	mov	es:[di+1h],ax
	add	di,3h

l21CC_094D:
	mov	es:[di],eax
	add	di,4h
	loop	094Dh

l21CC_0956:
	mov	es:[di],al
	inc	di
	jmp	0A00h

l21CC_095D:
	mov	es:[di],al
	inc	di

l21CC_0961:
	mov	es:[di],eax
	add	di,4h
	loop	0961h

l21CC_096A:
	mov	es:[di],ax
	mov	es:[di+2h],al
	add	di,3h
	jmp	0A00h

l21CC_0977:
	mov	es:[di],eax
	add	di,4h
	jmp	0A00h

l21CC_0981:
	cmp	cl,1h
	jz	0977h

l21CC_0986:
	test	di,2h
	jz	09A5h

l21CC_098C:
	dec	cl
	mov	es:[di],ax
	add	di,2h

l21CC_0994:
	mov	es:[di],eax
	add	di,4h
	loop	0994h

l21CC_099D:
	mov	es:[di],ax
	add	di,2h
	jmp	0A00h

l21CC_09A5:
	mov	es:[di],eax
	add	di,4h
	loop	09A5h

l21CC_09AE:
	jmp	0A00h

l21CC_09B0:
	inc	ch
	mov	cl,ch
	and	ch,3h
	jz	09C3h

l21CC_09B9:
	shr	ch,1h
	jnc	09BEh

l21CC_09BD:
	movsb

l21CC_09BE:
	shr	ch,1h
	jnc	09C3h

l21CC_09C2:
	movsw

l21CC_09C3:
	shr	cl,2h
	jz	0A00h

l21CC_09C8:
	test	di,1h
	jz	09ECh

l21CC_09CE:
	dec	cl
	jz	09E8h

l21CC_09D2:
	test	di,2h
	jnz	09E0h

l21CC_09D8:
	movsb
	movsw

l21CC_09DA:
	rep movsd

l21CC_09DD:
	movsb
	jmp	0A00h

l21CC_09E0:
	movsb

l21CC_09E1:
	rep movsd

l21CC_09E4:
	movsw
	movsb
	jmp	0A00h

l21CC_09E8:
	movsd
	jmp	0A00h

l21CC_09EC:
	test	di,2h
	jz	09FDh

l21CC_09F2:
	dec	cl
	jz	09E8h

l21CC_09F6:
	movsw

l21CC_09F7:
	rep movsd

l21CC_09FA:
	movsw
	jmp	0A00h

l21CC_09FD:
	rep movsd

l21CC_0A00:
	dec	bx
	jnz	08EFh

l21CC_0A05:
	pop	di
	add	di,140h
	dec	dx
	jnz	08EBh

l21CC_0A0F:
	dec	bp
