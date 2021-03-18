;;; Segment 1ED0 (1ED0:0000)
1ED0:0000 A5 7C 9A 01 06 76 24 C9 CB                      .|...v$..      

;; fn1ED0_0009: 1ED0:0009
;;   Called from:
;;     1D10:0319 (in fn1D10_02AE)
;;     1D10:0EB5 (in fn1D10_0E66)
fn1ED0_0009 proc
	enter	8h,0h
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[0A18Ah]
	call	far 0800h:1109h
	push	dx
	push	ax
	pop	eax
	pop	cx
	mov	[bp-4h],eax
	push	1h
	les	bx,[bp+6h]
	mov	eax,es:[bx]
	sub	eax,[bp-4h]
	push	eax
	mov	ax,28BAh
	mov	es,ax
	push	word ptr es:[0A18Ah]
	call	far 0800h:06ABh
	push	dx
	push	ax
	pop	eax
	add	sp,8h
	mov	[bp-8h],eax
	cmp	dword ptr [bp-8h],0FFh
	jnz	0061h

l1ED0_0055:
	push	ds
	push	7D98h
	call	far 263Fh:04B6h
	add	sp,4h

l1ED0_0061:
	les	bx,[bp+6h]
	mov	eax,es:[bx]
	cmp	eax,[bp-8h]
	jz	007Ah

l1ED0_006E:
	push	ds
	push	7DB0h
