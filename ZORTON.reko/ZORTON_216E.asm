;;; Segment 216E (216E:0000)

;; fn216E_0000: 216E:0000
;;   Called from:
;;     0CE0:1015 (in fn0CE0_08FC)
;;     226D:05B7 (in fn226D_057F)
;;     2425:0271 (in fn2425_01E8)
;;     2476:0023 (in fn2476_000A)
;;     2476:0047 (in fn2476_000A)
;;     2476:006B (in fn2476_000A)
;;     2476:008F (in fn2476_000A)
;;     2476:00FB (in fn2476_000A)
;;     2504:0B05 (in fn2504_094D)
;;     2504:0BED (in fn2504_094D)
fn216E_0000 proc
	push	bp
	mov	bp,sp
	push	bp
	mov	bp,sp
	push	ds
	push	di
	push	si
	mov	ax,[bp+0Ah]
	xor	dx,dx
	mov	dh,al
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	add	ax,dx
	add	ax,[bp+8h]
	mov	di,ax
	add	di,[bp+10h]
	mov	dx,[bp+12h]
	mov	es,dx
	mov	dx,[bp+0Eh]
	mov	ds,dx
	mov	si,[bp+0Ch]
	cld
	lodsw
	mov	bx,ax
	lodsw
	mov	cx,ax
	cmp	bx,1h
	jnz	0048h

l216E_003F:
	movsb
	add	di,13Fh
	loop	003Fh

l216E_0046:
	jmp	0063h

l216E_0048:
	mov	ax,140h
	sub	ax,bx
	test	di,1h
	jnz	0078h

l216E_0053:
	shr	bx,1h
	jc	0069h

l216E_0057:
	mov	dx,cx
	mov	cx,bx

l216E_005B:
	rep movsw

l216E_005D:
	add	di,ax
	mov	cx,dx
	loop	0057h

l216E_0063:
	pop	si
	pop	di
	pop	ds
	pop	bp
	pop	bp
	retf

l216E_0069:
	mov	dx,cx
	mov	cx,bx

l216E_006D:
	rep movsw

l216E_006F:
	movsb
	add	di,ax
	mov	cx,dx
	loop	0069h

l216E_0076:
	jmp	0063h

l216E_0078:
	shr	bx,1h
	jc	008Dh

l216E_007C:
	dec	bx

l216E_007D:
	mov	dx,cx
	mov	cx,bx
	movsb

l216E_0082:
	rep movsw

l216E_0084:
	movsb
	add	di,ax
	mov	cx,dx
	loop	007Dh

l216E_008B:
	jmp	0063h

l216E_008D:
	mov	dx,cx
	mov	cx,bx
	movsb

l216E_0092:
	rep movsw

l216E_0094:
	add	di,ax
	mov	cx,dx
	loop	008Dh

l216E_009A:
	jmp	0063h

;; fn216E_009C: 216E:009C
;;   Called from:
;;     2425:0395 (in fn2425_0360)
fn216E_009C proc
	push	bp
	mov	bp,sp
	push	bp
	mov	bp,sp
	push	ds
	push	di
	push	si
	mov	ax,[bp+0Ah]
	xor	dx,dx
	mov	dh,al
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	add	ax,dx
	add	ax,[bp+8h]
	mov	di,ax
	add	di,[bp+10h]
	mov	dx,[bp+12h]
	mov	es,dx
	mov	dx,[bp+0Eh]
	mov	ds,dx
	mov	si,[bp+0Ch]
	cld
	lodsw
	mov	bx,ax
	lodsw
	mov	cx,ax
	cmp	bx,1h
	jnz	00E4h

l216E_00DB:
	movsb
	add	di,13Fh
	loop	00DBh

l216E_00E2:
	jmp	00FFh

l216E_00E4:
	mov	ax,140h
	sub	ax,bx
	test	di,1h
	jnz	0114h

l216E_00EF:
	shr	bx,1h
	jc	0105h

l216E_00F3:
	mov	dx,cx
	mov	cx,bx

l216E_00F7:
	rep movsw

