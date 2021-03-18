;;; Segment 2476 (2476:0000)
2476:0000 00 00 E8 4B FE 83 C4 08                         ...K....       

l2425_0518:
	pop	bp
	ret

;; fn2476_000A: 2476:000A
;;   Called from:
;;     1F0F:0254 (in fn1F0F_000F)
;;     2476:0167 (in fn2476_0104)
fn2476_000A proc
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8A2h]
	push	0h
	call	far 216Eh:0000h
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A89Eh]
	push	960000h
	call	far 216Eh:0000h
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8A6h]
	push	0A0000h
	call	far 216Eh:0000h
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8AAh]
	push	0A00EEh
	call	far 216Eh:0000h
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8B2h]
	push	0B00F9h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8B6h]
	push	7200F7h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8BAh]
	push	5E0104h
	call	far 216Eh:0000h
	add	sp,0Ch
	retf

;; fn2476_0104: 2476:0104
;;   Called from:
;;     268D:0184 (in main)
fn2476_0104 proc
	enter	10h,0h
	mov	ax,40h
	mov	es,ax
	mov	ax,es:[0049h]
	mov	[0A556h],ax
	mov	word ptr [bp-10h],13h
	push	ss
	lea	ax,[bp-10h]
	push	ax
	push	ss
	push	ax
	push	10h
	call	far 0800h:21F9h
	add	sp,0Ah
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A8AEh]
	add	ax,2h
	push	word ptr es:[0A8B0h]
	push	ax
	push	0h
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[0A8AEh]
	mov	al,es:[bx+1h]
	mov	ah,0h
	push	ax
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[0A8B0h]
	mov	al,es:[bx]
	mov	ah,0h
	push	ax
	nop
	push	cs
	call	0407h
	add	sp,0Ah
	push	cs
	call	000Ah
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8D2h]
	push	730124h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	or	word ptr es:[302Ah],1h
	leave
	retf
2476:019C                                     C8 0E 00 00             ....
2476:01A0 68 01 80 66 FF 76 0A 9A 15 36 00 08 83 C4 06 89 h..f.v...6......
2476:01B0 46 FE 83 7E FE FF 75 0C 66 FF 76 0A 9A F3 03 3F F..~..u.f.v....?
2476:01C0 26 83 C4 04 8B 46 08 69 C0 40 01 03 46 06 C7 46 &....F.i.@..F..F
2476:01D0 F4 00 A0 89 46 F2 6A 02 16 8D 46 FC 50 FF 76 FE ....F.j...F.P.v.
2476:01E0 9A 87 3C 00 08 83 C4 08 6A 02 16 8D 46 FA 50 FF ..<.....j...F.P.
2476:01F0 76 FE 9A 87 3C 00 08 83 C4 08 8B 46 08 89 46 F6 v...<......F..F.
2476:0200 C7 46 F8 00 00 EB 68 C4 5E F2 26 C6 47 FF 00 8B .F....h.^.&.G...
2476:0210 46 06 03 46 FC 3D 40 01 77 11 FF 76 FC FF 76 F4 F..F.=@.w..v..v.
2476:0220 53 FF 76 FE 9A 87 3C 00 08 EB 2F B8 40 01 2B 46 S.v...<.../.@.+F
2476:0230 06 50 66 FF 76 F2 FF 76 FE 9A 87 3C 00 08 83 C4 .Pf.v..v...<....
2476:0240 08 6A 01 8B 46 06 03 46 FC 2D 40 01 66 0F B7 C0 .j..F..F.-@.f...
2476:0250 66 50 FF 76 FE 9A AB 06 00 08 83 C4 08 81 46 F2 fP.v..........F.
2476:0260 40 01 FF 46 F6 81 7E F6 C8 00 7D 0B FF 46 F8 8B @..F..~...}..F..
2476:0270 46 F8 3B 46 FA 7C 90 FF 76 FE 9A 93 2A 00 08 59 F.;F.|..v...*..Y
2476:0280 C9 CB                                           ..             

;; fn2476_0282: 2476:0282
;;   Called from:
;;     0CE0:09A7 (in fn0CE0_08FC)
fn2476_0282 proc
	enter	8h,0h
	mov	eax,[8850h]
	mov	[bp-4h],eax
	push	2D68h
	call	far 0800h:1D38h
	add	sp,4h
	mov	[884Eh],dx
	mov	[884Ch],ax
	cmp	dword ptr [884Ch],0h
	jnz	02BDh

