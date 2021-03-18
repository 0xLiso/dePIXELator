;;; Segment 2141 (2141:0000)
2141:0000 74 F9                                           t.             

l209F_0A22:
	mov	ax,1h
	leave
	retf
209F:0A27                      50 53 51 52 06 1E 56 57 55        PSQR..VWU
209F:0A30 BD BA 28 8E DD B8 BA 28 8E C0 26 FF 0E 84 A1 66 ..(....(..&....f
209F:0A40 FF 06 D0 83 B8 BA 28 8E C0 26 FF 0E 86 A1 B8 BA ......(..&......
209F:0A50 28 8E C0 26 FF 0E 88 A1 5D 5F 5E 1F 07 5A 59 5B (..&....]_^..ZY[
209F:0A60 58 CF C8 04 00 00 66 6A 08 9A 38 1D 00 08 83 C4 X.....fj..8.....
209F:0A70 04 89 56 FE 89 46 FC 66 83 7E FC 00 75 0F 66 6A ..V..F.f.~..u.fj
209F:0A80 19 1E 68 D6 83 9A 3F 04 3F 26 83 C4 08 C4 5E FC ..h...?.?&....^.
209F:0A90 66 26 C7 07 00 00 00 00 66 26 C7 47 04 00 00 00 f&......f&.G....
209F:0AA0 00 8B 56 FE 8B 46 FC C9 CB 55 8B EC FA C4 5E 0A ..V..F...U....^.
209F:0AB0 66 26 83 3F 00 75 24 66 8B 46 06 66 26 89 07 66 f&.?.u$f.F.f&..f
209F:0AC0 26 89 47 04 C4 5E 06 66 26 C7 47 12 00 00 00 00 &.G..^.f&.G.....
209F:0AD0 66 26 C7 47 0E 00 00 00 00 EB 3A C4 5E 0A 66 26 f&.G......:.^.f&
209F:0AE0 8B 47 04 C4 5E 06 66 26 89 47 12 66 26 C7 47 0E .G..^.f&.G.f&.G.
209F:0AF0 00 00 00 00 C4 5E 0A 26 C4 5F 04 8B 46 08 8B 56 .....^.&._..F..V
209F:0B00 06 26 89 47 10 26 89 57 0E C4 5E 0A 66 8B 46 06 .&.G.&.W..^.f.F.
209F:0B10 66 26 89 47 04 FB 5D CB 55 8B EC FA C4 5E 06 66 f&.G..].U....^.f
209F:0B20 26 83 7F 12 00 75 42 66 26 83 7F 0E 00 75 16 C4 &....uBf&....u..
209F:0B30 5E 0A 66 26 C7 07 00 00 00 00 66 26 C7 47 04 00 ^.f&......f&.G..
209F:0B40 00 00 00 EB 6C C4 5E 06 66 26 8B 47 0E C4 5E 0A ....l.^.f&.G..^.
209F:0B50 66 26 89 07 C4 5E 06 26 C4 5F 0E 26 C7 47 14 00 f&...^.&._.&.G..
209F:0B60 00 26 C7 47 12 00 00 EB 17 C4 5E 06 26 8B 47 10 .&.G......^.&.G.
209F:0B70 26 8B 57 0E 26 C4 5F 12 26 89 47 10 26 89 57 0E &.W.&._.&.G.&.W.
209F:0B80 C4 5E 06 66 26 83 7F 0E 00 75 0F 66 26 8B 47 12 .^.f&....u.f&.G.
209F:0B90 C4 5E 0A 66 26 89 47 04 EB 17 C4 5E 06 26 8B 47 .^.f&.G....^.&.G
209F:0BA0 14 26 8B 57 12 26 C4 5F 0E 26 89 47 14 26 89 57 .&.W.&._.&.G.&.W
209F:0BB0 12 66 FF 76 06 9A 24 1C 00 08 83 C4 04 FB 5D CB .f.v..$.......].
209F:0BC0 C8 04 00 00 56 66 6A 18 9A 38 1D 00 08 83 C4 04 ....Vfj..8......
209F:0BD0 89 56 FE 89 46 FC 0B C2 75 0F 66 6A 0A 1E 68 ED .V..F...u.fj..h.
209F:0BE0 83 9A 3F 04 3F 26 83 C4 08 C4 5E 0C 66 26 8B 47 ..?.?&....^.f&.G
209F:0BF0 02 C4 5E FC 66 26 89 07 66 8B 46 0C 66 26 89 47 ..^.f&..f.F.f&.G
209F:0C00 06 06 C4 76 0C 26 8B 04 07 26 89 47 04 8E 46 FE ...v.&...&.G..F.
209F:0C10 66 8B 46 08 66 26 89 47 0A 8A 46 06 26 88 47 16 f.F.f&.G..F.&.G.
209F:0C20 26 C6 47 17 01 8B 56 FE 8B 46 FC 5E C9 CB       &.G...V..F.^.. 

;; fn2141_020E: 2141:020E
;;   Called from:
;;     268D:01B6 (in main)
fn2141_020E proc
	enter	2h,0h
	push	1Ch
	call	far 0800h:0436h
	pop	cx
	mov	[0A430h],dx
	mov	[0A42Eh],ax
	push	2141h
	push	7h
	push	1Ch
	call	far 0800h:0445h
	add	sp,6h
	mov	word ptr [bp-2h],4DAEh
	sub	word ptr [bp-2h],3E8h
	mov	dx,43h
	mov	al,36h
	out	dx,al
	mov	al,[bp-2h]
	and	al,0FFh
	mov	dx,40h
	out	dx,al
	mov	ax,[bp-2h]
	shr	ax,8h
	out	dx,al
	push	0h
	call	far 0800h:10B1h
	push	dx
	push	ax
	pop	eax
	add	sp,4h
	mov	[0A432h],eax
	mov	ax,28BAh
	mov	es,ax
	or	word ptr es:[302Ah],4h
	leave
	retf

;; fn2141_0271: 2141:0271
;;   Called from:
;;     268D:058E (in fn268D_03E2)
fn2141_0271 proc
	push	dword ptr [0A42Eh]
	push	1Ch
	call	far 0800h:0445h
	add	sp,6h
	mov	dx,43h
	mov	al,36h
	out	dx,al
	mov	dx,40h
	mov	al,0h
	out	dx,al
	out	dx,al
	mov	ah,2h
	int	1Ah
	mov	al,cl
	and	al,0F0h
	shr	al,3h
	mov	bl,al
	shl	al,2h
	add	al,bl
	and	cl,0Fh
	add	cl,al
	mov	al,ch
	and	al,0F0h
	shr	al,3h
	mov	bl,al
	shl	al,2h
	add	al,bl
	and	ch,0Fh
	add	ch,al
	mov	al,dh
	and	al,0F0h
	shr	al,3h
	mov	bl,al
	shl	al,2h
	add	al,bl
	and	dh,0Fh
	add	dh,al
	mov	ah,2Dh
	int	21h
	retf
2141:02CF                                              00                .