l216E_00F9:
	add	di,ax
	mov	cx,dx
	loop	00F3h

l216E_00FF:
	pop	si
	pop	di
	pop	ds
	pop	bp
	pop	bp
	retf

l216E_0105:
	mov	dx,cx
	mov	cx,bx

l216E_0109:
	rep movsw

l216E_010B:
	movsb
	add	di,ax
	mov	cx,dx
	loop	0105h

l216E_0112:
	jmp	00FFh

l216E_0114:
	shr	bx,1h
	jc	0129h

l216E_0118:
	dec	bx

l216E_0119:
	mov	dx,cx
	mov	cx,bx
	movsb

l216E_011E:
	rep movsw

l216E_0120:
	movsb
	add	di,ax
	mov	cx,dx
	loop	0119h

l216E_0127:
	jmp	00FFh

l216E_0129:
	mov	dx,cx
	mov	cx,bx
	movsb

l216E_012E:
	rep movsw

l216E_0130:
	add	di,ax
	mov	cx,dx
	loop	0129h

l216E_0136:
	jmp	00FFh

;; fn216E_0138: 216E:0138
;;   Called from:
;;     2425:03C4 (in fn2425_0360)
;;     2476:02F9 (in fn2476_0282)
;;     2504:0A8C (in fn2504_094D)
;;     2504:0B8E (in fn2504_094D)
fn216E_0138 proc
	push	bp
	mov	bp,sp
	push	bp
	mov	bp,sp
	push	ds
	push	di
	push	si
	mov	ax,[bp+12h]
	mov	es,ax
	mov	di,[bp+10h]
	mov	ax,[bp+0Eh]
	mov	ds,ax
	mov	si,[bp+0Ch]
	cld
	mov	bx,[si]
	movsw
	mov	cx,[si]
	movsw
	mov	ax,[bp+0Ah]
	xor	dx,dx
	mov	dh,al
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	add	ax,dx
	add	ax,[bp+8h]
	mov	si,ax
	add	si,[bp+14h]
	mov	dx,[bp+16h]
	mov	ds,dx
	cmp	bx,1h
	jnz	0188h

l216E_017F:
	movsb
	add	si,13Fh
	loop	017Fh

l216E_0186:
	jmp	01A3h

l216E_0188:
	mov	ax,140h
	sub	ax,bx
	test	si,1h
	jnz	01B8h

l216E_0193:
	shr	bx,1h
	jc	01A9h

l216E_0197:
	mov	dx,cx
	mov	cx,bx

l216E_019B:
	rep movsw

l216E_019D:
	add	si,ax
	mov	cx,dx
	loop	0197h

l216E_01A3:
	pop	si
	pop	di
	pop	ds
	pop	bp
	pop	bp
	retf

l216E_01A9:
	mov	dx,cx
	mov	cx,bx

l216E_01AD:
	rep movsw

l216E_01AF:
	movsb
	add	si,ax
	mov	cx,dx
	loop	01A9h

l216E_01B6:
	jmp	01A3h

l216E_01B8:
	shr	bx,1h
	jc	01CDh

l216E_01BC:
	dec	bx

l216E_01BD:
	mov	dx,cx
	mov	cx,bx
	movsb

l216E_01C2:
	rep movsw

l216E_01C4:
	movsb
	add	si,ax
	mov	cx,dx
	loop	01BDh

l216E_01CB:
	jmp	01A3h

l216E_01CD:
	mov	dx,cx
	mov	cx,bx
	movsb

l216E_01D2:
	rep movsw

l216E_01D4:
	add	si,ax
	mov	cx,dx
	loop	01CDh

l216E_01DA:
	jmp	01A3h