l2476_02AB:
	push	1388h
	push	ds
	push	8857h
	call	far 263Fh:043Fh
	add	sp,8h

l2476_02BD:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	8Ch
	push	0E4000Ah
	push	0Ah
	call	far 216Eh:03D8h
	add	sp,0Eh
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	dword ptr [884Ch]
	push	ss
	lea	ax,[bp-4h]
	push	ax
	push	0A00EDh
	call	far 216Eh:0138h
	add	sp,10h
	mov	word ptr [bp-6h],0EEh
	mov	word ptr [bp-8h],52h
	jmp	035Ah

l2476_030D:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	53h
	mov	ax,[884Ch]
	add	ax,4h
	push	word ptr [884Eh]
	push	ax
	push	0h
	push	8Ch
	push	word ptr [bp-8h]
	push	0Ah
	push	word ptr [bp-6h]
	call	far 216Eh:04C9h
	add	sp,16h
	inc	word ptr [bp-6h]
	dec	word ptr [bp-8h]
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A184h],1h

l2476_034D:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A184h],0h
	jg	034Dh

l2476_035A:
	cmp	word ptr [bp-8h],0Ah
	jg	030Dh

l2476_0360:
	leave
	retf

;; fn2476_0362: 2476:0362
;;   Called from:
;;     0CE0:1237 (in fn0CE0_08FC)
fn2476_0362 proc
	enter	4h,0h
	cmp	dword ptr [884Ch],0h
	jz	03E4h

l2476_036E:
	mov	word ptr [bp-2h],135h
	mov	word ptr [bp-4h],0Bh
	jmp	03C7h

l2476_037A:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	53h
	mov	ax,[884Ch]
	add	ax,4h
	push	word ptr [884Eh]
	push	ax
	push	0h
	push	8Ch
	push	word ptr [bp-4h]
	push	0Ah
	push	word ptr [bp-2h]
	call	far 216Eh:04C9h
	add	sp,16h
	dec	word ptr [bp-2h]
	inc	word ptr [bp-4h]
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A184h],1h

l2476_03BA:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A184h],1h
	jg	03BAh

l2476_03C7:
	cmp	word ptr [bp-2h],0ECh
	jg	037Ah

l2476_03CE:
	push	dword ptr [884Ch]
	call	far 0800h:1C24h
	add	sp,4h
	mov	dword ptr [884Ch],0h

l2476_03E4:
	leave
	retf

;; fn2476_03E6: 2476:03E6
;;   Called from:
;;     263F:0404 (in fn263F_03F3)
;;     263F:0450 (in fn263F_043F)
;;     263F:04B9 (in fn263F_04B6)
;;     268D:0557 (in fn268D_03E2)
fn2476_03E6 proc
	enter	10h,0h
	mov	ax,[0A556h]
	mov	[bp-10h],ax
	mov	byte ptr [bp-0Fh],0h
	push	ss
	lea	ax,[bp-10h]
	push	ax
	push	ss
	push	ax
	push	10h
	call	far 0800h:21F9h
	add	sp,0Ah
	leave
	retf

;; fn2476_0407: 2476:0407
;;   Called from:
;;     2476:0160 (in fn2476_0104)
;;     2476:04D6 (in fn2476_0495)
;;     268D:01FD (in main)
;;     268D:04A0 (in fn268D_03E2)
;;     268D:04FA (in fn268D_03E2)
fn2476_0407 proc
	push	bp
	mov	bp,sp
	mov	dx,3C8h
	mov	al,[bp+6h]
	out	dx,al
	mov	dx,3h
	mov	ax,[bp+8h]
	imul	dx
	mov	[bp+8h],ax

l2476_041C:
	les	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	mov	al,es:[bx]
	mov	ah,0h
	imul	word ptr [bp+0Ah]
	mov	bx,64h
	cwd
	idiv	bx
	mov	dx,3C9h
	out	dx,al
	dec	word ptr [bp+8h]
	jnz	041Ch

l2476_0439:
	pop	bp
	retf

;; fn2476_043B: 2476:043B
;;   Called from:
;;     0CE0:00BF (in fn0CE0_0007)
;;     1ED7:007F (in fn1ED7_000E)
fn2476_043B proc
	push	bp
	mov	bp,sp
	mov	dx,3C8h
	mov	al,[bp+6h]
	out	dx,al
	mov	dx,3h
	mov	ax,[bp+8h]
	imul	dx
	mov	[bp+8h],ax

