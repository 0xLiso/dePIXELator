;;; Segment 23F8 (23F8:0000)
23F8:0000 83 C4 06 CB                                     ....           

;; fn23F8_0004: 23F8:0004
;;   Called from:
;;     1ED7:01F6 (in fn1ED7_000E)
;;     1F0F:0030 (in fn1F0F_000F)
fn23F8_0004 proc
	mov	[87D2h],ds
	mov	word ptr [87D0h],87D8h
	mov	[87ECh],ds
	mov	word ptr [87EAh],87C2h
	xor	eax,eax
	mov	[87D4h],eax
	mov	[87E6h],eax
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[85E8h],14Ah
	mov	byte ptr [87F3h],0h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[85A8h],14Ah
	mov	byte ptr [87F3h],0h
	mov	[8848h],ds
	mov	word ptr [8846h],87C2h
	nop
	push	cs
	call	00A0h
	retf

;; fn23F8_0055: 23F8:0055
;;   Called from:
;;     1ED7:0201 (in fn1ED7_000E)
;;     1ED7:020F (in fn1ED7_000E)
;;     1ED7:021D (in fn1ED7_000E)
;;     1F0F:0180 (in fn1F0F_000F)
;;     1F0F:01D9 (in fn1F0F_000F)
;;     1F0F:0232 (in fn1F0F_000F)
fn23F8_0055 proc
	enter	4h,0h
	mov	[bp-2h],ds
	mov	word ptr [bp-4h],87C2h
	jmp	0075h

l23F8_0063:
	les	bx,[bp-4h]
	mov	eax,es:[bx+0Eh]
	mov	[bp-4h],eax
	cmp	eax,[bp+6h]
	jz	009Eh

l23F8_0075:
	les	bx,[bp-4h]
	cmp	dword ptr es:[bx+0Eh],0h
	jnz	0063h

l23F8_0080:
	mov	eax,[bp+6h]
	mov	es:[bx+0Eh],eax
	les	bx,[bp+6h]
	mov	eax,[bp-4h]
	mov	es:[bx+12h],eax
	mov	dword ptr es:[bx+0Eh],0h

l23F8_009E:
	leave
	retf

;; fn23F8_00A0: 23F8:00A0
;;   Called from:
;;     1ED7:0225 (in fn1ED7_000E)
;;     1F0F:0247 (in fn1F0F_000F)
;;     1F0F:0279 (in fn1F0F_000F)
;;     1F0F:02C0 (in fn1F0F_000F)
;;     1F0F:062C (in fn1F0F_057A)
;;     23F8:0050 (in fn23F8_0004)
;;     23F8:0247 (in fn23F8_01EB)
fn23F8_00A0 proc
	enter	6h,0h
	mov	word ptr [bp-6h],0Eh
	mov	[bp-2h],ds
	mov	word ptr [bp-4h],87C2h
	cli
	call	far 2425h:01E8h
	sti
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8B2h]
	push	0B00F9h
	call	far 216Eh:01DCh
	add	sp,0Ch
	jmp	00FBh

l23F8_00DE:
	les	bx,[bp-4h]
	mov	byte ptr es:[bx+5h],0h
	les	bx,es:[bx+6h]
	mov	word ptr es:[bx],14Ah
	les	bx,[bp-4h]
	mov	eax,es:[bx+0Eh]
	mov	[bp-4h],eax

l23F8_00FB:
	mov	eax,[bp-4h]
	cmp	eax,[8846h]
	jnz	0109h

l23F8_0106:
	jmp	01A0h

l23F8_0109:
	les	bx,[bp-4h]
	cmp	dword ptr es:[bx+0Eh],0h
	jnz	00DEh

l23F8_0114:
	jmp	01A0h

l23F8_0117:
	les	bx,[bp-4h]
	cmp	dword ptr es:[bx+0Ah],0h
	jz	0154h

l23F8_0122:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	es,[bp-2h]
	push	dword ptr es:[bx+0Ah]
	mov	ax,[bp-6h]
	add	ax,0Bh
	push	ax
	mov	ax,42h
	sub	ax,es:[bx+3h]
	cwd
	sub	ax,dx
	sar	ax,1h
	add	ax,0F9h
	push	ax
	call	far 216Eh:01DCh
	add	sp,0Ch