;; fn216E_01DC: 216E:01DC
;;   Called from:
;;     0CE0:0E7A (in fn0CE0_08FC)
;;     0F2B:137C (in fn0F2B_130A)
;;     1F0F:10BC (in fn1F0F_0BF7)
;;     226D:0187 (in fn226D_00F9)
;;     226D:0211 (in fn226D_00F9)
;;     226D:028D (in fn226D_00F9)
;;     226D:0480 (in fn226D_00F9)
;;     226D:0558 (in fn226D_00F9)
;;     226D:0636 (in fn226D_057F)
;;     226D:06D8 (in fn226D_0656)
;;     226D:0739 (in fn226D_0656)
;;     226D:077A (in fn226D_0656)
;;     226D:082B (in fn226D_0656)
;;     226D:08A2 (in fn226D_0656)
;;     226D:0919 (in fn226D_0656)
;;     226D:0990 (in fn226D_0656)
;;     226D:0A03 (in fn226D_0656)
;;     226D:0BB1 (in fn226D_0656)
;;     23F8:00D4 (in fn23F8_00A0)
;;     23F8:014C (in fn23F8_00A0)
;;     2425:03E1 (in fn2425_0360)
;;     2476:00B3 (in fn2476_000A)
;;     2476:00D7 (in fn2476_000A)
;;     2476:0187 (in fn2476_0104)
;;     2504:0AB4 (in fn2504_094D)
;;     2504:0BB6 (in fn2504_094D)
fn216E_01DC proc
	push	bp
	mov	bp,sp
	push	bp
	mov	bp,sp
	push	ds
	push	di
	push	si
	push	dx
	push	cx
	push	es
	mov	ax,[bp+0Ah]
	xor	dx,dx
	mov	dh,al
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	add	ax,dx
	add	ax,[bp+8h]
	mov	di,ax
	add	di,[bp+10h]
	mov	dx,[bp+12h]
	mov	es,dx
	mov	dx,[bp+0Eh]
	mov	ds,dx
	mov	si,[bp+0Ch]
	cld
	lodsw
	mov	bx,ax
	lodsw
	mov	cx,ax
	cmp	bx,1h
	jnz	022Eh

l216E_021E:
	lodsb
	and	al,al
	jz	0226h

l216E_0223:
	mov	es:[di],al

l216E_0226:
	add	di,140h
	loop	021Eh

l216E_022C:
	jmp	028Ah

l216E_022E:
	mov	bp,140h
	sub	bp,bx
	test	di,1h
	jz	023Ch

l216E_0239:
	jmp	0300h

l216E_023C:
	shr	bx,1h
	jc	0293h

l216E_0240:
	mov	dx,cx
	mov	cx,bx

l216E_0244:
	lodsw
	test	ah,ah
	jz	024Fh

l216E_0249:
	test	al,al
	jnz	0281h

l216E_024D:
	jmp	0270h

l216E_024F:
	cmp	ah,al
	jnz	0260h

l216E_0253:
	add	di,2h
	loop	0244h

l216E_0258:
	add	di,bp
	mov	cx,dx
	loop	0240h

l216E_025E:
	jmp	028Ah

l216E_0260:
	mov	es:[di],al
	add	di,2h
	loop	0244h

l216E_0268:
	add	di,bp
	mov	cx,dx
	loop	0240h

l216E_026E:
	jmp	028Ah

l216E_0270:
	mov	es:[di+1h],ah
	add	di,2h
	loop	0244h

l216E_0279:
	add	di,bp
	mov	cx,dx
	loop	0240h

l216E_027F:
	jmp	028Ah

l216E_0281:
	stosw
	loop	0244h

l216E_0284:
	add	di,bp
	mov	cx,dx
	loop	0240h

l216E_028A:
	pop	es
	pop	cx
	pop	dx
	pop	si
	pop	di
	pop	ds
	pop	bp
	pop	bp
	retf

l216E_0293:
	inc	bp

l216E_0294:
	mov	dx,cx
	mov	cx,bx

l216E_0298:
	lodsw
	test	ah,ah
	jz	02A3h

l216E_029D:
	test	al,al
	jnz	02EDh

l216E_02A1:
	jmp	02D4h

l216E_02A3:
	cmp	ah,al
	jnz	02BCh

l216E_02A7:
	add	di,2h
	loop	0298h

l216E_02AC:
	lodsb
	and	al,al
	jz	02B4h

l216E_02B1:
	mov	es:[di],al

l216E_02B4:
	add	di,bp
	mov	cx,dx
	loop	0294h