l2476_0450:
	les	bx,[bp+0Ah]
	mov	al,es:[bx]
	mov	dx,3C9h
	out	dx,al
	inc	word ptr [bp+0Ah]
	dec	word ptr [bp+8h]
	jnz	0450h

l2476_0462:
	pop	bp
	retf
2476:0464             C8 02 00 00 A0 58 A8 B4 00 89 46 FE     .....X....F.
2476:0470 EB 11 8B 5E FE 80 BF 58 A5 00 74 04 33 C0 EB 13 ...^...X..t.3...
2476:0480 FF 46 FE A0 59 A8 B4 00 6B C0 03 3B 46 FE 7F E2 .F..Y...k..;F...
2476:0490 B8 01 00 C9 CB                                  .....          

;; fn2476_0495: 2476:0495
;;   Called from:
;;     1D10:158F (in fn1D10_155B)
;;     1D10:18B3 (in fn1D10_155B)
;;     1D10:18FC (in fn1D10_155B)
fn2476_0495 proc
	enter	2h,0h
	cmp	byte ptr [8856h],0h
	jz	04B0h

l2476_04A0:
	mov	al,[8854h]
	cbw
	push	ax
	mov	al,[8855h]
	cbw
	mov	dx,ax
	pop	ax
	sub	ax,dx
	jmp	04B4h

l2476_04B0:
	mov	al,[8855h]
	cbw

l2476_04B4:
	imul	ax,ax,64h
	push	ax
	mov	al,[8854h]
	cbw
	mov	bx,ax
	pop	ax
	cwd
	idiv	bx
	mov	[bp-2h],ax
	push	ds
	push	0A558h
	push	ax
	mov	al,[0A859h]
	mov	ah,0h
	push	ax
	mov	al,[0A858h]
	mov	ah,0h
	push	ax
	push	cs
	call	0407h
	add	sp,0Ah
	cmp	byte ptr [8855h],3h
	jle	04EEh

l2476_04E4:
	mov	al,[8855h]
	add	al,0FEh
	mov	[8855h],al
	jmp	04F3h

l2476_04EE:
	mov	byte ptr [8855h],0h

l2476_04F3:
	leave
	retf
2476:04F5                C8 02 00 00 BA C8 03 A0 58 A8 EE      ........X..
2476:0500 C7 46 FE 00 00 EB 09 BA C9 03 B0 3F EE FF 46 FE .F.........?..F.
2476:0510 A0 59 A8 B4 00 6B C0 03 3B 46 FE 7F EA C9 CB C8 .Y...k..;F......
2476:0520 02 00 00 C6 46 FF 02 BA DA 03 EC B4 00 A9 08 00 ....F...........
2476:0530 75 F5 BA DA 03 EC B4 00 A9 08 00 74 F5 0E E8 B4 u..........t....
2476:0540 FF BA DA 03 EC B4 00 A9 08 00 75 F5 BA DA 03 EC ..........u.....
2476:0550 B4 00 A9 08 00 74 F5 8A 46 FF FE 4E FF 0A C0 75 .....t..F..N...u
2476:0560 E0 90 0E E8 9B 00 C9 CB                         ........       

;; fn2476_0568: 2476:0568
;;   Called from:
;;     1D10:167F (in fn1D10_155B)
;;     1D10:1878 (in fn1D10_155B)
fn2476_0568 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	mov	al,es:[bx]
	mov	[0A858h],al
	mov	al,es:[bx+1h]
	mov	[0A859h],al
	mov	ax,[bp+0Ah]
	sub	ax,2h
	push	ax
	mov	ax,[bp+6h]
	add	ax,2h
	push	word ptr [bp+8h]
	push	ax
	push	ds
	push	0A558h
	call	far 0800h:46CDh
	add	sp,0Ah
	pop	bp
	retf
2476:059A                               55 8B EC 6A 01 1E           U..j..
2476:05A0 68 58 A8 FF 76 06 9A 87 3C 00 08 83 C4 08 6A 01 hX..v...<.....j.
2476:05B0 1E 68 59 A8 FF 76 06 9A 87 3C 00 08 83 C4 08 8B .hY..v...<......
2476:05C0 46 08 05 FE FF 50 1E 68 58 A5 FF 76 06 9A 87 3C F....P.hX..v...<
2476:05D0 00 08 83 C4 08 5D CB                            .....].        

