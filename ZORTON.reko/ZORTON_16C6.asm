;;; Segment 16C6 (16C6:0000)
16C6:0000 0A 16 48 16 0A 16 48 16                         ..H...H.       

;; fn16C6_0008: 16C6:0008
;;   Called from:
;;     268D:0168 (in main)
fn16C6_0008 proc
	xor	cl,cl
	pushf
	pop	bx
	mov	ax,bx
	and	ah,0Fh
	push	ax
	popf
	pushf
	pop	ax
	and	ah,0F0h
	cmp	ah,0F0h
	jz	0069h

l16C6_001D:
	mov	cl,2h
	or	bh,0F0h
	push	bx
	popf
	pushf
	pop	ax
	and	ah,0F0h
	jz	0069h

l16C6_002B:
	inc	cx
	push	eax
	push	ebx
	pushf
	pop	ebx
	mov	eax,ebx
	xor	eax,40000h
	push	eax
	popf
	pushf
	pop	eax
	xor	eax,ebx
	jz	0062h

l16C6_004A:
	inc	cx
	mov	eax,ebx
	xor	eax,200000h
	push	eax
	popf
	pushf
	pop	eax
	xor	eax,ebx
	jz	0062h