l216E_02BA:
	jmp	028Ah

l216E_02BC:
	mov	es:[di],al
	add	di,2h
	loop	0298h

l216E_02C4:
	lodsb
	and	al,al
	jz	02CCh

l216E_02C9:
	mov	es:[di],al

l216E_02CC:
	add	di,bp
	mov	cx,dx
	loop	0294h

l216E_02D2:
	jmp	028Ah

l216E_02D4:
	mov	es:[di+1h],ah
	add	di,2h
	loop	0298h

l216E_02DD:
	lodsb
	and	al,al
	jz	02E5h

l216E_02E2:
	mov	es:[di],al

l216E_02E5:
	add	di,bp
	mov	cx,dx
	loop	0294h

l216E_02EB:
	jmp	028Ah

l216E_02ED:
	stosw
	loop	0298h

l216E_02F0:
	lodsb
	and	al,al
	jz	02F8h

l216E_02F5:
	mov	es:[di],al

l216E_02F8:
	add	di,bp
	mov	cx,dx
	loop	0294h

l216E_02FE:
	jmp	028Ah

l216E_0300:
	shr	bx,1h
	jc	037Fh

l216E_0304:
	dec	bx
	inc	bp

l216E_0306:
	mov	dx,cx
	mov	cx,bx
	lodsb
	and	al,al
	jz	0312h

l216E_030F:
	mov	es:[di],al

l216E_0312:
	inc	di

l216E_0313:
	lodsw
	test	ah,ah
	jz	031Eh

l216E_0318:
	test	al,al
	jnz	036Bh

l216E_031C:
	jmp	0351h

l216E_031E:
	cmp	ah,al
	jnz	0338h

l216E_0322:
	add	di,2h
	loop	0313h

l216E_0327:
	lodsb
	and	al,al
	jz	032Fh

l216E_032C:
	mov	es:[di],al

l216E_032F:
	add	di,bp
	mov	cx,dx
	loop	0306h

l216E_0335:
	jmp	028Ah

l216E_0338:
	mov	es:[di],al
	add	di,2h
	loop	0313h

l216E_0340:
	lodsb
	and	al,al
	jz	0348h

l216E_0345:
	mov	es:[di],al

l216E_0348:
	add	di,bp
	mov	cx,dx
	loop	0306h

l216E_034E:
	jmp	028Ah

l216E_0351:
	mov	es:[di+1h],ah
	add	di,2h
	loop	0313h

l216E_035A:
	lodsb
	and	al,al
	jz	0362h

l216E_035F:
	mov	es:[di],al

l216E_0362:
	add	di,bp
	mov	cx,dx
	loop	0306h

l216E_0368:
	jmp	028Ah

l216E_036B:
	stosw
	loop	0313h

l216E_036E:
	lodsb
	and	al,al
	jz	0376h

l216E_0373:
	mov	es:[di],al

l216E_0376:
	add	di,bp
	mov	cx,dx
	loop	0306h

l216E_037C:
	jmp	028Ah

l216E_037F:
	mov	dx,cx
	mov	cx,bx
	lodsb
	and	al,al
	jz	038Bh

l216E_0388:
	mov	es:[di],al

l216E_038B:
	inc	di

l216E_038C:
	lodsw
	test	ah,ah
	jz	0397h

l216E_0391:
	test	al,al
	jnz	03CCh

l216E_0395:
	jmp	03BAh

l216E_0397:
	cmp	ah,al
	jnz	03A9h

l216E_039B:
	add	di,2h
	loop	038Ch

l216E_03A0:
	add	di,bp
	mov	cx,dx
	loop	037Fh

l216E_03A6:
	jmp	028Ah

l216E_03A9:
	mov	es:[di],al
	add	di,2h
	loop	038Ch

l216E_03B1:
	add	di,bp
	mov	cx,dx
	loop	037Fh

l216E_03B7:
	jmp	028Ah

l216E_03BA:
	mov	es:[di+1h],ah
	add	di,2h
	loop	038Ch

l216E_03C3:
	add	di,bp
	mov	cx,dx
	loop	037Fh

