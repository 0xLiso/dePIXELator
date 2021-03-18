;;; Segment 0E11 (0E11:0000)
l0CE0_1310	dw	0x11DA
l0CE0_1312	dw	0x11CB

;; fn0E11_0004: 0E11:0004
;;   Called from:
;;     1D10:1214 (in fn1D10_1153)
fn0E11_0004 proc
	push	bp
	mov	bp,sp
	push	ds
	push	es
	push	si
	push	di
	lds	si,[bp+0Eh]
	mov	cl,[si]
	inc	si
	mov	ch,[si]
	inc	si
	mov	al,cl
	or	al,ch
	jz	0039h

l0E11_001A:
	mov	ax,[bp+14h]
	push	ax
	mov	ax,[bp+12h]
	push	ax
	mov	al,ch
	cbw
	push	ax
	mov	al,cl
	cbw
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	add	sp,10h

l0E11_0039:
	mov	cl,[si]
	or	cl,cl
	jnz	0042h

l0E11_003F:
	jmp	00D5h

l0E11_0042:
	add	si,2h

l0E11_0045:
	mov	dl,[si]
	add	si,2h
	mov	dh,[si]
	add	si,2h
	add	[bp+8h],dl
	les	di,[bp+12h]
	mov	ax,[bp+8h]
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
	add	ax,[bp+6h]
	add	di,ax
	push	dx

l0E11_007E:
	mov	ch,[si]
	inc	si
	push	di

l0E11_0082:
	mov	bl,[si]
	inc	si
	mov	bh,[si]
	inc	si
	mov	al,bl
	mov	ah,0h
	add	di,ax
	test	bh,80h
	jz	00ACh

l0E11_0093:
	push	cx
	mov	cl,bh
	and	cx,7Fh
	inc	cx
	cld
	mov	al,[si]
	mov	ah,al
	inc	si
	shr	cx,1h
	jnc	00A5h

l0E11_00A4:
	stosb

l0E11_00A5:
	jcxz	00A9h

l0E11_00A7:
	rep stosw

l0E11_00A9:
	pop	cx
	jmp	00BDh

l0E11_00AC:
	push	cx
	mov	cl,bh
	mov	ch,0h
	inc	cx
	cld
	shr	cx,1h
	jnc	00B8h

l0E11_00B7:
	movsb

l0E11_00B8:
	jcxz	00BCh

l0E11_00BA:
	rep movsw

l0E11_00BC:
	pop	cx

l0E11_00BD:
	dec	ch
	jnz	0082h

l0E11_00C1:
	pop	di
	add	di,140h
	dec	dh
	jnz	007Eh

l0E11_00CA:
	pop	dx
	add	[bp+8h],dh
	dec	cl
	jz	00D5h

l0E11_00D2:
	jmp	0045h

l0E11_00D5:
	pop	di
	pop	si
	pop	es
	pop	ds
	pop	bp
	retf

;; fn0E11_00DB: 0E11:00DB
;;   Called from:
;;     1D10:1272 (in fn1D10_1153)
fn0E11_00DB proc
	push	bp
	mov	bp,sp
	push	ds
	push	es
	push	si
	push	di
	lds	si,[bp+0Eh]
	les	di,[bp+12h]
	mov	ax,[bp+8h]
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
	add	ax,[bp+6h]
	add	di,ax
	mov	bh,[si]
	inc	si
	test	bh,1h
	jz	0131h

l0E11_0118:
	mov	ax,[bp+0Ah]
	mov	dx,[bp+0Ch]
	shr	ax,1h
	shr	ax,1h
	shr	dx,1h
	mul	dx
	add	ax,7h
	shr	ax,1h
	shr	ax,1h
	shr	ax,1h
	add	si,ax

l0E11_0131:
	mov	cx,[bp+0Ch]
	xor	dx,dx

l0E11_0136:
	push	cx
	mov	cx,[bp+0Ah]
	push	di

l0E11_013B:
	test	bh,1h
	jz	0160h

l0E11_0140:
	test	dx,7h
	jnz	0158h

l0E11_0146:
	push	si
	mov	ax,dx
	shr	ax,1h
	shr	ax,1h
	shr	ax,1h
	inc	ax
	mov	si,[bp+0Eh]
	add	si,ax
	mov	al,[si]
	pop	si

l0E11_0158:
	inc	dx
	shl	al,1h
	jc	0160h

l0E11_015D:
	jmp	01E1h

l0E11_0160:
	push	ax
	mov	al,[si]
	inc	si
	mov	ah,[si]
	inc	si
	mov	bl,[si]
	inc	si
	shr	bl,1h
	jnc	0173h

l0E11_016E:
	mov	es:[di],ah
	jmp	0176h

l0E11_0173:
	mov	es:[di],al

l0E11_0176:
	shr	bl,1h
	jnc	0180h

l0E11_017A:
	mov	es:[di+1h],ah
	jmp	0184h

l0E11_0180:
	mov	es:[di+1h],al

l0E11_0184:
	shr	bl,1h
	jnc	018Eh

l0E11_0188:
	mov	es:[di+2h],ah
	jmp	0192h

l0E11_018E:
	mov	es:[di+2h],al

l0E11_0192:
	shr	bl,1h
	jnc	019Ch

l0E11_0196:
	mov	es:[di+3h],ah
	jmp	01A0h

l0E11_019C:
	mov	es:[di+3h],al

l0E11_01A0:
	shr	bl,1h
	jnc	01ABh

l0E11_01A4:
	mov	es:[di+140h],ah
	jmp	01B0h

l0E11_01AB:
	mov	es:[di+140h],al

l0E11_01B0:
	shr	bl,1h
	jnc	01BBh

l0E11_01B4:
	mov	es:[di+141h],ah
	jmp	01C0h

l0E11_01BB:
	mov	es:[di+141h],al

l0E11_01C0:
	shr	bl,1h
	jnc	01CBh

l0E11_01C4:
	mov	es:[di+142h],ah
	jmp	01D0h

l0E11_01CB:
	mov	es:[di+142h],al

l0E11_01D0:
	shr	bl,1h
	jnc	01DBh

l0E11_01D4:
	mov	es:[di+143h],ah
	jmp	01E0h

l0E11_01DB:
	mov	es:[di+143h],al

l0E11_01E0:
	pop	ax

l0E11_01E1:
	add	di,4h
	sub	cx,3h
	loop	01EBh

l0E11_01E9:
	jmp	01EEh

l0E11_01EB:
	jmp	013Bh

l0E11_01EE:
	pop	di
	add	di,280h
	pop	cx
	dec	cx
	loop	01F9h

l0E11_01F7:
	jmp	01FCh

l0E11_01F9:
	jmp	0136h

l0E11_01FC:
	pop	di
	pop	si
	pop	es
	pop	ds