;; fn2476_05D7: 2476:05D7
;;   Called from:
;;     1D10:1189 (in fn1D10_1153)
;;     1D10:15C2 (in fn1D10_155B)
;;     1D10:1909 (in fn1D10_155B)
fn2476_05D7 proc
	enter	2h,0h
	mov	dx,3C8h
	mov	al,[0A858h]
	out	dx,al
	mov	word ptr [bp-2h],0h
	jmp	05F2h

l2476_05E9:
	mov	dx,3C9h
	mov	al,0h
	out	dx,al
	inc	word ptr [bp-2h]

l2476_05F2:
	mov	al,[0A859h]
	mov	ah,0h
	imul	ax,ax,3h
	cmp	ax,[bp-2h]
	jg	05E9h

l2476_05FF:
	leave
	retf

;; fn2476_0601: 2476:0601
;;   Called from:
;;     1D10:15BB (in fn1D10_155B)
;;     1D10:185B (in fn1D10_155B)
fn2476_0601 proc
	enter	2h,0h
	mov	dx,3C8h
	mov	al,[0A858h]
	out	dx,al
	mov	word ptr [bp-2h],0h
	jmp	0621h

l2476_0613:
	mov	bx,[bp-2h]
	mov	al,[bx+0A558h]
	mov	dx,3C9h
	out	dx,al
	inc	word ptr [bp-2h]

l2476_0621:
	mov	al,[0A859h]
	mov	ah,0h
	imul	ax,ax,3h
	cmp	ax,[bp-2h]
	jg	0613h

l2476_062E:
	leave
	retf

;; fn2476_0630: 2476:0630
;;   Called from:
;;     226D:041C (in fn226D_00F9)
;;     268D:047D (in fn268D_03E2)
fn2476_0630 proc
	enter	0Eh,0h
	push	8001h
	push	dword ptr [bp+0Ah]
	call	far 0800h:3615h
	add	sp,6h
	mov	[bp-2h],ax
	cmp	word ptr [bp-2h],0FFh
	jnz	0658h

l2476_064C:
	push	dword ptr [bp+0Ah]
	call	far 263Fh:03F3h
	add	sp,4h

l2476_0658:
	mov	dword ptr [bp-0Eh],0A0000000h
	mov	ax,[bp+8h]
	imul	ax,ax,140h
	add	ax,[bp+6h]
	add	[bp-0Eh],ax
	push	2h
	push	ss
	lea	ax,[bp-4h]
	push	ax
	push	word ptr [bp-2h]
	call	far 0800h:3C87h
	add	sp,8h
	push	2h
	push	ss
	lea	ax,[bp-6h]
	push	ax
	push	word ptr [bp-2h]
	call	far 0800h:3C87h
	add	sp,8h
	mov	ax,[bp+8h]
	mov	[bp-0Ah],ax
	mov	word ptr [bp-8h],0h
	jmp	06FEh

l2476_069E:
	mov	ax,[bp+6h]
	add	ax,[bp-4h]
	cmp	ax,140h
	ja	06BAh

l2476_06A9:
	push	word ptr [bp-4h]
	push	dword ptr [bp-0Eh]
	push	word ptr [bp-2h]
	call	far 0800h:3C87h
	jmp	06E9h

l2476_06BA:
	mov	ax,140h
	sub	ax,[bp+6h]
	push	ax
	push	dword ptr [bp-0Eh]
	push	word ptr [bp-2h]
	call	far 0800h:3C87h
	add	sp,8h
	push	1h
	mov	ax,[bp+6h]
	add	ax,[bp-4h]
	sub	ax,140h
	movzx	eax,ax
	push	eax
	push	word ptr [bp-2h]
	call	far 0800h:06ABh

l2476_06E9:
	add	sp,8h
	add	word ptr [bp-0Eh],140h
	inc	word ptr [bp-0Ah]
	cmp	word ptr [bp-0Ah],0C8h
	jge	0706h

l2476_06FB:
	inc	word ptr [bp-8h]

l2476_06FE:
	mov	ax,[bp-8h]
	cmp	ax,[bp-6h]
	jl	069Eh