l216E_03C9:
	jmp	028Ah

l216E_03CC:
	stosw
	loop	038Ch

l216E_03CF:
	add	di,bp
	mov	cx,dx
	loop	037Fh

l216E_03D5:
	jmp	028Ah

;; fn216E_03D8: 216E:03D8
;;   Called from:
;;     1F0F:1085 (in fn1F0F_0BF7)
;;     226D:03E6 (in fn226D_00F9)
;;     2331:018E (in fn2331_0167)
;;     2425:020B (in fn2425_01E8)
;;     2476:02D6 (in fn2476_0282)
fn216E_03D8 proc
	push	bp
	mov	bp,sp
	push	bp
	mov	bp,sp
	push	si
	push	di
	push	cx
	push	dx
	push	es
	mov	ax,[bp+0Ah]
	xor	dx,dx
	mov	dh,al
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	add	ax,dx
	add	ax,[bp+8h]
	mov	di,ax
	add	di,[bp+12h]
	mov	dx,[bp+14h]
	mov	es,dx
	mov	bx,[bp+0Ch]
	mov	cx,[bp+0Eh]
	mov	al,[bp+10h]
	mov	ah,al
	cmp	bx,1h
	jnz	041Eh

l216E_0415:
	stosb
	add	di,13Fh
	loop	0415h

l216E_041C:
	jmp	0439h

l216E_041E:
	mov	si,140h
	sub	si,bx
	test	di,1h
	jnz	0450h

l216E_0429:
	shr	bx,1h
	jc	0441h

l216E_042D:
	mov	dx,cx
	mov	cx,bx

l216E_0431:
	rep stosw

l216E_0433:
	add	di,si
	mov	cx,dx
	loop	042Dh

l216E_0439:
	pop	es
	pop	dx
	pop	cx
	pop	di
	pop	si
	pop	bp
	pop	bp
	retf

l216E_0441:
	mov	dx,cx
	mov	cx,bx

l216E_0445:
	rep stosw

l216E_0447:
	stosb
	add	di,si
	mov	cx,dx
	loop	0441h

l216E_044E:
	jmp	0439h

l216E_0450:
	shr	bx,1h
	jc	0465h

l216E_0454:
	dec	bx

l216E_0455:
	mov	dx,cx
	mov	cx,bx
	stosb

l216E_045A:
	rep stosw

l216E_045C:
	stosb
	add	di,si
	mov	cx,dx
	loop	0455h

l216E_0463:
	jmp	0439h

l216E_0465:
	mov	dx,cx
	mov	cx,bx
	stosb

l216E_046A:
	rep stosw

l216E_046C:
	add	di,si
	mov	cx,dx
	loop	0465h

l216E_0472:
	jmp	0439h
216E:0474             55 8B EC 55 8B EC 1E 56 57 51 52 06     U..U...VWQR.
216E:0480 8B 46 0A BA 40 01 F7 E2 03 46 08 8B F8 B8 00 A0 .F..@....F......
216E:0490 8E C0 8B 46 12 8B 56 18 F7 E2 03 46 10 03 46 14 ...F..V....F..F.
216E:04A0 8B F0 8B 46 16 8E D8 FC 8B 4E 0C 8B 56 0E 51 57 ...F.....N..V.QW
216E:04B0 56 F3 A4 5E 5F 59 81 C7 40 01 03 76 18 4A 75 EE V..^_Y..@..v.Ju.
216E:04C0 07 5A 59 5F 5E 1F 5D 5D CB                      .ZY_^.]].      