l23F8_0154:
	les	bx,[bp-4h]
	les	bx,es:[bx+6h]
	mov	word ptr es:[bx],0F9h
	mov	ax,[bp-6h]
	add	ax,0Bh
	mov	es:[bx+2h],ax
	mov	word ptr es:[bx+4h],125h
	les	bx,[bp-4h]
	mov	ax,[bp-6h]
	add	ax,es:[bx+1h]
	add	ax,0Bh
	les	bx,es:[bx+6h]
	mov	es:[bx+6h],ax
	les	bx,[bp-4h]
	mov	byte ptr es:[bx+5h],1h
	mov	ax,es:[bx+1h]
	add	ax,2h
	add	[bp-6h],ax
	mov	eax,es:[bx+0Eh]
	mov	[bp-4h],eax

l23F8_01A0:
	les	bx,[bp-4h]
	mov	ax,[bp-6h]
	add	ax,es:[bx+1h]
	add	ax,2h
	cmp	ax,4Ah
	jge	01DBh

l23F8_01B2:
	cmp	dword ptr [bp-4h],0h
	jz	01BCh

l23F8_01B9:
	jmp	0117h

l23F8_01BC:
	jmp	01DBh

l23F8_01BE:
	les	bx,[bp-4h]
	mov	byte ptr es:[bx+5h],0h
	les	bx,es:[bx+6h]
	mov	word ptr es:[bx],14Ah
	les	bx,[bp-4h]
	mov	eax,es:[bx+0Eh]
	mov	[bp-4h],eax

l23F8_01DB:
	cmp	dword ptr [bp-4h],0h
	jnz	01BEh

l23F8_01E2:
	cli
	call	far 2425h:0286h
	sti
	leave
	retf

;; fn23F8_01EB: 23F8:01EB
;;   Called from:
;;     1F0F:0E5D (in fn1F0F_0BF7)
;;     1F0F:0F49 (in fn1F0F_0BF7)
;;     1F0F:0FC7 (in fn1F0F_0BF7)
fn23F8_01EB proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	cmp	dword ptr es:[bx+12h],0h
	jz	020Dh

l23F8_01F9:
	mov	ax,es:[bx+10h]
	mov	dx,es:[bx+0Eh]
	les	bx,es:[bx+12h]
	mov	es:[bx+10h],ax
	mov	es:[bx+0Eh],dx

l23F8_020D:
	les	bx,[bp+6h]
	cmp	dword ptr es:[bx+0Eh],0h
	jz	022Ch

l23F8_0218:
	mov	ax,es:[bx+14h]
	mov	dx,es:[bx+12h]
	les	bx,es:[bx+0Eh]
	mov	es:[bx+14h],ax
	mov	es:[bx+12h],dx

l23F8_022C:
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx+5h],0h
	jz	024Bh

l23F8_0236:
	les	bx,es:[bx+6h]
	mov	word ptr es:[bx],14Ah
	les	bx,[bp+6h]
	mov	byte ptr es:[bx+5h],0h
	push	cs
	call	00A0h

l23F8_024B:
	pop	bp
	retf
23F8:024D                                        C4 1E 46              ..F
23F8:0250 88 66 26 83 7F 0E 00 74 39 66 26 8B 47 0E 66 A3 .f&....t9f&.G.f.
23F8:0260 46 88 B8 62 28 8E C0 26 80 3E 00 00 01 74 0A 8E F..b(..&.>...t..
23F8:0270 C0 26 80 3E 00 00 02 75 0C 66 6A 00 6A 16 9A 00 .&.>...u.fj.j...
23F8:0280 00 31 23 EB 0A 66 6A 00 6A 16 9A BA 00 31 23 83 .1#..fj.j....1#.
23F8:0290 C4 06 CB C4 1E 46 88 66 26 83 7F 12 00 74 39 66 .....F.f&....t9f
23F8:02A0 26 8B 47 12 66 A3 46 88 B8 62 28 8E C0 26 80 3E &.G.f.F..b(..&.>
23F8:02B0 00 00 01 74 0A 8E C0 26 80 3E 00 00 02 75 0C 66 ...t...&.>...u.f
23F8:02C0 6A 00 6A 16 9A 00 00 31 23 EB 0A 66 6A 00 6A 16 j.j....1#..fj.j.