l2476_0706:
	push	word ptr [bp-2h]
	call	far 0800h:2A93h
	pop	cx
	leave
	retf
2476:0711    C8 18 00 00 68 01 80 66 FF 76 0A 9A 15 36 00  ....h..f.v...6.
2476:0720 08 83 C4 06 89 46 FE 83 7E FE FF 75 0C 66 FF 76 .....F..~..u.f.v
2476:0730 0A 9A F3 03 3F 26 83 C4 04 66 C7 46 F2 00 00 00 ....?&...f.F....
2476:0740 A0 8B 46 08 69 C0 40 01 03 46 06 01 46 F2 6A 02 ..F.i.@..F..F.j.
2476:0750 16 8D 46 FC 50 FF 76 FE 9A 87 3C 00 08 83 C4 08 ..F.P.v...<.....
2476:0760 6A 02 16 8D 46 FA 50 FF 76 FE 9A 87 3C 00 08 83 j...F.P.v...<...
2476:0770 C4 08 66 0F BF 46 FC 66 50 9A 38 1D 00 08 83 C4 ..f..F.fP.8.....
2476:0780 04 89 56 EC 89 46 EA 66 83 7E EA 00 75 1C FF 76 ..V..F.f.~..u..v
2476:0790 FE 9A 93 2A 00 08 59 66 0F BF 46 FC 66 50 1E 68 ...*..Yf..F.fP.h
2476:07A0 78 88 9A 3F 04 3F 26 83 C4 08 C7 46 F8 00 00 EB x..?.?&....F....
2476:07B0 4F 66 8B 46 F2 66 89 46 EE FF 76 FC 66 FF 76 EA Of.F.f.F..v.f.v.
2476:07C0 FF 76 FE 9A 87 3C 00 08 83 C4 08 C7 46 F6 00 00 .v...<......F...
2476:07D0 EB 1E C4 5E EA 03 5E F6 26 8A 07 88 46 E9 80 7E ...^..^.&...F..~
2476:07E0 E9 00 74 06 C4 5E EE 26 88 07 FF 46 EE FF 46 F6 ..t..^.&...F..F.
2476:07F0 8B 46 F6 3B 46 FC 7C DA 81 46 F2 40 01 FF 46 F8 .F.;F.|..F.@..F.
2476:0800 8B 46 F8 3B 46 FA 7C A9 66 FF 76 EA 9A 24 1C 00 .F.;F.|.f.v..$..
2476:0810 08 83 C4 04 FF 76 FE 9A 93 2A 00 08 59 C9 CB    .....v...*..Y..

;; fn2476_081F: 2476:081F
;;   Called from:
;;     268D:0471 (in fn268D_03E2)
fn2476_081F proc
	enter	0Ah,0h

l2476_0823:
	mov	word ptr [bp-4h],0h

l2476_0828:
	mov	dx,3DAh
	in	al,dx
	test	al,8h
	jnz	0828h

l2476_0830:
	mov	dx,3DAh
	in	al,dx
	test	al,8h
	jz	0830h

l2476_0838:
	mov	word ptr [bp-2h],0h
	jmp	08CCh

l2476_0840:
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
	jz	087Fh

l2476_086B:
	mov	word ptr [bp-4h],1h
	mov	ax,[bp-6h]
	imul	ax,ax,5Ah
	mov	bx,64h
	cwd
	idiv	bx
	mov	[bp-6h],ax

l2476_087F:
	cmp	word ptr [bp-8h],0h
	jz	0899h

l2476_0885:
	mov	word ptr [bp-4h],1h
	mov	ax,[bp-8h]
	imul	ax,ax,5Ah
	mov	bx,64h
	cwd
	idiv	bx
	mov	[bp-8h],ax

l2476_0899:
	cmp	word ptr [bp-0Ah],0h
	jz	08B3h

l2476_089F:
	mov	word ptr [bp-4h],1h
	mov	ax,[bp-0Ah]
	imul	ax,ax,5Ah
	mov	bx,64h
	cwd
	idiv	bx
	mov	[bp-0Ah],ax

l2476_08B3:
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

l2476_08CC:
	cmp	word ptr [bp-2h],100h
	jge	08D6h

l2476_08D3:
	jmp	0840h

l2476_08D6:
	cmp	word ptr [bp-4h],0h
	jz	08DFh

l2476_08DC:
	jmp	0823h

l2476_08DF:
	leave
