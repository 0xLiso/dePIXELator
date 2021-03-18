;;; Segment 2331 (2331:0000)

;; fn2331_0000: 2331:0000
;;   Called from:
;;     2353:08F9 (in fn2353_075C)
fn2331_0000 proc
	enter	4h,0h
	mov	eax,[852Eh]
	mov	[bp-4h],eax
	cmp	dword ptr [852Eh],0h
	jz	0061h

l2331_0014:
	jmp	0022h

l2331_0016:
	les	bx,[bp-4h]
	mov	eax,es:[bx+5h]
	mov	[bp-4h],eax

l2331_0022:
	les	bx,[bp-4h]
	cmp	dword ptr es:[bx+5h],0h
	jnz	0016h

l2331_002D:
	push	9h
	call	far 0800h:07B4h
	pop	cx
	les	bx,[bp-4h]
	mov	es:[bx+7h],dx
	mov	es:[bx+5h],ax
	cmp	dword ptr [bp-4h],0h
	jnz	0053h

l2331_0047:
	push	ds
	push	8540h
	call	far 263Fh:04B6h
	add	sp,4h

l2331_0053:
	les	bx,[bp-4h]
	mov	eax,es:[bx+5h]
	mov	[bp-4h],eax
	jmp	008Ah

l2331_0061:
	push	9h
	call	far 0800h:07B4h
	pop	cx
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	cmp	dword ptr [bp-4h],0h
	jnz	0082h

l2331_0076:
	push	ds
	push	8540h
	call	far 263Fh:04B6h
	add	sp,4h

l2331_0082:
	mov	eax,[bp-4h]
	mov	[852Eh],eax

l2331_008A:
	cmp	dword ptr [bp-4h],0h
	jnz	009Dh

l2331_0091:
	push	ds
	push	8540h
	call	far 263Fh:04B6h
	add	sp,4h

l2331_009D:
	les	bx,[bp-4h]
	mov	eax,[bp+8h]
	mov	es:[bx+1h],eax
	mov	al,[bp+6h]
	mov	es:[bx],al
	mov	dword ptr es:[bx+5h],0h
	leave
	retf

;; fn2331_00BA: 2331:00BA
;;   Called from:
;;     0CE0:11D0 (in fn0CE0_08FC)
;;     1F0F:03CE (in fn1F0F_000F)
;;     2353:0939 (in fn2353_075C)
fn2331_00BA proc
	enter	2h,0h
	pushf
	pop	ax
	mov	[bp-2h],ax
	cli
	mov	bx,[0A51Eh]
	imul	bx,bx,5h
	mov	al,[bp+6h]
	mov	[bx+0A454h],al
	mov	bx,[0A51Eh]
	imul	bx,bx,5h
	mov	ax,[bp+0Ah]
	mov	dx,[bp+8h]
	mov	[bx+0A457h],ax
	mov	[bx+0A455h],dx
	inc	word ptr [0A51Eh]
	mov	ax,[0A51Eh]
	cmp	ax,28h
	jl	00F9h

l2331_00F3:
	mov	word ptr [0A51Eh],0h

l2331_00F9:
	mov	ax,[0A51Eh]
	cmp	ax,[0A51Ch]
	jnz	010Eh

l2331_0102:
	push	ds
	push	856Ah
	call	far 263Fh:04B6h
	add	sp,4h

l2331_010E:
	test	word ptr [bp-2h],200h
	jz	0116h

l2331_0115:
	sti

l2331_0116:
	leave
	retf

;; fn2331_0118: 2331:0118
;;   Called from:
;;     1D10:0321 (in fn1D10_02AE)
;;     1D10:0674 (in fn1D10_02AE)
;;     1F0F:038A (in fn1F0F_000F)
fn2331_0118 proc
	enter	4h,0h
	cmp	dword ptr [852Eh],0h
	jnz	012Fh

l2331_0124:
	mov	byte ptr [8536h],0h
	xor	dx,dx
	xor	ax,ax
	jmp	0165h

l2331_012F:
	les	bx,[852Eh]
	mov	al,es:[bx]
	mov	[8536h],al
	mov	eax,es:[bx+1h]
	mov	[8537h],eax
	mov	eax,es:[bx+5h]
	mov	[bp-4h],eax
	push	word ptr [8530h]
	push	bx
	call	far 0800h:0312h
	add	sp,4h
	mov	eax,[bp-4h]
	mov	[852Eh],eax
	mov	dx,ds
	mov	ax,8536h

l2331_0165:
	leave
	retf

;; fn2331_0167: 2331:0167
;;   Called from:
;;     0CE0:092B (in fn0CE0_08FC)
;;     0CE0:1187 (in fn0CE0_08FC)
;;     1ED7:0311 (in fn1ED7_000E)
;;     1ED7:0348 (in fn1ED7_000E)
;;     1F0F:0381 (in fn1F0F_000F)
;;     1F0F:076C (in fn1F0F_057A)
;;     1F0F:1109 (in fn1F0F_0BF7)
;;     268D:032E (in fn268D_0282)
fn2331_0167 proc
	enter	2h,0h
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[30A0h],0h
	jz	01B7h

l2331_0178:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	0Ah
	push	3C0000h
	push	0h
	call	far 216Eh:03D8h
	add	sp,0Eh
	call	far 0800h:2056h
	push	dx
	push	ax
	pop	eax
	mov	ebx,3E8h
	xor	edx,edx
	div	ebx
	push	ax
	push	32h
	call	far 0F2Bh:130Ah
	add	sp,6h

l2331_01B7:
	call	far 0800h:2390h
	or	ax,ax
	jz	01C5h

l2331_01C0:
	call	far 0800h:20A6h

l2331_01C5:
	mov	ax,[0A51Ch]
	cmp	ax,[0A51Eh]
	jnz	01D9h

l2331_01CE:
	mov	byte ptr [853Bh],0h
	xor	dx,dx
	xor	ax,ax
	jmp	0222h

l2331_01D9:
	pushf
	pop	ax
	mov	[bp-2h],ax
	cli
	mov	bx,[0A51Ch]
	imul	bx,bx,5h
	mov	al,[bx+0A454h]
	mov	[853Bh],al
	mov	bx,[0A51Ch]
	imul	bx,bx,5h
	mov	ax,[bx+0A457h]
	mov	dx,[bx+0A455h]
	mov	[853Eh],ax
	mov	[853Ch],dx
	inc	word ptr [0A51Ch]
	mov	ax,[0A51Ch]
	cmp	ax,28h
	jl	0215h

l2331_020F:
	mov	word ptr [0A51Ch],0h

l2331_0215:
	test	word ptr [bp-2h],200h
	jz	021Dh

l2331_021C:
	sti

l2331_021D:
	mov	dx,ds
	mov	ax,853Bh