;; fn216E_04C9: 216E:04C9
;;   Called from:
;;     226D:0155 (in fn226D_00F9)
;;     226D:04E7 (in fn226D_00F9)
;;     226D:06B4 (in fn226D_0656)
;;     226D:0715 (in fn226D_0656)
;;     226D:0807 (in fn226D_0656)
;;     226D:087E (in fn226D_0656)
;;     226D:08F5 (in fn226D_0656)
;;     226D:096C (in fn226D_0656)
;;     226D:0B8D (in fn226D_0656)
;;     2476:0333 (in fn2476_0282)
;;     2476:03A0 (in fn2476_0362)
fn216E_04C9 proc
	push	bp
	mov	bp,sp
	push	bp
	mov	bp,sp
	push	ds
	push	si
	push	di
	push	es
	mov	ax,[bp+0Ah]
	xor	dx,dx
	mov	dh,al
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	shl	ax,1h
	add	ax,dx
	add	ax,[bp+8h]
	mov	di,ax
	add	di,[bp+1Ah]
	mov	dx,[bp+1Ch]
	mov	es,dx
	mov	dx,[bp+16h]
	mov	ds,dx
	mov	si,[bp+14h]
	cld
	mov	dx,[bp+18h]
	mov	ax,[bp+12h]
	mul	dx
	mov	dx,[bp+18h]
	add	ax,[bp+10h]
	add	si,ax
	mov	bx,[bp+0Ch]
	mov	cx,[bp+0Eh]
	cmp	bx,1h
	jnz	0525h

l216E_0519:
	dec	dx

l216E_051A:
	movsb
	add	di,13Fh
	add	si,dx
	loop	051Ah

l216E_0523:
	jmp	0544h

l216E_0525:
	mov	ax,140h
	sub	ax,bx
	sub	dx,bx
	test	di,1h
	jnz	055Ch

l216E_0532:
	shr	bx,1h
	jc	054Bh

l216E_0536:
	mov	bp,cx
	mov	cx,bx

l216E_053A:
	rep movsw

l216E_053C:
	add	di,ax
	add	si,dx
	mov	cx,bp
	loop	0536h

l216E_0544:
	pop	es
	pop	di
	pop	si
	pop	ds
	pop	bp
	pop	bp
	retf

l216E_054B:
	mov	bp,cx
	mov	cx,bx

l216E_054F:
	rep movsw

l216E_0551:
	movsb
	add	di,ax
	add	si,dx
	mov	cx,bp
	loop	054Bh

l216E_055A:
	jmp	0544h

l216E_055C:
	shr	bx,1h
	jc	0573h

l216E_0560:
	dec	bx

l216E_0561:
	mov	bp,cx
	mov	cx,bx
	movsb

l216E_0566:
	rep movsw

l216E_0568:
	movsb
	add	di,ax
	add	si,dx
	mov	cx,bp
	loop	0561h

l216E_0571:
	jmp	0544h

l216E_0573:
	mov	bp,cx
	mov	cx,bx
	movsb

l216E_0578:
	rep movsw

l216E_057A:
	add	di,ax
	add	si,dx
	mov	cx,bp
	loop	0573h

l216E_0582:
	jmp	0544h

;; fn216E_0584: 216E:0584
;;   Called from:
;;     226D:0C0B (in fn226D_0BC6)
fn216E_0584 proc
	push	bp
	mov	bp,sp
	push	di
	push	si
	push	es
	mov	ax,0A000h
	mov	es,ax
	mov	ax,[bp+8h]
	mov	dx,140h
	mul	dx
	add	ax,[bp+6h]
	mov	di,ax
	cld
	mov	cx,[bp+0Ch]
	cmp	cx,1h
	jle	05E0h

l216E_05A5:
	mov	ax,[bp+0Ah]
	cmp	ax,1h
	jle	05E0h

l216E_05AD:
	push	cx
	mov	cx,[bp+0Ah]
	mov	al,[bp+0Eh]

l216E_05B4:
	pop	si
	push	si
	cmp	si,[bp+0Ch]
	jz	05CCh

l216E_05BB:
	cmp	si,1h
	jz	05CCh

l216E_05C0:
	cmp	cx,[bp+0Ah]
	jz	05CCh

l216E_05C5:
	cmp	cx,1h
	jz	05CCh

l216E_05CA:
	jmp	05CFh

l216E_05CC:
	mov	es:[di],al

l216E_05CF:
	inc	di
	loop	05B4h

l216E_05D2:
	sub	di,[bp+0Ah]
	add	di,140h
	pop	cx
	jmp	05DEh

l216E_05DC:
	jmp	05ADh

l216E_05DE:
	loop	05DCh
