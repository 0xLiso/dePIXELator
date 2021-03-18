;;; Segment 0800 (0800:0000)
0800:0000 BA BA 28 2E 89 16 91 02 B4 30 CD 21 8B 2E 02 00 ..(......0.!....
0800:0010 8B 1E 2C 00 8E DA A3 7D 00 8C 06 7B 00 89 1E 77 ..,....}...{...w
0800:0020 00 89 2E 91 00 E8 55 01 A1 77 00 8E C0 33 C0 8B ......U..w...3..
0800:0030 D8 8B F8 B9 FF 7F FC F2 AE E3 43 43 26 38 05 75 ..........CC&8.u
0800:0040 F6 80 CD 80 F7 D9 89 0E 75 00 B9 02 00 D3 E3 83 ........u.......
0800:0050 C3 10 83 E3 F0 89 1E 79 00 8C D2 2B EA BF BA 28 .......y...+...(
0800:0060 8E C7 26 8B 3E B4 8E 81 FF 00 02 73 08 BF 00 02 ..&.>......s....
0800:0070 26 89 3E B4 8E B1 04 D3 EF 47 3B EF 73 03 E9 F9 &.>......G;.s...
0800:0080 01 8B DF 03 DA 89 1E 89 00 89 1E 8D 00 A1 7B 00 ..............{.
0800:0090 2B D8 8E C0 B4 4A 57 CD 21 5F D3 E7 FA 8E D2 8B +....JW.!_......
0800:00A0 E7 FB B8 BA 28 8E C0 26 89 3E B4 8E 33 C0 2E 8E ....(..&.>..3...
0800:00B0 06 91 02 BF DA 9B B9 5A AB 2B CF FC F3 AA 83 3E .......Z.+.....>
0800:00C0 80 99 14 76 47 80 3E 7D 00 03 72 40 77 07 80 3E ...vG.>}..r@w..>
0800:00D0 7E 00 1E 72 37 B8 01 58 BB 02 00 CD 21 72 2A B4 ~..r7..X....!r*.
0800:00E0 67 8B 1E 80 99 CD 21 72 20 B4 48 BB 01 00 CD 21 g.....!r .H....!
0800:00F0 72 17 40 A3 91 00 48 8E C0 B4 49 CD 21 72 0A B8 r.@...H...I.!r..
0800:0100 01 58 BB 00 00 CD 21 73 03 E9 6E 01 B4 00 CD 1A .X....!s..n.....
0800:0110 89 16 81 00 89 0E 83 00 0A C0 74 0C B8 40 00 8E ..........t..@..
0800:0120 C0 BB 70 00 26 C6 07 01 33 ED 2E 8E 06 91 02 BE ..p.&...3.......
0800:0130 B6 9B BF DA 9B E8 B5 00 FF 36 73 00 FF 36 71 00 .........6s..6q.
0800:0140 FF 36 6F 00 FF 36 6D 00 FF 36 6B 00 9A F9 00 8D .6o..6m..6k.....
0800:0150 26 50 90 0E E8 62 02                            &P...b.        

;; fn0800_0157: 0800:0157
;;   Called from:
;;     0800:0387 (in fn0800_0362)
fn0800_0157 proc
	mov	es,cs:[0291h]
	push	si
	push	di
	mov	si,9BDAh
	mov	di,9BDAh
	call	0231h
	pop	di
	pop	si
	retf

;; fn0800_016A: 0800:016A
;;   Called from:
;;     0800:0395 (in fn0800_0362)
fn0800_016A proc
	retf

;; fn0800_016B: 0800:016B
;;   Called from:
;;     0800:03AF (in fn0800_0362)
fn0800_016B proc
	mov	bp,sp
	mov	ah,4Ch
	mov	al,[bp+4h]
	int	21h
0800:0174             B9 0E 00 BA 2F 00 E9 03 01 1E B8 00     ..../.......
0800:0180 35 CD 21 89 1E 5B 00 8C 06 5D 00 B8 04 35 CD 21 5.!..[...]...5.!
0800:0190 89 1E 5F 00 8C 06 61 00 B8 05 35 CD 21 89 1E 63 .._...a...5.!..c
0800:01A0 00 8C 06 65 00 B8 06 35 CD 21 89 1E 67 00 8C 06 ...e...5.!..g...
0800:01B0 69 00 B8 00 25 8C CA 8E DA BA 74 01 CD 21 1F C3 i...%.....t..!..

;; fn0800_01C0: 0800:01C0
;;   Called from:
;;     0800:0390 (in fn0800_0362)
fn0800_01C0 proc
	push	ds
	mov	ax,2500h
	lds	dx,[005Bh]
	int	21h
	pop	ds
	push	ds
	mov	ax,2504h
	lds	dx,[005Fh]
	int	21h
	pop	ds
	push	ds
	mov	ax,2505h
	lds	dx,[0063h]
	int	21h
	pop	ds
	push	ds
	mov	ax,2506h
	lds	dx,[0067h]
	int	21h
	pop	ds
	retf
0800:01ED                                        B8 00 01              ...
0800:01F0 8B D7 8B DE 3B DF 74 19 26 80 3F FF 74 0E 26 8A ....;.t.&.?.t.&.
0800:0200 4F 01 32 ED 3B C8 73 04 8B C1 8B D3 83 C3 06 EB O.2.;.s.........
0800:0210 E3 3B D7 74 1B 8B DA 26 80 3F 00 26 C6 07 FF 06 .;.t...&.?.&....
0800:0220 74 07 26 FF 5F 02 07 EB C4 26 FF 57 02 07 EB BD t.&._....&.W....
0800:0230 C3                                              .              

;; fn0800_0231: 0800:0231
;;   Called from:
;;     0800:0164 (in fn0800_0157)
fn0800_0231 proc
	mov	ah,0h
	mov	dx,di
	mov	bx,si

l0800_0237:
	cmp	bx,di
	jz	0252h

l0800_023B:
	cmp	byte ptr es:[bx],0FFh
	jz	024Dh

l0800_0241:
	cmp	es:[bx+1h],ah
	jc	024Dh

l0800_0247:
	mov	ah,es:[bx+1h]
	mov	dx,bx

l0800_024D:
	add	bx,6h
	jmp	0237h

l0800_0252:
	cmp	dx,di
	jz	0271h

l0800_0256:
	mov	bx,dx
	cmp	byte ptr es:[bx],0h
	mov	byte ptr es:[bx],0FFh
	push	es
	jz	026Ah

l0800_0263:
	call	dword ptr es:[bx+2h]
	pop	es
	jmp	0231h

l0800_026A:
	call	word ptr es:[bx+2h]
	pop	es
	jmp	0231h

l0800_0271:
	ret
0800:0272       B4 40 BB 02 00 CD 21 C3 B9 1E 00 BA 3D 00   .@....!.....=.
0800:0280 2E 8E 1E 91 02 E8 EA FF B8 03 00 50 90 0E E8 37 ...........P...7
0800:0290 01 00 00 04 C0 00 55 8B EC 83 3E E0 96 20 75 05 ......U...>.. u.
0800:02A0 B8 01 00 EB 1C 8B 1E E0 96 B1 02 D3 E3 8B 46 08 ..............F.
0800:02B0 8B 56 06 89 87 BA AA 89 97 B8 AA FF 06 E0 96 33 .V.............3
0800:02C0 C0 5D CB 50 53 51 52 06 1E 56 57 55 BD BA 28 8E .].PSQR..VWU..(.
0800:02D0 DD FF 1E 38 AB 0B C0 75 09 33 C0 50 90 0E E8 E7 ...8...u.3.P....
0800:02E0 00 59 5D 5F 5E 1F 07 5A 59 5B 58 CF             .Y]_^..ZY[X.   

;; fn0800_02EC: 0800:02EC
;;   Called from:
;;     268D:0142 (in main)
fn0800_02EC proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+8h]
	mov	dx,[bp+6h]
	mov	[0AB3Ah],ax
	mov	[0AB38h],dx
	mov	ax,800h
	push	ax
	mov	ax,2C3h
	push	ax
	mov	ax,23h
	push	ax
	nop
	push	cs
	call	0445h
	add	sp,6h
	pop	bp
	retf

;; fn0800_0312: 0800:0312
;;   Called from:
;;     2331:0150 (in fn2331_0118)
fn0800_0312 proc
	push	bp
	mov	bp,sp
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	nop
	push	cs
	call	1C24h
	pop	cx
	pop	cx
	pop	bp
	retf
0800:0324             55 8B EC 1E B4 43 32 C0 C5 56 06 CD     U....C2..V..
0800:0330 21 1F 72 0A C4 5E 0A 26 89 0F 33 C0 EB 04 50 E8 !.r..^.&..3...P.
0800:0340 A4 02 5D CB 55 8B EC 1E B4 43 B0 01 C5 56 06 8B ..].U....C...V..
0800:0350 4E 0A CD 21 1F 72 04 33 C0 EB 04 50 E8 87 02 5D N..!.r.3...P...]
0800:0360 CB CB                                           ..             

;; fn0800_0362: 0800:0362
;;   Called from:
;;     0800:03C3 (in fn0800_03B9)
fn0800_0362 proc
	push	bp
	mov	bp,sp
	push	si
	mov	si,[bp+8h]
	or	si,si
	jnz	038Fh

l0800_036D:
	jmp	037Fh

l0800_036F:
	dec	word ptr [96E0h]
	mov	bx,[96E0h]
	mov	cl,2h
	shl	bx,cl
	call	dword ptr [bx+0AAB8h]

l0800_037F:
	cmp	word ptr [96E0h],0h
	jnz	036Fh

l0800_0386:
	nop
	push	cs
	call	0157h
	call	dword ptr [97E4h]

l0800_038F:
	nop
	push	cs
	call	01C0h
	nop
	push	cs
	call	016Ah
	cmp	word ptr [bp+6h],0h
	jnz	03B4h

l0800_039F:
	or	si,si
	jnz	03ABh

l0800_03A3:
	call	dword ptr [97E8h]
	call	dword ptr [97ECh]

l0800_03AB:
	push	word ptr [bp+4h]
	nop
	push	cs
	call	016Bh
	pop	cx

l0800_03B4:
	pop	si
	pop	bp
	ret	6h

;; fn0800_03B9: 0800:03B9
;;   Called from:
;;     209F:0080 (in fn209F_0002)
;;     268D:0136 (in main)
;;     268D:05D1 (in fn268D_03E2)
fn0800_03B9 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	push	ax
	push	ax
	push	word ptr [bp+6h]
	call	0362h
	pop	bp
	retf
0800:03C8                         55 8B EC B8 01 00 50 33         U.....P3
0800:03D0 C0 50 FF 76 06 E8 8A FF 5D CB 33 C0 50 B8 01 00 .P.v....].3.P...
0800:03E0 50 33 C0 50 E8 7B FF CB B8 01 00 50 50 33 C0 50 P3.P.{.....PP3.P
0800:03F0 E8 6F FF CB                                     .o..           

;; fn0800_03F4: 0800:03F4
;;   Called from:
;;     0CE0:090D (in fn0CE0_08FC)
;;     0F2B:131A (in fn0F2B_130A)
;;     0F2B:154F (in fn0F2B_153F)
;;     226D:0109 (in fn226D_00F9)
;;     226D:058F (in fn226D_057F)
;;     268D:08D9 (in fn268D_08C8)
fn0800_03F4 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	push	ds
	lds	si,[bp+6h]
	les	di,[bp+0Ah]
	cld
	shr	cx,1h

l0800_0403:
	rep movsw

l0800_0405:
	adc	cx,cx

l0800_0407:
	rep movsb

l0800_0409:
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf	8h

;; fn0800_0410: 0800:0410
;;   Called from:
;;     0800:10BD (in fn0800_10B1)
fn0800_0410 proc
	push	bp
	mov	bp,sp
	mov	ah,2Ah
	int	21h
	les	bx,[bp+6h]
	mov	es:[bx],cx
	mov	es:[bx+2h],dx
	pop	bp
	retf

;; fn0800_0423: 0800:0423
;;   Called from:
;;     0800:10C9 (in fn0800_10B1)
fn0800_0423 proc
	push	bp
	mov	bp,sp
	mov	ah,2Ch
	int	21h
	les	bx,[bp+6h]
	mov	es:[bx],cx
	mov	es:[bx+2h],dx
	pop	bp
	retf

;; fn0800_0436: 0800:0436
;;   Called from:
;;     2057:00D1 (in fn2057_005C)
;;     2141:0214 (in fn2141_020E)
fn0800_0436 proc
	push	bp
	mov	bp,sp
	mov	ah,35h
	mov	al,[bp+6h]
	int	21h
	xchg	bx,ax
	mov	dx,es
	pop	bp
	retf

;; fn0800_0445: 0800:0445
;;   Called from:
;;     0800:0309 (in fn0800_02EC)
;;     2057:00E7 (in fn2057_005C)
;;     2057:014A (in fn2057_011E)
;;     2141:0229 (in fn2141_020E)
;;     2141:0278 (in fn2141_0271)
fn0800_0445 proc
	push	bp
	mov	bp,sp
	mov	ah,25h
	mov	al,[bp+6h]
	push	ds
	lds	dx,[bp+8h]
	int	21h
	pop	ds
	pop	bp
	retf
0800:0456                   59 0E 51 33 C9 EB 16 59 0E 51       Y.Q3...Y.Q
0800:0460 B9 01 00 EB 0E 59 0E 51 B9 02 00 EB 06 59 0E 51 .....Y.Q.....Y.Q
0800:0470 B9 03 00 55 56 57 8B EC 8B F9 8B 46 0A 8B 56 0C ...UVW.....F..V.
0800:0480 8B 5E 0E 8B 4E 10 0B C9 75 08 0B D2 74 69 0B DB .^..N...u...ti..
0800:0490 74 65 F7 C7 01 00 75 1C 0B D2 79 0A F7 DA F7 D8 te....u...y.....
0800:04A0 83 DA 00 83 CF 0C 0B C9 79 0A F7 D9 F7 DB 83 D9 ........y.......
0800:04B0 00 83 F7 04 8B E9 B9 20 00 57 33 FF 33 F6 D1 E0 ....... .W3.3...
0800:04C0 D1 D2 D1 D6 D1 D7 3B FD 72 0B 77 04 3B F3 72 05 ......;.r.w.;.r.
0800:04D0 2B F3 1B FD 40 E2 E7 5B F7 C3 02 00 74 06 8B C6 +...@..[....t...
0800:04E0 8B D7 D1 EB F7 C3 04 00 74 07 F7 DA F7 D8 83 DA ........t.......
0800:04F0 00 5F 5E 5D CA 08 00 F7 F3 F7 C7 02 00 74 01 92 ._^].........t..
0800:0500 33 D2 EB ED                                     3...           

;; fn0800_0504: 0800:0504
;;   Called from:
;;     0800:1FD8 (in fn0800_1FCB)
fn0800_0504 proc
	pop	bx
	push	cs
	push	bx
	cmp	cl,10h
	jnc	051Ch

l0800_050C:
	mov	bx,ax
	shl	ax,cl
	shl	dx,cl
	neg	cl
	add	cl,10h
	shr	bx,cl
	or	dx,bx
	retf

l0800_051C:
	sub	cl,10h
	xchg	dx,ax
	xor	ax,ax
	shl	dx,cl
	retf

;; fn0800_0525: 0800:0525
;;   Called from:
;;     0800:2009 (in fn0800_1FCB)
fn0800_0525 proc
	pop	es
	push	cs
	push	es

;; fn0800_0528: 0800:0528
;;   Called from:
;;     1D10:116A (in fn1D10_1153)
fn0800_0528 proc
	or	cx,cx
	jge	0538h

;; fn0800_052C: 0800:052C
;;   Called from:
;;     0800:052A (in fn0800_0528)
;;     0800:052A (in fn0800_0525)
fn0800_052C proc
	not	bx
	not	cx
	add	bx,1h
	adc	cx,0h
	jmp	0567h

;; fn0800_0538: 0800:0538
;;   Called from:
;;     0800:052A (in fn0800_0528)
;;     0800:052A (in fn0800_0525)
fn0800_0538 proc
	add	ax,bx
	jnc	0540h

l0800_053C:
	add	dx,1000h

l0800_0540:
	mov	ch,cl
	mov	cl,4h
	shl	ch,cl
	add	dh,ch
	mov	ch,al
	shr	ax,cl
	add	dx,ax
	mov	al,ch
	and	ax,0Fh
	retf
0800:0554             07 0E 06 0B C9 7D 0C F7 D3 F7 D1 83     .....}......
0800:0560 C3 01 83 D1 00 EB D1                            .......        

l0800_0567:
	sub	ax,bx
	jnc	056Fh

l0800_056B:
	sub	dx,1000h

l0800_056F:
	mov	bh,cl
	mov	cl,4h
	shl	bh,cl
	xor	bl,bl
	sub	dx,bx
	mov	ch,al
	shr	ax,cl
	add	dx,ax
	mov	al,ch
	and	ax,0Fh
	retf

;; fn0800_0585: 0800:0585
;;   Called from:
;;     0800:2075 (in fn0800_2056)
fn0800_0585 proc
	pop	es
	push	cs
	push	es
	push	di
	mov	di,cx
	mov	ch,dh
	mov	cl,4h
	shl	dx,cl
	shr	ch,cl
	add	dx,ax
	adc	ch,0h
	mov	ax,di
	shl	di,cl
	shr	ah,cl
	add	bx,di
	adc	ah,0h
	sub	dx,bx
	sbb	ch,ah
	mov	al,ch
	cbw
	xchg	dx,ax
	pop	di
	retf

;; fn0800_05AD: 0800:05AD
;;   Called from:
;;     0800:06CE (in fn0800_06AB)
;;     0800:088F (in fn0800_0865)
;;     0800:08A7 (in fn0800_0894)
;;     0800:1136 (in fn0800_1123)
;;     0800:22B9 (in fn0800_222A)
;;     0800:238B (in fn0800_2367)
;;     0800:28FC (in fn0800_28E6)
;;     0800:2A8E (in fn0800_2A76)
;;     0800:2AA3 (in fn0800_2A93)
;;     0800:2AD4 (in fn0800_2ABB)
;;     0800:2B49 (in fn0800_2AD9)
;;     0800:2D9F (in fn0800_2D71)
;;     0800:2DCC (in fn0800_2DA4)
;;     0800:2E0A (in fn0800_2DD1)
;;     0800:35FC (in fn0800_35E8)
;;     0800:365D (in fn0800_3615)
;;     0800:3671 (in fn0800_3615)
;;     0800:37CC (in fn0800_3784)
;;     0800:3BCB (in fn0800_3BB6)
;;     0800:44DE (in fn0800_44C8)
;;     0800:4650 (in fn0800_4619)
fn0800_05AD proc
	push	bp
	mov	bp,sp
	push	si
	mov	si,[bp+4h]
	or	si,si
	jl	05CDh

l0800_05B8:
	cmp	si,58h
	jle	05C0h

l0800_05BD:
	mov	si,57h

l0800_05C0:
	mov	[99AEh],si
	mov	al,[si+99B0h]
	cbw
	mov	si,ax
	jmp	05DAh

l0800_05CD:
	neg	si
	cmp	si,30h
	jg	05BDh

l0800_05D4:
	mov	word ptr [99AEh],0FFFFh

l0800_05DA:
	mov	[007Fh],si
	mov	ax,0FFFFh
	pop	si
	pop	bp
	ret	2h
0800:05E6                   55 8B EC 56 8B 76 04 56 E8 BC       U..V.v.V..
0800:05F0 FF 8B C6 5E 5D C2 02 00                         ...^]...       

;; fn0800_05F8: 0800:05F8
;;   Called from:
;;     0800:2F7C (in fn0800_2F10)
fn0800_05F8 proc
	push	bp
	mov	bp,sp
	mov	ax,4400h
	mov	bx,[bp+6h]
	int	21h
	xchg	dx,ax
	and	ax,80h
	pop	bp
	retf

;; fn0800_0609: 0800:0609
;;   Called from:
;;     0800:06A4 (in fn0800_068B)
;;     0800:1373 (in fn0800_1153)
fn0800_0609 proc
	push	bp
	mov	bp,sp
	sub	sp,22h
	push	si
	push	di
	push	es
	les	di,[bp+0Ah]
	mov	bx,[bp+8h]
	cmp	bx,24h
	ja	0679h

l0800_061D:
	cmp	bl,2h
	jc	0679h

l0800_0622:
	mov	ax,[bp+0Eh]
	mov	cx,[bp+10h]
	or	cx,cx
	jge	063Eh

l0800_062C:
	cmp	byte ptr [bp+6h],0h
	jz	063Eh

l0800_0632:
	mov	byte ptr es:[di],2Dh
	inc	di
	neg	cx
	neg	ax
	sbb	cx,0h

l0800_063E:
	lea	si,[bp-22h]
	jcxz	0653h

l0800_0643:
	xchg	cx,ax
	sub	dx,dx
	div	bx
	xchg	cx,ax
	div	bx
	mov	ss:[si],dl
	inc	si
	jcxz	065Bh

l0800_0651:
	jmp	0643h

l0800_0653:
	sub	dx,dx
	div	bx
	mov	ss:[si],dl
	inc	si

l0800_065B:
	or	ax,ax
	jnz	0653h

l0800_065F:
	lea	cx,[bp-22h]
	neg	cx
	add	cx,si
	cld

l0800_0667:
	dec	si
	mov	al,ss:[si]
	sub	al,0Ah
	jnc	0673h

l0800_066F:
	add	al,3Ah
	jmp	0676h

l0800_0673:
	add	al,[bp+4h]

l0800_0676:
	stosb
	loop	0667h

l0800_0679:
	mov	al,0h
	stosb
	pop	es
	mov	dx,[bp+0Ch]
	mov	ax,[bp+0Ah]
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret	0Eh

;; fn0800_068B: 0800:068B
;;   Called from:
;;     0800:0711 (in fn0800_06D4)
fn0800_068B proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	word ptr [bp+4h]
	mov	ax,0Ah
	push	ax
	mov	al,0h
	push	ax
	mov	al,61h
	push	ax
	call	0609h
	pop	bp
	ret	6h

;; fn0800_06AB: 0800:06AB
;;   Called from:
;;     0800:111A (in fn0800_1109)
;;     0800:316B (in fn0800_3106)
;;     0800:3935 (in fn0800_380A)
;;     0800:3C6B (in fn0800_3BB6)
;;     0800:450A (in fn0800_44C8)
;;     0CE0:003F (in fn0CE0_0007)
;;     1D10:0E39 (in fn1D10_09C2)
;;     1D10:103C (in fn1D10_0FB3)
;;     1D10:108D (in fn1D10_0FB3)
;;     1D10:1400 (in fn1D10_1368)
;;     1ED0:003E (in fn1ED0_0009)
;;     209F:0333 (in fn209F_02E3)
;;     209F:03F4 (in fn209F_02E3)
;;     209F:05A6 (in fn209F_0516)
;;     209F:0626 (in fn209F_0516)
;;     209F:090B (in fn209F_08D2)
;;     209F:0923 (in fn209F_08D2)
;;     2476:06E4 (in fn2476_0630)
;;     263F:0371 (in fn263F_033E)
;;     263F:03B4 (in fn263F_033E)
;;     268D:0264 (in main)
fn0800_06AB proc
	push	bp
	mov	bp,sp
	mov	bx,[bp+6h]
	shl	bx,1h
	and	word ptr [bx+9982h],0FDFFh
	mov	ah,42h
	mov	al,[bp+0Ch]
	mov	bx,[bp+6h]
	mov	cx,[bp+0Ah]
	mov	dx,[bp+8h]
	int	21h
	jc	06CDh

l0800_06CB:
	jmp	06D2h

l0800_06CD:
	push	ax
	call	05ADh
	cwd

l0800_06D2:
	pop	bp
	retf

;; fn0800_06D4: 0800:06D4
;;   Called from:
;;     0800:2BEE (in fn0800_2B50)
fn0800_06D4 proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+0Ah]
	or	ax,[bp+0Ch]
	jnz	06E7h

l0800_06DF:
	mov	[bp+0Ch],ds
	mov	word ptr [bp+0Ah],0AB3Ch

l0800_06E7:
	push	word ptr [bp+4h]
	mov	ax,[bp+6h]
	or	ax,[bp+8h]
	jnz	06F9h

l0800_06F2:
	mov	dx,ds
	mov	ax,9A0Ah
	jmp	06FFh

l0800_06F9:
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]

l0800_06FF:
	push	dx
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	nop
	push	cs
	call	16B5h
	add	sp,8h
	push	dx
	push	ax
	call	068Bh
	push	ds
	mov	ax,9A0Eh
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	nop
	push	cs
	call	3DA7h
	add	sp,8h
	mov	dx,[bp+0Ch]
	mov	ax,[bp+0Ah]
	pop	bp
	ret	0Ah
0800:0731    55 8B EC 83 EC 02 FF 76 0A FF 76 08 33 C0 33  U......v..v.3.3
0800:0740 D2 50 52 C4 5E 04 26 83 3F FF 75 05 B8 02 00 EB .PR.^.&.?.u.....
0800:0750 03 B8 01 00 C4 5E 04 26 01 07 26 8B 07 50 E8 73 .....^.&..&..P.s
0800:0760 FF 89 56 0A 89 46 08 16 8D 46 FE 50 FF 76 0A FF ..V..F...F.P.v..
0800:0770 76 08 90 0E E8 AD FB 83 C4 08 0B C0 74 B9 8B 56 v...........t..V
0800:0780 0A 8B 46 08 8B E5 5D C2 08 00 55 8B EC 83 EC 04 ..F...]...U.....
0800:0790 A1 4C AB 8B 16 4A AB 89 46 FE 89 56 FC 8B 46 08 .L...J..F..V..F.
0800:07A0 8B 56 06 A3 4C AB 89 16 4A AB 8B 56 FE 8B 46 FC .V..L...J..V..F.
0800:07B0 8B E5 5D CB                                     ..].           

;; fn0800_07B4: 0800:07B4
;;   Called from:
;;     1744:0010 (in fn1744_000A)
;;     2331:002F (in fn2331_0000)
;;     2331:0063 (in fn2331_0000)
fn0800_07B4 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	si,[bp+6h]
	or	si,si
	jz	07C6h

l0800_07C2:
	mov	ax,si
	jmp	07C9h

l0800_07C6:
	mov	ax,1h

l0800_07C9:
	mov	si,ax
	jmp	07D1h

l0800_07CD:
	call	dword ptr [0AB4Ah]

l0800_07D1:
	push	si
	nop
	push	cs
	call	1D2Eh
	pop	cx
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	or	ax,dx
	jnz	07EBh

l0800_07E2:
	mov	ax,[0AB4Ah]
	or	ax,[0AB4Ch]
	jnz	07CDh

l0800_07EB:
	mov	dx,[bp-2h]
	mov	ax,[bp-4h]
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn0800_07F6: 0800:07F6
;;   Called from:
;;     0800:084D (in fn0800_083F)
;;     0800:1A9F (in fn0800_1A83)
;;     0800:3E9A (in fn0800_3E5F)
;;     0800:3EB3 (in fn0800_3E5F)
;;     0800:3F46 (in fn0800_3E5F)
;;     0800:3F61 (in fn0800_3E5F)
;;     0800:42D5 (in fn0800_418D)
fn0800_07F6 proc
	push	si
	xchg	si,ax
	xchg	dx,ax
	test	ax,ax
	jz	07FFh

l0800_07FD:
	mul	bx

l0800_07FF:
	jcxz	0806h

l0800_0801:
	xchg	cx,ax
	mul	si
	add	ax,cx

l0800_0806:
	xchg	si,ax
	mul	bx
	add	dx,si
	pop	si
	ret

;; fn0800_080D: 0800:080D
;;   Called from:
;;     0800:1F9D (in fn0800_1F8C)
;;     0800:1FB0 (in fn0800_1F8C)
;;     0800:201A (in fn0800_1FCB)
;;     0800:202D (in fn0800_1FCB)
fn0800_080D proc
	push	cx
	mov	ch,al
	mov	cl,4h
	shr	ax,cl
	add	dx,ax
	mov	al,ch
	mov	ah,bl
	shr	bx,cl
	pop	cx
	add	cx,bx
	mov	bl,ah
	and	ax,0Fh
	and	bx,0Fh
	cmp	dx,cx
	jnz	082Dh

l0800_082B:
	cmp	ax,bx

l0800_082D:
	ret

;; fn0800_082E: 0800:082E
;;   Called from:
;;     1232:0008 (in fn1197_09AC)
fn0800_082E proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+6h]
	mov	word ptr [9A16h],0h
	mov	[9A14h],ax
	pop	bp
	retf

;; fn0800_083F: 0800:083F
;;   Called from:
;;     1F0F:0C8A (in fn1F0F_0BF7)
;;     268D:02AE (in fn268D_0282)
fn0800_083F proc
	mov	cx,[9A16h]
	mov	bx,[9A14h]
	mov	dx,15Ah
	mov	ax,4E35h
	call	07F6h
	add	ax,1h
	adc	dx,0h
	mov	[9A16h],dx
	mov	[9A14h],ax
	mov	ax,[9A16h]
	cwd
	and	ax,7FFFh
	retf

;; fn0800_0865: 0800:0865
;;   Called from:
;;     0800:3BF9 (in fn0800_3BB6)
;;     0800:3C46 (in fn0800_3BB6)
fn0800_0865 proc
	push	bp
	mov	bp,sp
	mov	bx,[bp+6h]
	shl	bx,1h
	test	word ptr [bx+9982h],2h
	jz	087Bh

l0800_0875:
	mov	ax,5h
	push	ax
	jmp	088Fh

l0800_087B:
	push	ds
	mov	ah,3Fh
	mov	bx,[bp+6h]
	mov	cx,[bp+0Ch]
	lds	dx,[bp+8h]
	int	21h
	pop	ds
	jc	088Eh

l0800_088C:
	jmp	0892h

l0800_088E:
	push	ax

l0800_088F:
	call	05ADh

l0800_0892:
	pop	bp
	retf

;; fn0800_0894: 0800:0894
;;   Called from:
;;     0E31:000A (in fn0E31_0002)
;;     226D:0428 (in fn226D_00F9)
fn0800_0894 proc
	push	bp
	mov	bp,sp
	push	ds
	mov	ah,41h
	lds	dx,[bp+6h]
	int	21h
	pop	ds
	jc	08A6h

l0800_08A2:
	xor	ax,ax
	jmp	08AAh

l0800_08A6:
	push	ax
	call	05ADh

l0800_08AA:
	pop	bp
	retf

;; fn0800_08AC: 0800:08AC
;;   Called from:
;;     0800:307C (in fn0800_3060)
fn0800_08AC proc
	push	bp
	mov	bp,sp
	sub	sp,2Ah
	push	si
	push	di
	mov	word ptr [bp-4h],0h
	mov	word ptr [bp-6h],0h
	jmp	08DBh

;; fn0800_08C0: 0800:08C0
;;   Called from:
;;     0800:0A25 (in fn0800_08AC)
;;     0800:0AE8 (in fn0800_08AC)
;;     0800:0B8A (in fn0800_08AC)
;;     0800:0C3C (in fn0800_08AC)
fn0800_08C0 proc
	les	di,[bp+10h]
	test	byte ptr [bp-1h],20h
	jz	08D1h

l0800_08C9:
	les	di,es:[di]
	add	word ptr [bp+10h],4h
	ret

l0800_08D1:
	mov	di,es:[di]
	push	ds
	pop	es
	add	word ptr [bp+10h],2h
	ret

l0800_08DB:
	push	es
	cld

l0800_08DD:
	mov	si,[bp+0Ch]

l0800_08E0:
	mov	es,[bp+0Eh]
	lodsb
	or	al,al
	jz	0957h

l0800_08E9:
	cmp	al,25h
	jz	095Ah

l0800_08ED:
	cbw
	xchg	di,ax
	inc	word ptr [bp-6h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	word ptr [bp+4h]
	pop	cx
	pop	cx
	or	ax,ax
	jl	092Bh

l0800_0901:
	cbw
	or	di,di
	js	0940h

l0800_0906:
	cmp	byte ptr [di+9A18h],1h
	jnz	0940h

l0800_090D:
	xchg	bx,ax
	or	bl,bl
	js	092Eh

l0800_0912:
	cmp	byte ptr [bx+9A18h],1h
	jnz	092Eh

l0800_0919:
	inc	word ptr [bp-6h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	word ptr [bp+4h]
	pop	cx
	pop	cx
	or	ax,ax
	jg	090Dh

l0800_092B:
	jmp	0CC1h

l0800_092E:
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	bx
	call	word ptr [bp+6h]
	add	sp,6h
	dec	word ptr [bp-6h]
	jmp	08E0h

l0800_0940:
	cmp	ax,di
	jz	08E0h

l0800_0944:
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	ax
	call	word ptr [bp+6h]
	add	sp,6h
	dec	word ptr [bp-6h]
	jmp	0CD9h

l0800_0957:
	jmp	0CD9h

l0800_095A:
	mov	word ptr [bp-0Ah],0FFFFh
	mov	es,[bp+0Eh]
	mov	byte ptr [bp-1h],20h

l0800_0966:
	lodsb
	cbw
	mov	[bp+0Ch],si
	xchg	di,ax
	or	di,di
	jl	098Ah

l0800_0971:
	mov	bl,[di+9A18h]
	xor	bh,bh
	cmp	bx,15h
	jbe	097Fh

l0800_097C:
	jmp	0CC1h

l0800_097F:
	shl	bx,1h
	jmp	word ptr cs:[bx+0D74h]

l0800_0986:
	xchg	di,ax
	jmp	08EDh

l0800_098A:
	jmp	0CD9h

l0800_098D:
	or	byte ptr [bp-1h],1h
	jmp	0966h

l0800_0993:
	sub	di,30h
	xchg	[bp-0Ah],di
	or	di,di
	jl	0966h

l0800_099D:
	mov	ax,0Ah
	mul	di
	add	[bp-0Ah],ax
	jmp	0966h

l0800_09A7:
	or	byte ptr [bp-1h],8h
	jmp	0966h

l0800_09AD:
	or	byte ptr [bp-1h],4h
	jmp	0966h

l0800_09B3:
	or	byte ptr [bp-1h],2h
	jmp	0966h

l0800_09B9:
	and	byte ptr [bp-1h],0DFh
	jmp	0966h

l0800_09BF:
	or	byte ptr [bp-1h],20h
	jmp	0966h

l0800_09C5:
	mov	ax,[bp-6h]
	sub	dx,dx
	test	byte ptr [bp-1h],1h
	jz	0A25h

l0800_09D0:
	jmp	0966h

l0800_09D2:
	mov	si,8h
	jmp	09E3h

l0800_09D7:
	mov	si,0Ah
	jmp	09E3h

l0800_09DC:
	mov	si,10h
	jmp	09E3h

l0800_09E1:
	xor	si,si

l0800_09E3:
	test	di,20h
	jnz	09F2h

l0800_09E9:
	cmp	di,58h
	jz	09F2h

l0800_09EE:
	or	byte ptr [bp-1h],4h

l0800_09F2:
	push	ss
	lea	ax,[bp-8h]
	push	ax
	push	ss
	lea	ax,[bp-6h]
	push	ax
	mov	ax,[bp-0Ah]
	and	ax,7FFFh
	push	ax
	push	si
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	word ptr [bp+4h]
	call	0DCBh
	add	sp,14h
	cmp	word ptr [bp-8h],0h
	jle	0A34h

l0800_0A1C:
	test	byte ptr [bp-1h],1h
	jnz	0A31h

l0800_0A22:
	inc	word ptr [bp-4h]

l0800_0A25:
	call	08C0h
	stosw
	test	byte ptr [bp-1h],4h
	jz	0A31h

l0800_0A2F:
	xchg	dx,ax
	stosw

l0800_0A31:
	jmp	08DDh

l0800_0A34:
	jl	0A39h

l0800_0A36:
	jmp	0CD9h

l0800_0A39:
	jmp	0CC1h

l0800_0A3C:
	call	0A3Fh

;; fn0800_0A3F: 0800:0A3F
;;   Called from:
;;     0800:0A3C (in fn0800_08AC)
;;     0800:0A3C (in fn0800_08AC)
fn0800_0A3F proc
	jmp	0CE0h
0800:0A42       FF 76 0A FF 76 08 50 FF 56 06 83 C4 06 FF   .v..v.P.V.....
0800:0A50 4E FA 81 66 F6 FF 7F E8 00 00 E9 AD 02 52 3C 3A N..f.........R<:
0800:0A60 74 19 0B C0 7E 10 FF 76 0A FF 76 08 50 FF 56 06 t...~..v..v.P.V.
0800:0A70 83 C4 06 FF 4E FA 5A 8C DB EB 1F E8 00 00 E9 89 ....N.Z.........
0800:0A80 02 5B 0B C0 7E 14 52 53 FF 76 0A FF 76 08 50 FF .[..~.RS.v..v.P.
0800:0A90 56 06 83 C4 06 FF 4E FA 5B 5A F6 46 FF 01 75 10 V.....N.[Z.F..u.
0800:0AA0 E8 1D FE FF 46 FC 92 AB F6 46 FF 20 74 02 93 AB ....F....F. t...
0800:0AB0 E9 2A FE                                        .*.            

l0800_0AB3:
	jmp	0CC1h

l0800_0AB6:
	push	ss
	lea	ax,[bp-8h]
	push	ax
	push	ss
	lea	ax,[bp-6h]
	push	ax
	mov	ax,7FFFh
	and	ax,[bp-0Ah]
	push	ax
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	word ptr [bp+4h]
	call	245Ah
	add	sp,12h
	cmp	word ptr [bp-8h],0h
	jle	0B18h

l0800_0ADF:
	mov	al,[bp-1h]
	cbw
	test	ax,1h
	jnz	0B12h

l0800_0AE8:
	call	08C0h
	inc	word ptr [bp-4h]
	test	byte ptr [bp-1h],4h
	jz	0AF9h

l0800_0AF4:
	mov	ax,4h
	jmp	0B06h

l0800_0AF9:
	test	byte ptr [bp-1h],8h
	jz	0B04h

l0800_0AFF:
	mov	ax,8h
	jmp	0B06h

l0800_0B04:
	xor	ax,ax

l0800_0B06:
	push	ax
	push	es
	push	di
	call	245Eh
	add	sp,6h
	jmp	08DDh

l0800_0B12:
	call	2462h
	jmp	08DDh

l0800_0B18:
	call	2462h
	jl	0AB3h

l0800_0B1D:
	jmp	0CD9h

l0800_0B20:
	call	0B23h

;; fn0800_0B23: 0800:0B23
;;   Called from:
;;     0800:0B20 (in fn0800_08AC)
;;     0800:0B20 (in fn0800_08AC)
fn0800_0B23 proc
	jmp	0CE0h
0800:0B26                   F6 46 FF 01 75 06 E8 91 FD FF       .F..u.....
0800:0B30 46 FC 81 66 F6 FF 7F 74 2D F6 46 FF 01 75 01 AA F..f...t-.F..u..
0800:0B40 FF 46 FA 06 FF 76 0A FF 76 08 FF 56 04 59 59 07 .F...v..v..V.YY.
0800:0B50 0B C0 7E 12 0A C0 78 09 93 80 BF 18 9A 01 93 7E ..~...x........~
0800:0B60 05 FF 4E F6 7F D3 06 FF 76 0A FF 76 08 50 FF 56 ..N.....v..v.P.V
0800:0B70 06 83 C4 06 07 FF 4E FA F6 46 FF 01 75 03 B0 00 ......N..F..u...
0800:0B80 AA E9 59 FD                                     ..Y.           

l0800_0B84:
	test	byte ptr [bp-1h],1h
	jnz	0B8Dh

l0800_0B8A:
	call	08C0h

l0800_0B8D:
	mov	si,[bp-0Ah]
	or	si,si
	jge	0B97h

l0800_0B94:
	mov	si,1h

l0800_0B97:
	jz	0BB7h

l0800_0B99:
	inc	word ptr [bp-6h]
	push	es
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	word ptr [bp+4h]
	pop	cx
	pop	cx
	pop	es
	or	ax,ax
	jl	0BC3h

l0800_0BAD:
	test	byte ptr [bp-1h],1h
	jnz	0BB4h

l0800_0BB3:
	stosb

l0800_0BB4:
	dec	si
	jg	0B99h

l0800_0BB7:
	test	byte ptr [bp-1h],1h
	jnz	0BC0h

l0800_0BBD:
	inc	word ptr [bp-4h]

l0800_0BC0:
	jmp	08DDh

l0800_0BC3:
	jmp	0CC1h

l0800_0BC6:
	push	es
	sub	ax,ax
	cld
	push	ss
	pop	es
	lea	di,[bp-2Ah]
	mov	cx,10h

l0800_0BD2:
	rep stosw

l0800_0BD4:
	pop	es
	lodsb
	and	byte ptr [bp-1h],0EFh
	cmp	al,5Eh
	jnz	0BE5h

l0800_0BDF:
	or	byte ptr [bp-1h],10h
	lodsb

l0800_0BE5:
	mov	ah,0h

l0800_0BE7:
	mov	dl,al
	mov	di,ax
	mov	cl,3h
	shr	di,cl
	mov	cx,107h
	and	cl,dl
	shl	ch,cl
	or	[bp+di-2Ah],ch

l0800_0BF9:
	lodsb
	cmp	al,0h
	jz	0C28h

l0800_0BFF:
	cmp	al,5Dh
	jz	0C2Bh

l0800_0C03:
	cmp	al,2Dh
	jnz	0BE7h

l0800_0C07:
	cmp	dl,es:[si]
	ja	0BE7h

l0800_0C0C:
	cmp	byte ptr es:[si],5Dh
	jz	0BE7h

l0800_0C12:
	lodsb
	sub	al,dl
	jz	0BF9h

l0800_0C18:
	add	dl,al

l0800_0C1A:
	rol	ch,1h
	adc	di,0h
	or	[bp+di-2Ah],ch
	dec	al
	jnz	0C1Ah

l0800_0C26:
	jmp	0BF9h

l0800_0C28:
	jmp	0CD9h

l0800_0C2B:
	mov	[bp+0Ch],si
	and	word ptr [bp-0Ah],7FFFh
	mov	si,[bp-0Ah]
	test	byte ptr [bp-1h],1h
	jnz	0C3Fh

l0800_0C3C:
	call	08C0h

l0800_0C3F:
	dec	si
	jl	0C9Ah

l0800_0C42:
	inc	word ptr [bp-6h]
	push	es
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	word ptr [bp+4h]
	pop	cx
	pop	cx
	pop	es
	or	ax,ax
	jl	0CAFh

l0800_0C56:
	xchg	si,ax
	mov	bx,si
	mov	cl,3h
	shr	si,cl
	mov	cx,107h
	and	cl,bl
	shl	ch,cl
	test	[bp+si-2Ah],ch
	xchg	si,ax
	xchg	bx,ax
	jz	0C73h

l0800_0C6B:
	test	byte ptr [bp-1h],10h
	jz	0C79h

l0800_0C71:
	jmp	0C82h

l0800_0C73:
	test	byte ptr [bp-1h],10h
	jz	0C82h

l0800_0C79:
	test	byte ptr [bp-1h],1h
	jnz	0C3Fh

l0800_0C7F:
	stosb
	jmp	0C3Fh

l0800_0C82:
	push	es
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	ax
	call	word ptr [bp+6h]
	add	sp,6h
	pop	es
	dec	word ptr [bp-6h]
	inc	si
	cmp	si,[bp-0Ah]
	jge	0CA3h

l0800_0C9A:
	test	byte ptr [bp-1h],1h
	jnz	0CACh

l0800_0CA0:
	inc	word ptr [bp-4h]

l0800_0CA3:
	test	byte ptr [bp-1h],1h
	jnz	0CACh

l0800_0CA9:
	mov	al,0h
	stosb

l0800_0CAC:
	jmp	08DDh

l0800_0CAF:
	inc	si
	cmp	si,[bp-0Ah]
	jge	0CC1h

l0800_0CB5:
	test	byte ptr [bp-1h],1h
	jnz	0CC1h

l0800_0CBB:
	mov	al,0h
	stosb
	inc	word ptr [bp-4h]

;; fn0800_0CC1: 0800:0CC1
;;   Called from:
;;     0800:092B (in fn0800_08AC)
;;     0800:0954 (in fn0800_08AC)
;;     0800:0957 (in fn0800_08AC)
;;     0800:097C (in fn0800_08AC)
;;     0800:0981 (in fn0800_08AC)
;;     0800:0981 (in fn0800_08AC)
;;     0800:0981 (in fn0800_08AC)
;;     0800:098A (in fn0800_08AC)
;;     0800:0A39 (in fn0800_08AC)
;;     0800:0AB3 (in fn0800_08AC)
;;     0800:0BC3 (in fn0800_08AC)
;;     0800:0CB3 (in fn0800_08AC)
;;     0800:0CB9 (in fn0800_08AC)
;;     0800:0CBE (in fn0800_08AC)
;;     0800:0D08 (in fn0800_0CE0)
fn0800_0CC1 proc
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	mov	ax,0FFFFh
	push	ax
	call	word ptr [bp+6h]
	add	sp,6h
	cmp	word ptr [bp-4h],1h
	sbb	word ptr [bp-4h],0h

;; fn0800_0CD9: 0800:0CD9
;;   Called from:
;;     0800:0A36 (in fn0800_08AC)
;;     0800:0B1D (in fn0800_08AC)
;;     0800:0C28 (in fn0800_08AC)
;;     0800:0CD5 (in fn0800_0CC1)
fn0800_0CD9 proc
	pop	es
	mov	ax,[bp-4h]
	jmp	0D6Eh

;; fn0800_0CE0: 0800:0CE0
;;   Called from:
;;     0800:0A3F (in fn0800_0A3F)
;;     0800:0B23 (in fn0800_0B23)
fn0800_0CE0 proc
	inc	word ptr [bp-6h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	word ptr [bp+4h]
	pop	cx
	pop	cx
	or	ax,ax
	jle	0D05h

l0800_0CF2:
	or	al,al
	js	0CFFh

l0800_0CF6:
	xchg	bx,ax
	cmp	byte ptr [bx+9A18h],1h
	xchg	bx,ax
	jz	0CE0h

l0800_0CFF:
	pop	cx
	add	cx,3h
	jmp	cx

l0800_0D05:
	jz	0CFFh

l0800_0D07:
	pop	cx
	jmp	0CC1h
0800:0D0A                               2B D2 B9 04 00 FF           +.....
0800:0D10 4E F6 7C 49 52 51 FF 46 FA FF 76 0A FF 76 08 FF N.|IRQ.F..v..v..
0800:0D20 56 04 59 59 59 5A 0B C0 7E 35 FE C9 7C 31 8A E8 V.YYYZ..~5..|1..
0800:0D30 80 ED 30 72 2A 80 FD 0A 72 17 80 ED 11 72 20 80 ..0r*...r....r .
0800:0D40 FD 06 72 0A 80 ED 20 72 16 80 FD 06 73 11 80 C5 ..r... r....s...
0800:0D50 0A D1 E2 D1 E2 D1 E2 D1 E2 02 D5 EB B2 2B C0 80 .............+..
0800:0D60 F9 04 74 06 59 83 C1 03 FF E1 59 E9 53 FF       ..t.Y.....Y.S. 

l0800_0D6E:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret
l0800_0D74	dw	0x0CD9
l0800_0D76	dw	0x0CD9
l0800_0D78	dw	0x0CD9
l0800_0D7A	dw	0x0986
l0800_0D7C	dw	0x098D
l0800_0D7E	dw	0x0993
l0800_0D80	dw	0x0B84
l0800_0D82	dw	0x09D7
l0800_0D84	dw	0x09D7
l0800_0D86	dw	0x09E1
l0800_0D88	dw	0x0AB6
l0800_0D8A	dw	0x09A7
l0800_0D8C	dw	0x09B3
l0800_0D8E	dw	0x09AD
l0800_0D90	dw	0x09D2
l0800_0D92	dw	0x0B20
l0800_0D94	dw	0x0BC6
l0800_0D96	dw	0x09C5
l0800_0D98	dw	0x09DC
l0800_0D9A	dw	0x0A3C
l0800_0D9C	dw	0x09B9
l0800_0D9E	dw	0x09BF

;; fn0800_0DA0: 0800:0DA0
;;   Called from:
;;     0800:0EBD (in fn0800_0DCB)
;;     0800:0EE7 (in fn0800_0DCB)
;;     0800:0F17 (in fn0800_0DCB)
fn0800_0DA0 proc
	push	bx
	sub	bl,30h
	jc	0DC8h

l0800_0DA6:
	cmp	bl,9h
	jbe	0DBDh

l0800_0DAB:
	cmp	bl,2Ah
	ja	0DB5h

l0800_0DB0:
	sub	bl,7h
	jmp	0DB8h

l0800_0DB5:
	sub	bl,27h

l0800_0DB8:
	cmp	bl,9h
	jbe	0DC8h

l0800_0DBD:
	cmp	bl,cl
	jnc	0DC8h

l0800_0DC1:
	inc	sp
	inc	sp
	clc
	mov	bh,0h
	jmp	0DCAh

l0800_0DC8:
	pop	bx
	stc

l0800_0DCA:
	ret

;; fn0800_0DCB: 0800:0DCB
;;   Called from:
;;     0800:0A10 (in fn0800_08AC)
fn0800_0DCB proc
	push	bp
	mov	bp,sp
	sub	sp,6h
	push	si
	push	di
	mov	byte ptr [bp-1h],0h
	mov	word ptr [bp-4h],0h
	mov	word ptr [bp-6h],1h

l0800_0DE1:
	inc	word ptr [bp-4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	word ptr [bp+4h]
	pop	cx
	pop	cx
	or	ax,ax
	jl	0E64h

l0800_0DF3:
	cbw
	xchg	bx,ax
	test	bl,80h
	jnz	0E02h

l0800_0DFA:
	mov	di,96E3h
	test	byte ptr [bx+di],1h
	jnz	0DE1h

l0800_0E02:
	xchg	bx,ax
	dec	word ptr [bp+0Eh]
	jl	0E6Bh

l0800_0E08:
	cmp	al,2Bh
	jz	0E13h

l0800_0E0C:
	cmp	al,2Dh
	jnz	0E2Ah

l0800_0E10:
	inc	byte ptr [bp-1h]

l0800_0E13:
	dec	word ptr [bp+0Eh]
	jl	0E6Bh

l0800_0E18:
	inc	word ptr [bp-4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	word ptr [bp+4h]
	pop	cx
	pop	cx
	or	ax,ax
	jl	0E64h

l0800_0E2A:
	sub	si,si
	mov	di,si
	mov	cx,[bp+0Ch]
	jcxz	0E89h

l0800_0E33:
	cmp	cx,24h
	ja	0E6Bh

l0800_0E38:
	cmp	cl,2h
	jc	0E6Bh

l0800_0E3D:
	cmp	al,30h
	jnz	0EB9h

l0800_0E41:
	cmp	cl,10h
	jnz	0EB7h

l0800_0E46:
	dec	word ptr [bp+0Eh]
	jl	0E86h

l0800_0E4B:
	inc	word ptr [bp-4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	word ptr [bp+4h]
	pop	cx
	pop	cx
	cmp	al,78h
	jz	0EB7h

l0800_0E5D:
	cmp	al,58h
	jz	0EB7h

l0800_0E61:
	jmp	0EE3h

l0800_0E64:
	mov	word ptr [bp-6h],0FFFFh
	jmp	0E70h

l0800_0E6B:
	mov	word ptr [bp-6h],0h

l0800_0E70:
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	ax
	call	word ptr [bp+6h]
	add	sp,6h
	dec	word ptr [bp-4h]
	sub	ax,ax
	cwd
	jmp	0F3Dh

l0800_0E86:
	jmp	0F2Dh

l0800_0E89:
	cmp	al,30h
	mov	word ptr [bp+0Ch],0Ah
	jnz	0EB9h

l0800_0E92:
	dec	word ptr [bp+0Eh]
	jl	0E86h

l0800_0E97:
	inc	word ptr [bp-4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	word ptr [bp+4h]
	pop	cx
	pop	cx
	mov	word ptr [bp+0Ch],8h
	cmp	al,78h
	jz	0EB2h

l0800_0EAE:
	cmp	al,58h
	jnz	0EE3h

l0800_0EB2:
	mov	word ptr [bp+0Ch],10h

l0800_0EB7:
	jmp	0ED0h

l0800_0EB9:
	mov	cx,[bp+0Ch]
	xchg	bx,ax
	call	0DA0h
	xchg	bx,ax
	jc	0E6Bh

l0800_0EC3:
	xchg	si,ax
	jmp	0ED0h

l0800_0EC6:
	xchg	si,ax
	mul	word ptr [bp+0Ch]
	add	si,ax
	adc	di,dx
	jnz	0F00h

l0800_0ED0:
	dec	word ptr [bp+0Eh]
	jl	0F2Dh

l0800_0ED5:
	inc	word ptr [bp-4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	word ptr [bp+4h]
	pop	cx
	pop	cx

l0800_0EE3:
	mov	cx,[bp+0Ch]
	xchg	bx,ax
	call	0DA0h
	xchg	bx,ax
	jnc	0EC6h

l0800_0EED:
	jmp	0F1Dh

l0800_0EEF:
	xchg	si,ax
	mul	cx
	xchg	di,ax
	xchg	dx,cx
	mul	dx
	add	si,di
	adc	ax,cx
	xchg	di,ax
	adc	dl,dh
	jnz	0F51h

l0800_0F00:
	dec	word ptr [bp+0Eh]
	jl	0F2Dh

l0800_0F05:
	inc	word ptr [bp-4h]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	call	word ptr [bp+4h]
	pop	cx
	pop	cx
	mov	cx,[bp+0Ch]
	xchg	bx,ax
	call	0DA0h
	xchg	bx,ax
	jnc	0EEFh

l0800_0F1D:
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	ax
	call	word ptr [bp+6h]
	add	sp,6h
	dec	word ptr [bp-4h]

l0800_0F2D:
	mov	dx,di
	xchg	si,ax
	cmp	byte ptr [bp-1h],0h
	jz	0F3Dh

l0800_0F36:
	neg	dx
	neg	ax
	sbb	dx,0h

l0800_0F3D:
	les	di,[bp+10h]
	mov	bx,[bp-4h]
	add	es:[di],bx
	les	di,[bp+14h]
	mov	bx,[bp-6h]
	mov	es:[di],bx
	jmp	0F67h

l0800_0F51:
	mov	ax,0FFFFh
	mov	dx,7FFFh
	add	al,[bp-1h]
	adc	ah,0h
	adc	dx,0h
	mov	word ptr [bp-6h],2h
	jmp	0F3Dh

l0800_0F67:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret

;; fn0800_0F6D: 0800:0F6D
;;   Called from:
;;     0800:2205 (in fn0800_21F9)
fn0800_0F6D proc
	push	bp
	mov	bp,sp
	push	si
	mov	bx,es
	les	si,[bp+6h]
	mov	es:[si],bx
	mov	ax,[bp+4h]
	mov	es:[si+2h],ax
	mov	es:[si+4h],ss
	mov	es:[si+6h],ds
	mov	es,bx
	pop	si
	pop	bp
	retf
0800:0F8D                                        55 8B EC              U..
0800:0F90 56 B4 2B C4 76 06 26 8B 0C 26 8B 54 02 CD 21 5E V.+.v.&..&.T..!^
0800:0FA0 5D CB 55 8B EC 56 B4 2D C4 76 06 26 8B 0C 26 8B ].U..V.-.v.&..&.
0800:0FB0 54 02 CD 21 5E 5D CB B9 05 00 3B 0E 80 99 73 38 T..!^]....;...s8
0800:0FC0 8B D9 D1 E3 C7 87 82 99 00 00 8B C1 BA 14 00 F7 ................
0800:0FD0 EA 8B D8 C6 87 F4 97 FF 8B C1 BA 14 00 F7 EA 05 ................
0800:0FE0 F0 97 50 8B C1 BA 14 00 F7 EA 8B D8 58 89 87 02 ..P.........X...
0800:0FF0 98 41 3B 0E 80 99 72 C8 A0 F4 97 98 50 90 0E E8 .A;...r.....P...
0800:1000 F6 F5 59 0B C0 75 06 81 26 F2 97 FF FD B8 00 02 ..Y..u..&.......
0800:1010 50 F7 06 F2 97 00 02 74 05 B8 01 00 EB 02 33 C0 P......t......3.
0800:1020 50 33 C0 33 D2 50 52 1E B8 F0 97 50 90 0E E8 59 P3.3.PR....P...Y
0800:1030 2C 83 C4 0C A0 08 98 98 50 90 0E E8 BA F5 59 0B ,.......P.....Y.
0800:1040 C0 75 06 81 26 06 98 FF FD B8 00 02 50 F7 06 06 .u..&.......P...
0800:1050 98 00 02 74 05 B8 02 00 EB 02 33 C0 50 33 C0 33 ...t......3.P3.3
0800:1060 D2 50 52 1E B8 04 98 50 90 0E E8 1D 2C 83 C4 0C .PR....P....,...
0800:1070 C3 55 8B EC 83 EC 08 16 8D 46 F8 50 16 8D 46 FC .U.......F.P..F.
0800:1080 50 C4 5E 06 26 FF 77 02 26 FF 37 90 0E E8 F9 2E P.^.&.w.&.7.....
0800:1090 83 C4 0C 16 8D 46 FC 50 90 0E E8 F0 FE 59 59 16 .....F.P.....YY.
0800:10A0 8D 46 F8 50 90 0E E8 F9 FE 59 59 33 C0 8B E5 5D .F.P.....YY3...]
0800:10B0 CB                                              .              

;; fn0800_10B1: 0800:10B1
;;   Called from:
;;     1197:09AF (in fn1197_09AC)
;;     2141:0254 (in fn2141_020E)
fn0800_10B1 proc
	push	bp
	mov	bp,sp
	sub	sp,0Ch
	push	ss
	lea	ax,[bp-4h]
	push	ax
	nop
	push	cs
	call	0410h
	pop	cx
	pop	cx
	push	ss
	lea	ax,[bp-8h]
	push	ax
	nop
	push	cs
	call	0423h
	pop	cx
	pop	cx
	push	ss
	lea	ax,[bp-8h]
	push	ax
	push	ss
	lea	ax,[bp-4h]
	push	ax
	nop
	push	cs
	call	3E5Fh
	add	sp,8h
	mov	[bp-0Ah],dx
	mov	[bp-0Ch],ax
	mov	ax,[bp+6h]
	or	ax,[bp+8h]
	jz	10FFh

l0800_10EF:
	les	bx,[bp+6h]
	mov	ax,[bp-0Ah]
	mov	dx,[bp-0Ch]
	mov	es:[bx+2h],ax
	mov	es:[bx],dx

l0800_10FF:
	mov	dx,[bp-0Ah]
	mov	ax,[bp-0Ch]
	mov	sp,bp
	pop	bp
	retf

;; fn0800_1109: 0800:1109
;;   Called from:
;;     1D10:0FC6 (in fn1D10_0FB3)
;;     1ED0:0017 (in fn1ED0_0009)
fn0800_1109 proc
	push	bp
	mov	bp,sp
	mov	ax,1h
	push	ax
	xor	ax,ax
	xor	dx,dx
	push	ax
	push	dx
	push	word ptr [bp+6h]
	nop
	push	cs
	call	06ABh
	add	sp,8h
	pop	bp
	retf

;; fn0800_1123: 0800:1123
;;   Called from:
;;     0800:2BF4 (in fn0800_2B50)
fn0800_1123 proc
	push	bp
	mov	bp,sp
	push	ds
	mov	ah,41h
	lds	dx,[bp+6h]
	int	21h
	pop	ds
	jc	1135h

l0800_1131:
	xor	ax,ax
	jmp	1139h

l0800_1135:
	push	ax
	call	05ADh

l0800_1139:
	pop	bp
	retf

;; fn0800_113B: 0800:113B
;;   Called from:
;;     0800:13AA (in fn0800_1153)
;;     0800:13B3 (in fn0800_1153)
fn0800_113B proc
	mov	al,dh
	call	1142h
	mov	al,dl

;; fn0800_1142: 0800:1142
;;   Called from:
;;     0800:113D (in fn0800_113B)
;;     0800:1140 (in fn0800_113B)
fn0800_1142 proc
	aam	10h
	xchg	al,ah
	call	114Bh
	xchg	al,ah

;; fn0800_114B: 0800:114B
;;   Called from:
;;     0800:1146 (in fn0800_1142)
;;     0800:1149 (in fn0800_1142)
fn0800_114B proc
	add	al,90h
	daa
	adc	al,40h
	daa
	stosb
	ret

;; fn0800_1153: 0800:1153
;;   Called from:
;;     0800:187E (in fn0800_1867)
;;     0800:37E9 (in fn0800_37D3)
fn0800_1153 proc
	push	bp
	mov	bp,sp
	sub	sp,96h
	push	si
	push	di
	mov	word ptr [bp-12h],0h
	mov	word ptr [bp-14h],50h
	mov	word ptr [bp-16h],0h
	jmp	11B7h

;; fn0800_116D: 0800:116D
;;   Called from:
;;     0800:1424 (in fn0800_1153)
;;     0800:1484 (in fn0800_1153)
;;     0800:14B6 (in fn0800_1153)
fn0800_116D proc
	push	di
	mov	cx,0FFFFh
	xor	al,al

l0800_1173:
	repne scasb

l0800_1175:
	not	cx
	dec	cx
	pop	di
	ret

;; fn0800_117A: 0800:117A
;;   Called from:
;;     0800:150A (in fn0800_1153)
;;     0800:151B (in fn0800_1153)
;;     0800:1521 (in fn0800_1153)
;;     0800:1540 (in fn0800_1153)
;;     0800:154B (in fn0800_1153)
;;     0800:156E (in fn0800_1153)
;;     0800:15BD (in fn0800_1153)
fn0800_117A proc
	mov	ss:[di],al
	inc	di
	dec	byte ptr [bp-14h]
	jnz	11B6h

;; fn0800_1183: 0800:1183
;;   Called from:
;;     0800:1181 (in fn0800_117A)
;;     0800:11D9 (in fn0800_1153)
;;     0800:1561 (in fn0800_1153)
;;     0800:15CC (in fn0800_1153)
fn0800_1183 proc
	push	bx
	push	cx
	push	dx
	push	es
	lea	ax,[bp+0FF6Ah]
	sub	di,ax
	push	ss
	lea	ax,[bp+0FF6Ah]
	push	ax
	push	di
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	call	word ptr [bp+0Eh]
	or	ax,ax
	jnz	11A6h

l0800_11A1:
	mov	word ptr [bp-16h],1h

l0800_11A6:
	mov	word ptr [bp-14h],50h
	add	[bp-12h],di
	lea	di,[bp+0FF6Ah]
	pop	es
	pop	dx
	pop	cx
	pop	bx

l0800_11B6:
	ret

l0800_11B7:
	push	es
	cld
	lea	di,[bp+0FF6Ah]
	mov	[bp-4h],di

l0800_11C0:
	mov	di,[bp-4h]

l0800_11C3:
	les	si,[bp+6h]

l0800_11C6:
	lodsb
	or	al,al
	jz	11DEh

l0800_11CC:
	cmp	al,25h
	jz	11E1h

l0800_11D0:
	mov	ss:[di],al
	inc	di
	dec	byte ptr [bp-14h]
	jg	11C6h

l0800_11D9:
	call	1183h
	jmp	11C6h

l0800_11DE:
	jmp	15C6h

l0800_11E1:
	mov	[bp-10h],si
	lodsb
	cmp	al,25h
	jz	11D0h

l0800_11EA:
	mov	[bp-4h],di
	xor	cx,cx
	mov	[bp-0Eh],cx
	mov	word ptr [bp-2h],20h
	mov	[bp-0Bh],cl
	mov	word ptr [bp-8h],0FFFFh
	mov	word ptr [bp-0Ah],0FFFFh
	jmp	1208h

l0800_1206:
	lodsb

l0800_1208:
	xor	ah,ah
	mov	dx,ax
	mov	bx,ax
	sub	bl,20h
	cmp	bl,60h
	jnc	1229h

l0800_1216:
	mov	bl,[bx+9A9Fh]
	cmp	bx,17h
	jbe	1222h

l0800_121F:
	jmp	15B2h

l0800_1222:
	shl	bx,1h
	jmp	word ptr cs:[bx+15E6h]

l0800_1229:
	jmp	15B2h

l0800_122C:
	cmp	ch,0h
	ja	1229h

l0800_1231:
	or	word ptr [bp-2h],1h
	jmp	1206h

l0800_1237:
	cmp	ch,0h
	ja	1229h

l0800_123C:
	or	word ptr [bp-2h],2h
	jmp	1206h

l0800_1242:
	cmp	ch,0h
	ja	1229h

l0800_1247:
	cmp	byte ptr [bp-0Bh],2Bh
	jz	1250h

l0800_124D:
	mov	[bp-0Bh],dl

l0800_1250:
	jmp	1206h

l0800_1252:
	and	word ptr [bp-2h],0DFh
	jmp	125Ch

l0800_1258:
	or	word ptr [bp-2h],20h

l0800_125C:
	mov	ch,5h
	jmp	1206h

l0800_1260:
	cmp	ch,0h
	ja	12B2h

l0800_1265:
	test	word ptr [bp-2h],2h
	jnz	1295h

l0800_126C:
	or	word ptr [bp-2h],8h
	mov	ch,1h
	jmp	1206h

l0800_1274:
	jmp	15B2h

l0800_1277:
	mov	di,[bp+4h]
	mov	ax,ss:[di]
	add	word ptr [bp+4h],2h
	cmp	ch,2h
	jnc	1298h

l0800_1286:
	or	ax,ax
	jns	1290h

l0800_128A:
	neg	ax
	or	word ptr [bp-2h],2h

l0800_1290:
	mov	[bp-8h],ax
	mov	ch,3h

l0800_1295:
	jmp	1206h

l0800_1298:
	cmp	ch,4h
	jnz	1274h

l0800_129D:
	mov	[bp-0Ah],ax
	inc	ch
	jmp	1206h

l0800_12A5:
	cmp	ch,4h
	jnc	1274h

l0800_12AA:
	mov	ch,4h
	inc	word ptr [bp-0Ah]
	jmp	1206h

l0800_12B2:
	xchg	dx,ax
	sub	al,30h
	cbw
	cmp	ch,2h
	ja	12D4h

l0800_12BB:
	mov	ch,2h
	xchg	[bp-8h],ax
	or	ax,ax
	jl	1295h

l0800_12C4:
	shl	ax,1h
	mov	dx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,dx
	add	[bp-8h],ax
	jmp	1206h

l0800_12D4:
	cmp	ch,4h
	jnz	1274h

l0800_12D9:
	xchg	[bp-0Ah],ax
	or	ax,ax
	jz	1295h

l0800_12E0:
	shl	ax,1h
	mov	dx,ax
	shl	ax,1h
	shl	ax,1h
	add	ax,dx
	add	[bp-0Ah],ax
	jmp	1206h

l0800_12F0:
	or	word ptr [bp-2h],10h
	jmp	125Ch

l0800_12F7:
	or	word ptr [bp-2h],100h

l0800_12FC:
	and	word ptr [bp-2h],0EFh
	jmp	125Ch

l0800_1303:
	mov	bh,8h
	jmp	1311h

l0800_1307:
	mov	bh,0Ah
	jmp	1315h

l0800_130B:
	mov	bh,10h
	mov	bl,0E9h
	add	bl,dl

l0800_1311:
	mov	byte ptr [bp-0Bh],0h

l0800_1315:
	mov	[bp-5h],dl
	xor	dx,dx
	mov	[bp-6h],dl
	mov	di,[bp+4h]
	mov	ax,ss:[di]
	jmp	1335h

l0800_1325:
	mov	bh,0Ah
	mov	byte ptr [bp-6h],1h
	mov	[bp-5h],dl
	mov	di,[bp+4h]
	mov	ax,ss:[di]
	cwd

l0800_1335:
	inc	di
	inc	di
	mov	[bp+6h],si
	test	word ptr [bp-2h],10h
	jz	1346h

l0800_1341:
	mov	dx,ss:[di]
	inc	di
	inc	di

l0800_1346:
	mov	[bp+4h],di
	lea	di,[bp-45h]
	or	ax,ax
	jnz	1362h

l0800_1350:
	or	dx,dx
	jnz	1362h

l0800_1354:
	cmp	word ptr [bp-0Ah],0h
	jnz	1366h

l0800_135A:
	mov	byte ptr ss:[di],0h
	mov	ax,di
	jmp	1376h

l0800_1362:
	or	word ptr [bp-2h],4h

l0800_1366:
	push	dx
	push	ax
	push	ss
	push	di
	mov	al,bh
	cbw
	push	ax
	mov	al,[bp-6h]
	push	ax
	push	bx
	call	0609h

l0800_1376:
	push	ss
	pop	es
	mov	dx,[bp-0Ah]
	or	dx,dx
	jge	1382h

l0800_137F:
	jmp	1476h

l0800_1382:
	jmp	1484h

l0800_1385:
	mov	[bp-5h],dl
	mov	[bp+6h],si
	lea	di,[bp-46h]
	mov	bx,[bp+4h]
	push	word ptr ss:[bx]
	inc	bx
	inc	bx
	mov	[bp+4h],bx
	test	word ptr [bp-2h],20h
	jz	13B0h

l0800_13A0:
	mov	dx,ss:[bx]
	inc	bx
	inc	bx
	mov	[bp+4h],bx
	push	ss
	pop	es
	call	113Bh
	mov	al,3Ah
	stosb

l0800_13B0:
	push	ss
	pop	es
	pop	dx
	call	113Bh
	mov	byte ptr ss:[di],0h
	mov	byte ptr [bp-6h],0h
	and	word ptr [bp-2h],0FBh
	lea	cx,[bp-46h]
	sub	di,cx
	xchg	di,cx
	mov	dx,[bp-0Ah]
	cmp	dx,cx
	jg	13D2h

l0800_13D0:
	mov	dx,cx

l0800_13D2:
	jmp	1476h

l0800_13D5:
	mov	[bp+6h],si
	mov	[bp-5h],dl
	mov	di,[bp+4h]
	mov	ax,ss:[di]
	add	word ptr [bp+4h],2h
	push	ss
	pop	es
	lea	di,[bp-45h]
	xor	ah,ah
	mov	ss:[di],ax
	mov	cx,1h
	jmp	14B9h

l0800_13F5:
	mov	[bp+6h],si
	mov	[bp-5h],dl
	mov	di,[bp+4h]
	test	word ptr [bp-2h],20h
	jnz	1412h

l0800_1405:
	mov	di,ss:[di]
	add	word ptr [bp+4h],2h
	push	ds
	pop	es
	or	di,di
	jmp	141Dh

l0800_1412:
	les	di,ss:[di]
	add	word ptr [bp+4h],4h
	mov	ax,es
	or	ax,di

l0800_141D:
	jnz	1424h

l0800_141F:
	push	ds
	pop	es
	mov	di,9A98h

l0800_1424:
	call	116Dh
	cmp	cx,[bp-0Ah]
	jbe	142Fh

l0800_142C:
	mov	cx,[bp-0Ah]

l0800_142F:
	jmp	14B9h

l0800_1432:
	mov	[bp+6h],si
	mov	[bp-5h],dl
	mov	di,[bp+4h]
	mov	cx,[bp-0Ah]
	or	cx,cx
	jge	1445h

l0800_1442:
	mov	cx,6h

l0800_1445:
	push	ss
	push	di
	push	cx
	push	ss
	lea	bx,[bp-45h]
	push	bx
	push	dx
	mov	ax,1h
	and	ax,[bp-2h]
	push	ax
	mov	ax,[bp-2h]
	test	ax,100h
	jz	1466h

l0800_145D:
	mov	ax,8h
	add	word ptr [bp+4h],0Ah
	jmp	146Dh

l0800_1466:
	add	word ptr [bp+4h],8h
	mov	ax,6h

l0800_146D:
	push	ax
	call	2456h
	push	ss
	pop	es
	lea	di,[bp-45h]

l0800_1476:
	test	word ptr [bp-2h],8h
	jz	1495h

l0800_147D:
	mov	dx,[bp-8h]
	or	dx,dx
	jle	1495h

l0800_1484:
	call	116Dh
	cmp	byte ptr es:[di],2Dh
	jnz	148Eh

l0800_148D:
	dec	cx

l0800_148E:
	sub	dx,cx
	jle	1495h

l0800_1492:
	mov	[bp-0Eh],dx

l0800_1495:
	cmp	byte ptr es:[di],2Dh
	jz	14A6h

l0800_149B:
	mov	al,[bp-0Bh]
	or	al,al
	jz	14B6h

l0800_14A2:
	dec	di
	mov	es:[di],al

l0800_14A6:
	cmp	word ptr [bp-0Eh],0h
	jle	14B6h

l0800_14AC:
	mov	cx,[bp-0Ah]
	or	cx,cx
	jge	14B6h

l0800_14B3:
	dec	word ptr [bp-0Eh]

l0800_14B6:
	call	116Dh

l0800_14B9:
	mov	si,di
	mov	di,[bp-4h]
	mov	bx,[bp-8h]
	mov	ax,5h
	and	ax,[bp-2h]
	cmp	ax,5h
	jnz	14DFh

l0800_14CC:
	mov	ah,[bp-5h]
	cmp	ah,6Fh
	jnz	14E1h

l0800_14D4:
	cmp	word ptr [bp-0Eh],0h
	jg	14DFh

l0800_14DA:
	mov	word ptr [bp-0Eh],1h

l0800_14DF:
	jmp	14FCh

l0800_14E1:
	cmp	ah,78h
	jz	14EBh

l0800_14E6:
	cmp	ah,58h
	jnz	14FCh

l0800_14EB:
	or	word ptr [bp-2h],40h
	dec	bx
	dec	bx
	sub	word ptr [bp-0Eh],2h
	jge	14FCh

l0800_14F7:
	mov	word ptr [bp-0Eh],0h

l0800_14FC:
	add	cx,[bp-0Eh]
	test	word ptr [bp-2h],2h
	jnz	1512h

l0800_1506:
	jmp	150Eh

l0800_1508:
	mov	al,20h
	call	117Ah
	dec	bx

l0800_150E:
	cmp	bx,cx
	jg	1508h

l0800_1512:
	test	word ptr [bp-2h],40h
	jz	1524h

l0800_1519:
	mov	al,30h
	call	117Ah
	mov	al,[bp-5h]
	call	117Ah

l0800_1524:
	mov	dx,[bp-0Eh]
	or	dx,dx
	jle	1552h

l0800_152B:
	sub	cx,dx
	sub	bx,dx
	mov	al,es:[si]
	cmp	al,2Dh
	jz	153Eh

l0800_1536:
	cmp	al,20h
	jz	153Eh

l0800_153A:
	cmp	al,2Bh
	jnz	1545h

l0800_153E:
	lodsb
	call	117Ah
	dec	cx
	dec	bx

l0800_1545:
	xchg	dx,cx
	jcxz	1550h

l0800_1549:
	mov	al,30h
	call	117Ah
	loop	1549h

l0800_1550:
	xchg	dx,cx

l0800_1552:
	jcxz	1566h

l0800_1554:
	sub	bx,cx

l0800_1556:
	lodsb
	mov	ss:[di],al
	inc	di
	dec	byte ptr [bp-14h]
	jg	1564h

l0800_1561:
	call	1183h

l0800_1564:
	loop	1556h

l0800_1566:
	or	bx,bx
	jle	1573h

l0800_156A:
	mov	cx,bx

l0800_156C:
	mov	al,20h
	call	117Ah
	loop	156Ch

l0800_1573:
	jmp	11C3h

l0800_1576:
	mov	[bp+6h],si
	mov	di,[bp+4h]
	test	word ptr [bp-2h],20h
	jnz	158Eh

l0800_1583:
	mov	di,ss:[di]
	add	word ptr [bp+4h],2h
	push	ds
	pop	es
	jmp	1595h

l0800_158E:
	les	di,ss:[di]
	add	word ptr [bp+4h],4h

l0800_1595:
	mov	ax,50h
	sub	al,[bp-14h]
	add	ax,[bp-12h]
	mov	es:[di],ax
	test	word ptr [bp-2h],10h
	jz	15AFh

l0800_15A8:
	inc	di
	inc	di
	mov	word ptr es:[di],0h

l0800_15AF:
	jmp	11C0h

l0800_15B2:
	mov	si,[bp-10h]
	mov	es,[bp+8h]
	mov	di,[bp-4h]
	mov	al,25h

l0800_15BD:
	call	117Ah
	lodsb
	or	al,al
	jnz	15BDh

l0800_15C6:
	cmp	byte ptr [bp-14h],50h
	jge	15CFh

l0800_15CC:
	call	1183h

l0800_15CF:
	pop	es
	cmp	word ptr [bp-16h],0h
	jz	15DBh

l0800_15D6:
	mov	ax,0FFFFh
	jmp	15DEh

l0800_15DB:
	mov	ax,[bp-12h]

l0800_15DE:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret	0Ch
l0800_15E6	dw	0x1242
l0800_15E8	dw	0x122C
l0800_15EA	dw	0x1277
l0800_15EC	dw	0x1237
l0800_15EE	dw	0x12A5
l0800_15F0	dw	0x12B2
l0800_15F2	dw	0x12F0
l0800_15F4	dw	0x12F7
l0800_15F6	dw	0x12FC
l0800_15F8	dw	0x1260
l0800_15FA	dw	0x1325
l0800_15FC	dw	0x1303
l0800_15FE	dw	0x1307
l0800_1600	dw	0x130B
l0800_1602	dw	0x1385
l0800_1604	dw	0x1432
l0800_1606	dw	0x13D5
l0800_1608	dw	0x13F5
l0800_160A	dw	0x1576
l0800_160C	dw	0x15B2
l0800_160E	dw	0x15B2
l0800_1610	dw	0x15B2
l0800_1612	dw	0x1252
l0800_1614	dw	0x1258
0800:1616                   55 8B EC A0 0A 9B B4 00 8B 56       U........V
0800:1620 04 4A F7 EA 50 A1 0D 9B 5A 03 C2 8B 56 06 4A 03 .J..P...Z...V.J.
0800:1630 C2 D1 E0 8B 16 0F 9B 5D C2 04 00 55 8B EC 83 EC .......]...U....
0800:1640 02 56 57 A0 0C 9B B4 00 89 46 FE 1E 8B 4E 04 E3 .VW......F...N..
0800:1650 5A C4 7E 0A C5 76 06 FC 3B F7 73 0A 8B C1 48 D1 Z.~..v..;.s...H.
0800:1660 E0 03 F0 03 F8 FD 83 7E FE 00 75 04 F3 A5 EB 3B .......~..u....;
0800:1670 BA DA 03 8C C0 8C DB 3B C3 74 11 FA EC D0 C8 72 .......;.t.....r
0800:1680 FB EC D0 C8 73 FB A5 FB E2 F1 EB 1F FA EC D0 C8 ....s...........
0800:1690 72 FB EC D0 C8 73 FB AD FB 8B D8 EC D0 C8 72 FB r....s........r.
0800:16A0 EC D0 C8 73 FB 8B C3 AB FB E2 E1 FC 1F 5F 5E 8B ...s........._^.
0800:16B0 E5 5D C2 0A 00                                  .]...          

;; fn0800_16B5: 0800:16B5
;;   Called from:
;;     0800:0708 (in fn0800_06D4)
fn0800_16B5 proc
	push	bp
	mov	bp,sp
	push	si
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	nop
	push	cs
	call	3E0Fh
	pop	cx
	pop	cx
	mov	si,ax
	inc	ax
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	nop
	push	cs
	call	350Eh
	add	sp,0Ah
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]
	add	ax,si
	pop	si
	pop	bp
	retf

;; fn0800_16E9: 0800:16E9
;;   Called from:
;;     268D:06D1 (in fn268D_06AA)
fn0800_16E9 proc
	push	bp
	mov	bp,sp
	mov	al,[9B06h]
	and	al,70h
	mov	dl,[bp+6h]
	and	dl,8Fh
	or	al,dl
	mov	[9B06h],al
	pop	bp
	retf
0800:16FE                                           55 8B               U.
0800:1700 EC A0 06 9B 24 8F 8A 56 06 B1 04 D2 E2 80 E2 7F ....$..V........
0800:1710 0A C2 A2 06 9B 5D CB 55 8B EC 8A 46 06 A2 06 9B .....].U...F....
0800:1720 5D CB 80 0E 06 9B 08 CB 80 26 06 9B F7 CB A0 07 ]........&......
0800:1730 9B A2 06 9B CB 55 8B EC 83 EC 08 56 8B 76 08 C6 .....U.....V.v..
0800:1740 46 FB 00 E8 47 12 B4 00 89 46 FE E8 3F 12 B1 08 F...G....F..?...
0800:1750 D3 E8 B4 00 89 46 FC E9 DC 00 C4 5E 0A FF 46 0A .....F.....^..F.
0800:1760 26 8A 07 88 46 FB B4 00 2D 07 00 8B D8 83 FB 06 &...F...-.......
0800:1770 77 2E D1 E3 2E FF A7 59 18 B4 0E B0 07 E8 3E 01 w......Y......>.
0800:1780 EB 76 A0 02 9B B4 00 3B 46 FE 7D 6C FF 4E FE EB .v.....;F.}l.N..
0800:1790 67 A0 02 9B B4 00 89 46 FE EB 5D FF 46 FC EB 58 g......F..].F..X
0800:17A0 A0 0B 9B B4 00 0B C0 75 2E 83 3E 11 9B 00 74 27 .......u..>...t'
0800:17B0 8A 26 06 9B 8A 46 FB 89 46 F8 8B 46 FE 40 50 8B .&...F..F..F.@P.
0800:17C0 46 FC 40 50 E8 4F FE 52 50 16 8D 46 F8 50 B8 01 F.@P.O.RP..F.P..
0800:17D0 00 50 E8 66 FE EB 1E 8A 56 FE 8A 76 FC B4 02 B7 .P.f....V..v....
0800:17E0 00 E8 DA 00 8A 1E 06 9B 8A 46 FB B4 09 B7 00 B9 .........F......
0800:17F0 01 00 E8 C9 00 FF 46 FE A0 04 9B B4 00 3B 46 FE ......F......;F.
0800:1800 7D 0E A0 02 9B B4 00 89 46 FE A1 00 9B 01 46 FC }.......F.....F.
0800:1810 A0 05 9B B4 00 3B 46 FC 7D 1C B0 06 50 A0 02 9B .....;F.}...P...
0800:1820 50 A0 03 9B 50 A0 04 9B 50 A0 05 9B 50 B0 01 50 P...P...P...P..P
0800:1830 E8 1C 0E FF 4E FC 8B C6 4E 0B C0 74 03 E9 1A FF ....N...N..t....
0800:1840 8A 56 FE 8A 76 FC B4 02 B7 00 E8 71 00 8A 46 FB .V..v......q..F.
0800:1850 B4 00 5E 8B E5 5D C2 0A 00 79 17 82 17 A0 17 9B ..^..]...y......
0800:1860 17 A0 17 A0 17 91 17                            .......        

;; fn0800_1867: 0800:1867
;;   Called from:
;;     268D:06E6 (in fn268D_06AA)
fn0800_1867 proc
	push	bp
	mov	bp,sp
	mov	ax,1735h
	push	ax
	xor	ax,ax
	xor	dx,dx
	push	ax
	push	dx
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	lea	ax,[bp+0Ah]
	push	ax
	call	1153h
	pop	bp
	retf
0800:1883          55 8B EC EB 18 C4 5E 04 FF 46 04 26 8A    U.....^..F.&.
0800:1890 07 C4 5E 08 FF 46 08 26 3A 07 74 04 33 C0 EB 0C ..^..F.&:.t.3...
0800:18A0 C4 5E 04 26 80 3F 00 75 DF B8 01 00 5D C2 08 00 .^.&.?.u....]...
0800:18B0 B4 12 B3 10 E8 07 00 8A C3 04 F0 B4 00 C3 55 1E ..............U.
0800:18C0 51 B9 40 00 8E D9 59 80 FC 00 74 09 80 FC 0F 74 Q.@...Y...t....t
0800:18D0 59 CD 10 EB 71 3C 02 74 04 3C 03 75 19 50 B8 00 Y...q<.t.<.u.P..
0800:18E0 1A CD 10 3C 1A 74 05 80 26 87 00 FE B4 01 B9 07 ...<.t..&.......
0800:18F0 06 CD 10 58 EB DB 3C 40 75 D7 B3 10 B4 12 CD 10 ...X..<@u.......
0800:1900 80 FB 10 74 41 B8 12 11 32 DB CD 10 B8 00 12 B3 ...tA...2.......
0800:1910 20 CD 10 B8 00 1A CD 10 3C 1A 74 2A 80 0E 87 00  .......<.t*....
0800:1920 01 B4 01 B9 00 06 CD 10 EB 1C CD 10 3C 02 74 04 ............<.t.
0800:1930 3C 03 75 12 50 E8 78 FF 0A C0 58 74 09 80 3E 84 <.u.P.x...Xt..>.
0800:1940 00 18 74 02 B0 40 1F 5D C3 B4 0F E8 70 FF 50 E8 ..t..@.]....p.P.
0800:1950 14 00 59 B4 08 B7 00 E8 64 FF 80 E4 7F 88 26 07 ..Y.....d.....&.
0800:1960 9B 88 26 06 9B C3 55 8B EC 8A 46 04 A2 08 9B B4 ..&...U...F.....
0800:1970 0F E8 4A FF 88 26 0A 9B 3A 06 08 9B 74 14 A0 08 ..J..&..:...t...
0800:1980 9B B4 00 E8 38 FF B4 0F E8 33 FF A2 08 9B 88 26 ....8....3.....&
0800:1990 0A 9B 80 3E 08 9B 03 76 13 80 3E 08 9B 40 73 0C ...>...v..>..@s.
0800:19A0 80 3E 08 9B 07 74 05 B8 01 00 EB 02 33 C0 A2 0B .>...t......3...
0800:19B0 9B 80 3E 08 9B 40 74 04 B0 19 EB 0B B8 40 00 8E ..>..@t......@..
0800:19C0 C0 26 A0 84 00 FE C0 A2 09 9B 80 3E 08 9B 07 74 .&.........>...t
0800:19D0 20 B8 00 F0 BA EA FF 50 52 1E B8 13 9B 50 E8 A2  ......PR....P..
0800:19E0 FE 0B C0 75 0C E8 C8 FE 0B C0 75 05 B8 01 00 EB ...u......u.....
0800:19F0 02 33 C0 A2 0C 9B 80 3E 08 9B 07 75 05 B8 00 B0 .3.....>...u....
0800:1A00 EB 03 B8 00 B8 A3 0F 9B C7 06 0D 9B 00 00 B0 00 ................
0800:1A10 A2 03 9B A2 02 9B A0 0A 9B 04 FF A2 04 9B A0 09 ................
0800:1A20 9B 04 FF A2 05 9B 5D C3 BA 1A 9B EB 03 BA 1F 9B ......].........
0800:1A30 B9 05 00 B4 40 BB 02 00 CD 21 B9 27 00 BA 24 9B ....@....!.'..$.
0800:1A40 B4 40 CD 21 E9 33 E8                            .@.!.3.        

;; fn0800_1A47: 0800:1A47
;;   Called from:
;;     0800:1A4E (in fn0800_1A48)
;;     0800:1A55 (in fn0800_1A48)
fn0800_1A47 proc
	ret

;; fn0800_1A48: 0800:1A48
;;   Called from:
;;     0800:1A8A (in fn0800_1A83)
;;     0800:1ACC (in fn0800_1A83)
fn0800_1A48 proc
	pushf
	cli
	mov	al,0h
	out	43h,al
	call	1A47h
	in	al,40h
	mov	bl,al
	call	1A47h
	in	al,40h
	mov	bh,al
	not	bx
	popf
	mov	ax,bx
	ret
0800:1A62       56 33 F6 E8 E0 FF A9 01 00 75 0E C7 06 4E   V3.......u...N
0800:1A70 9B 00 00 C7 06 4C 9B A9 04 EB 06 46 83 FE 64 7C .....L.....F..d|
0800:1A80 E4 5E CB                                        .^.            

;; fn0800_1A83: 0800:1A83
;;   Called from:
;;     209F:0141 (in fn209F_00DD)
;;     268D:0129 (in main)
;;     268D:0207 (in main)
;;     268D:0611 (in fn268D_05FB)
fn0800_1A83 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	call	1A48h
	mov	si,ax
	xor	dx,dx
	mov	bx,[bp+6h]
	xor	cx,cx
	push	ax
	push	dx
	mov	dx,[9B4Eh]
	mov	ax,[9B4Ch]
	call	07F6h
	pop	bx
	pop	cx
	add	cx,ax
	adc	bx,dx
	mov	[bp-2h],bx
	mov	[bp-4h],cx
	jmp	1ACCh

l0800_1AB0:
	cmp	bx,si
	jnc	1ACAh

l0800_1AB4:
	cmp	word ptr [bp-2h],1h
	ja	1AC2h

l0800_1ABA:
	jc	1ADFh

l0800_1ABC:
	cmp	word ptr [bp-4h],0h
	jc	1ADFh

l0800_1AC2:
	sub	word ptr [bp-4h],0h
	sbb	word ptr [bp-2h],1h

l0800_1ACA:
	mov	si,bx

l0800_1ACC:
	call	1A48h
	mov	bx,ax
	xor	dx,dx
	cmp	dx,[bp-2h]
	jc	1AB0h

l0800_1AD8:
	jnz	1ADFh

l0800_1ADA:
	cmp	ax,[bp-4h]
	jc	1AB0h

l0800_1ADF:
	pop	si
	mov	sp,bp
	pop	bp
	retf
0800:1AE4             00 00 00 00 00 00 00 00 00 00 00 00     ............

;; fn0800_1AF0: 0800:1AF0
;;   Called from:
;;     0800:1C3C (in fn0800_1C24)
fn0800_1AF0 proc
	cmp	dx,cs:[1AE4h]
	jz	1B2Eh

l0800_1AF7:
	mov	ds,dx
	mov	ds,[0002h]
	cmp	word ptr [0002h],0h
	jz	1B0Bh

l0800_1B04:
	mov	cs:[1AE6h],ds
	jmp	1B43h

l0800_1B0B:
	mov	ax,ds
	cmp	ax,cs:[1AE4h]
	jz	1B29h

l0800_1B14:
	mov	ax,[0008h]
	mov	cs:[1AE6h],ax
	push	ds
	xor	ax,ax
	push	ax
	call	1BC4h
	mov	ds,cs:[1AEAh]
	jmp	1B4Ch

l0800_1B29:
	mov	dx,cs:[1AE4h]

l0800_1B2E:
	mov	word ptr cs:[1AE4h],0h
	mov	word ptr cs:[1AE6h],0h
	mov	word ptr cs:[1AE8h],0h

l0800_1B43:
	mov	ds,cs:[1AEAh]
	push	dx
	xor	ax,ax
	push	ax

l0800_1B4C:
	call	1F8Ch
	add	sp,4h
	ret

;; fn0800_1B53: 0800:1B53
;;   Called from:
;;     0800:1C41 (in fn0800_1C24)
fn0800_1B53 proc
	mov	ds,dx
	push	ds
	mov	es,[0002h]
	mov	word ptr [0002h],0h
	mov	[0008h],es
	cmp	dx,cs:[1AE4h]
	jz	1B99h

l0800_1B6B:
	cmp	word ptr es:[0002h],0h
	jnz	1B99h

l0800_1B73:
	mov	ax,[0000h]
	pop	bx
	push	es
	add	es:[0000h],ax
	mov	cx,es
	add	dx,ax
	mov	es,dx
	cmp	word ptr es:[0002h],0h
	jnz	1B92h

l0800_1B8B:
	mov	es:[0008h],cx
	jmp	1B9Ch

l0800_1B92:
	mov	es:[0002h],cx
	jmp	1B9Ch

l0800_1B99:
	call	1BEDh

l0800_1B9C:
	pop	es
	mov	ax,es
	add	ax,es:[0000h]
	mov	ds,ax
	cmp	word ptr [0002h],0h
	jz	1BAEh

l0800_1BAD:
	ret

l0800_1BAE:
	mov	ax,[0000h]
	add	es:[0000h],ax
	mov	ax,es
	mov	bx,ds
	add	bx,[0000h]
	mov	es,bx
	mov	es:[0002h],ax

;; fn0800_1BC4: 0800:1BC4
;;   Called from:
;;     0800:1B1F (in fn0800_1AF0)
;;     0800:1BC0 (in fn0800_1B53)
;;     0800:1D9E (in fn0800_1D41)
fn0800_1BC4 proc
	mov	bx,ds
	cmp	bx,[0006h]
	jz	1BE5h

l0800_1BCC:
	mov	es,[0006h]
	mov	ds,[0004h]
	mov	[0006h],es
	mov	es:[0004h],ds
	mov	cs:[1AE8h],ds
	mov	ds,bx
	ret

l0800_1BE5:
	mov	word ptr cs:[1AE8h],0h
	ret

;; fn0800_1BED: 0800:1BED
;;   Called from:
;;     0800:1B99 (in fn0800_1B53)
fn0800_1BED proc
	mov	ax,cs:[1AE8h]
	or	ax,ax
	jz	1C16h

l0800_1BF5:
	mov	bx,ss
	pushf
	cli
	mov	ss,ax
	mov	es,ss:[0006h]
	mov	ss:[0006h],ds
	mov	[0004h],ss
	mov	ss,bx
	popf
	mov	es:[0004h],ds
	mov	[0006h],es
	ret

l0800_1C16:
	mov	cs:[1AE8h],ds
	mov	[0004h],ds
	mov	[0006h],ds
	ret

;; fn0800_1C24: 0800:1C24
;;   Called from:
;;     0800:031C (in fn0800_0312)
;;     0800:2BA4 (in fn0800_2B50)
;;     0800:3D0F (in fn0800_3C8A)
;;     0CE0:08E2 (in fn0CE0_05FB)
;;     0CE0:1247 (in fn0CE0_08FC)
;;     0CE0:125A (in fn0CE0_08FC)
;;     0CE0:126D (in fn0CE0_08FC)
;;     0CE0:127A (in fn0CE0_08FC)
;;     0CE0:12DC (in fn0CE0_08FC)
;;     1744:09CF (in fn1744_0972)
;;     1744:0A89 (in fn1744_0A6F)
;;     1744:0A95 (in fn1744_0A6F)
;;     1F0F:10C8 (in fn1F0F_0BF7)
;;     209F:0252 (in fn209F_0149)
;;     209F:0449 (in fn209F_02E3)
;;     226D:0434 (in fn226D_00F9)
;;     2476:03D3 (in fn2476_0362)
;;     268D:0541 (in fn268D_03E2)
fn0800_1C24 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	mov	cs:[1AEAh],ds
	mov	dx,[bp+8h]
	or	dx,dx
	jz	1C44h

l0800_1C35:
	cmp	dx,cs:[1AE6h]
	jnz	1C41h

l0800_1C3C:
	call	1AF0h
	jmp	1C44h

l0800_1C41:
	call	1B53h

l0800_1C44:
	mov	ds,cs:[1AEAh]
	pop	di
	pop	si
	pop	bp
	retf

;; fn0800_1C4D: 0800:1C4D
;;   Called from:
;;     0800:1D8D (in fn0800_1D41)
fn0800_1C4D proc
	push	ax
	mov	ds,cs:[1AEAh]
	xor	ax,ax
	push	ax
	push	ax
	call	1FCBh
	add	sp,4h
	and	ax,0Fh
	jz	1C76h

l0800_1C62:
	mov	dx,10h
	sub	dx,ax
	xor	ax,ax
	mov	ds,cs:[1AEAh]
	push	ax
	push	dx
	call	1FCBh
	add	sp,4h

l0800_1C76:
	pop	ax
	push	ax
	xor	bx,bx
	mov	bl,ah
	mov	cl,4h
	shr	bx,cl
	shl	ax,cl
	mov	ds,cs:[1AEAh]
	push	bx
	push	ax
	call	1FCBh
	add	sp,4h
	pop	bx
	cmp	ax,0FFFFh
	jz	1CADh

l0800_1C95:
	mov	cs:[1AE4h],dx
	mov	cs:[1AE6h],dx
	mov	ds,dx
	mov	[0000h],bx
	mov	[0002h],dx
	mov	ax,4h
	ret

l0800_1CAD:
	xor	ax,ax
	cwd
	ret

;; fn0800_1CB1: 0800:1CB1
;;   Called from:
;;     0800:1D88 (in fn0800_1D41)
fn0800_1CB1 proc
	push	ax
	xor	bx,bx
	mov	bl,ah
	mov	cl,4h
	shr	bx,cl
	shl	ax,cl
	mov	ds,cs:[1AEAh]
	push	bx
	push	ax
	call	1FCBh
	add	sp,4h
	pop	bx
	cmp	ax,0FFFFh
	jz	1D07h

l0800_1CCF:
	and	ax,0Fh
	jnz	1CECh

l0800_1CD4:
	mov	cx,cs:[1AE6h]
	mov	cs:[1AE6h],dx
	mov	ds,dx
	mov	[0000h],bx
	mov	[0002h],cx
	mov	ax,4h
	ret

l0800_1CEC:
	push	bx
	push	dx
	neg	ax
	add	ax,10h
	xor	bx,bx
	push	bx
	push	ax
	call	1FCBh
	add	sp,4h
	pop	dx
	pop	bx
	cmp	ax,0FFFFh
	jz	1D07h

l0800_1D04:
	inc	dx
	jmp	1CD4h

l0800_1D07:
	xor	ax,ax
	cwd
	ret

;; fn0800_1D0B: 0800:1D0B
;;   Called from:
;;     0800:1D92 (in fn0800_1D41)
fn0800_1D0B proc
	mov	bx,dx
	sub	[0000h],ax
	add	dx,[0000h]
	mov	ds,dx
	mov	[0000h],ax
	mov	[0002h],bx
	mov	bx,dx
	add	bx,[0000h]
	mov	ds,bx
	mov	[0002h],dx
	mov	ax,4h
	ret

;; fn0800_1D2E: 0800:1D2E
;;   Called from:
;;     0800:07D3 (in fn0800_07B4)
;;     0800:3D5B (in fn0800_3C8A)
;;     209F:0150 (in fn209F_0149)
fn0800_1D2E proc
	push	bp
	mov	bp,sp
	xor	dx,dx
	mov	ax,[bp+6h]
	jmp	1D41h

;; fn0800_1D38: 0800:1D38
;;   Called from:
;;     0CE0:0616 (in fn0CE0_05FB)
;;     0CE0:0976 (in fn0CE0_08FC)
;;     1744:0979 (in fn1744_0972)
;;     1744:09B0 (in fn1744_0972)
;;     209F:01AC (in fn209F_0149)
;;     209F:0312 (in fn209F_02E3)
;;     209F:037A (in fn209F_02E3)
;;     226D:0339 (in fn226D_00F9)
;;     2476:0294 (in fn2476_0282)
;;     263F:0106 (in fn263F_00A6)
;;     263F:0383 (in fn263F_033E)
fn0800_1D38 proc
	push	bp
	mov	bp,sp
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]

;; fn0800_1D41: 0800:1D41
;;   Called from:
;;     0800:1D36 (in fn0800_1D2E)
;;     0800:1D3E (in fn0800_1D38)
fn0800_1D41 proc
	mov	cx,ax
	or	cx,dx
	push	si
	push	di
	mov	cs:[1AEAh],ds
	jz	1DACh

l0800_1D4E:
	add	ax,13h
	adc	dx,0h
	jc	1D97h

l0800_1D56:
	test	dx,0FFF0h
	jnz	1D97h

l0800_1D5C:
	mov	cl,4h
	shr	ax,cl
	shl	dx,cl
	or	ah,dl
	mov	dx,cs:[1AE4h]
	or	dx,dx
	jz	1D8Dh

l0800_1D6D:
	mov	dx,cs:[1AE8h]
	or	dx,dx
	jz	1D88h

l0800_1D76:
	mov	bx,dx

l0800_1D78:
	mov	ds,dx
	cmp	[0000h],ax
	jnc	1D9Ch

l0800_1D80:
	mov	dx,[0006h]
	cmp	dx,bx
	jnz	1D78h

l0800_1D88:
	call	1CB1h
	jmp	1DACh

l0800_1D8D:
	call	1C4Dh
	jmp	1DACh

l0800_1D92:
	call	1D0Bh
	jmp	1DACh

l0800_1D97:
	xor	ax,ax
	cwd
	jmp	1DACh

l0800_1D9C:
	ja	1D92h

l0800_1D9E:
	call	1BC4h
	mov	bx,[0008h]
	mov	[0002h],bx
	mov	ax,4h

l0800_1DAC:
	mov	ds,cs:[1AEAh]
	pop	di
	pop	si
	pop	bp
	retf
0800:1DB5                53 2E 8B 36 EC 1A 56 2E 8B 36 EE      S..6..V..6.
0800:1DC0 1A 56 0E E8 72 FF 83 C4 04 0B D2 75 02 5B C3 1F .V..r......u.[..
0800:1DD0 8E C2 06 1E 53 8B 16 00 00 FC 4A BF 04 00 8B F7 ....S.....J.....
0800:1DE0 B9 06 00 F3 A5 0B D2 74 37 8C C0 40 8E C0 8C D8 .......t7..@....
0800:1DF0 40 8E D8 33 FF 8B F7 8B CA 81 F9 00 10 76 03 B9 @..3.........v..
0800:1E00 00 10 D1 E1 D1 E1 D1 E1 F3 A5 81 EA 00 10 76 10 ..............v.
0800:1E10 8C C0 05 00 10 8E C0 8C D8 05 00 10 8E D8 EB D3 ................
0800:1E20 2E 8E 1E EA 1A 0E E8 FB FD 83 C4 04 5A B8 04 00 ............Z...
0800:1E30 C3 2E 3B 1E E6 1A 74 45 8B FB 03 F8 8E C7 8B F1 ..;...tE........
0800:1E40 2B F0 26 89 36 00 00 26 89 1E 02 00 06 50 8E C3 +.&.6..&.....P..
0800:1E50 26 A3 00 00 8B D3 03 D1 8E C2 26 83 3E 02 00 00 &.........&.>...
0800:1E60 74 07 26 89 3E 02 00 EB 05 26 89 3E 08 00 8B F3 t.&.>....&.>....
0800:1E70 0E E8 B0 FD 83 C4 04 8B D6 B8 04 00 C3 53 8E C3 .............S..
0800:1E80 26 A3 00 00 03 D8 53 33 C0 50 E8 FF 00 83 C4 04 &.....S3.P......
0800:1E90 5A B8 04 00 C3 55 8B EC 33 D2 EB 06 55 8B EC 8B Z....U..3...U...
0800:1EA0 56 0C 8B 46 0A 8B 5E 08 56 57 2E 8C 1E EA 1A 2E V..F..^.VW......
0800:1EB0 89 16 EC 1A 2E A3 EE 1A 0B DB 74 3A 8B C8 0B CA ..........t:....
0800:1EC0 74 3F 05 13 00 83 D2 00 72 40 F7 C2 F0 FF 75 3A t?......r@....u:
0800:1ED0 B1 04 D3 E8 D3 E2 0A E2 8E C3 26 8B 0E 00 00 3B ..........&....;
0800:1EE0 C8 72 0E 77 07 8B D3 B8 04 00 EB 21 E8 42 FF EB .r.w.......!.B..
0800:1EF0 1C E8 C1 FE EB 17 52 50 0E E8 3C FE 83 C4 04 EB ......RP..<.....
0800:1F00 0C 53 50 0E E8 1D FD 83 C4 04 33 C0 99 2E 8E 1E .SP.......3.....
0800:1F10 EA 1A 5F 5E 5D CB                               .._^].         

;; fn0800_1F16: 0800:1F16
;;   Called from:
;;     0800:1FBB (in fn0800_1F8C)
;;     0800:2045 (in fn0800_1FCB)
fn0800_1F16 proc
	push	bp
	mov	bp,sp
	push	si
	mov	si,[bp+6h]
	inc	si
	sub	si,[007Bh]
	add	si,3Fh
	mov	cl,6h
	shr	si,cl
	cmp	si,[9B50h]
	jnz	1F41h

l0800_1F2F:
	mov	ax,[bp+6h]
	mov	dx,[bp+4h]
	mov	[008Dh],ax
	mov	[008Bh],dx
	mov	ax,1h
	jmp	1F87h

l0800_1F41:
	mov	cl,6h
	shl	si,cl
	mov	dx,[0091h]
	mov	ax,si
	add	ax,[007Bh]
	cmp	ax,dx
	jbe	1F59h

l0800_1F53:
	mov	si,dx
	sub	si,[007Bh]

l0800_1F59:
	push	si
	push	word ptr [007Bh]
	nop
	push	cs
	call	28E6h
	pop	cx
	pop	cx
	mov	dx,ax
	cmp	dx,0FFh
	jnz	1F77h

l0800_1F6C:
	mov	ax,si
	mov	cl,6h
	shr	ax,cl
	mov	[9B50h],ax
	jmp	1F2Fh

l0800_1F77:
	mov	ax,[007Bh]
	add	ax,dx
	mov	[0091h],ax
	mov	word ptr [008Fh],0h
	xor	ax,ax

l0800_1F87:
	pop	si
	pop	bp
	ret	4h

;; fn0800_1F8C: 0800:1F8C
;;   Called from:
;;     0800:1B4C (in fn0800_1AF0)
fn0800_1F8C proc
	push	bp
	mov	bp,sp
	mov	cx,[0089h]
	mov	bx,[0087h]
	mov	dx,[bp+6h]
	mov	ax,[bp+4h]
	call	080Dh
	jc	1FC2h

l0800_1FA2:
	mov	cx,[0091h]
	mov	bx,[008Fh]
	mov	dx,[bp+6h]
	mov	ax,[bp+4h]
	call	080Dh
	ja	1FC2h

l0800_1FB5:
	push	word ptr [bp+6h]
	push	word ptr [bp+4h]
	call	1F16h
	or	ax,ax
	jnz	1FC7h

l0800_1FC2:
	mov	ax,0FFFFh
	jmp	1FC9h

l0800_1FC7:
	xor	ax,ax

l0800_1FC9:
	pop	bp
	ret

;; fn0800_1FCB: 0800:1FCB
;;   Called from:
;;     0800:1C57 (in fn0800_1C4D)
;;     0800:1C70 (in fn0800_1C4D)
;;     0800:1C89 (in fn0800_1C4D)
;;     0800:1CC3 (in fn0800_1CB1)
;;     0800:1CF7 (in fn0800_1CB1)
fn0800_1FCB proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	mov	ax,[008Dh]
	xor	dx,dx
	mov	cl,4h
	call	0504h
	add	ax,[008Bh]
	adc	dx,0h
	add	ax,[bp+4h]
	adc	dx,[bp+6h]
	cmp	dx,0Fh
	jl	1FFCh

l0800_1FED:
	jg	1FF4h

l0800_1FEF:
	cmp	ax,0FFFFh
	jbe	1FFCh

l0800_1FF4:
	mov	dx,0FFFFh
	mov	ax,0FFFFh
	jmp	2052h

l0800_1FFC:
	mov	dx,[008Dh]
	mov	ax,[008Bh]
	mov	cx,[bp+6h]
	mov	bx,[bp+4h]
	call	0525h
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	mov	cx,[0089h]
	mov	bx,[0087h]
	call	080Dh
	jc	1FF4h

l0800_201F:
	mov	cx,[0091h]
	mov	bx,[008Fh]
	mov	dx,[bp-2h]
	mov	ax,[bp-4h]
	call	080Dh
	ja	1FF4h

l0800_2032:
	mov	ax,[008Dh]
	mov	dx,[008Bh]
	mov	[bp-6h],ax
	mov	[bp-8h],dx
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	call	1F16h
	or	ax,ax
	jz	1FF4h

l0800_204C:
	mov	dx,[bp-6h]
	mov	ax,[bp-8h]

l0800_2052:
	mov	sp,bp
	pop	bp
	ret

;; fn0800_2056: 0800:2056
;;   Called from:
;;     2331:0196 (in fn2331_0167)
;;     2425:0213 (in fn2425_01E8)
;;     263F:0488 (in fn263F_043F)
;;     268D:00FD (in main)
fn0800_2056 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	word ptr [bp-2h],0h
	mov	word ptr [bp-4h],0h
	mov	dx,[0091h]
	mov	ax,[008Fh]
	mov	cx,[008Dh]
	mov	bx,[008Bh]
	call	0585h
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	cmp	word ptr [bp-2h],0h
	jc	2094h

l0800_2084:
	ja	208Ch

l0800_2086:
	cmp	word ptr [bp-4h],10h
	jbe	2094h

l0800_208C:
	sub	word ptr [bp-4h],10h
	sbb	word ptr [bp-2h],0h

l0800_2094:
	and	word ptr [bp-4h],0F0h
	and	word ptr [bp-2h],0FFh
	mov	dx,[bp-2h]
	mov	ax,[bp-4h]
	mov	sp,bp
	pop	bp
	retf

;; fn0800_20A6: 0800:20A6
;;   Called from:
;;     0CE0:08C3 (in fn0CE0_05FB)
;;     1D10:0487 (in fn1D10_02AE)
;;     209F:0079 (in fn209F_0002)
;;     2331:01C0 (in fn2331_0167)
;;     263F:0430 (in fn263F_03F3)
;;     263F:04A7 (in fn263F_043F)
;;     268D:012F (in main)
;;     268D:03A3 (in fn268D_034A)
;;     268D:03CE (in fn268D_034A)
;;     268D:04DA (in fn268D_03E2)
fn0800_20A6 proc
	cmp	byte ptr [9B52h],0h
	jz	20B7h

l0800_20AD:
	mov	byte ptr [9B52h],0h
	mov	al,[9B53h]
	jmp	20BCh

l0800_20B7:
	mov	ax,700h
	int	21h

l0800_20BC:
	mov	ah,0h
	retf
0800:20BF                                              58                X
0800:20C0 0E 50 56 80 3E 52 9B 00 74 08 0E E8 D8 FF 8B F0 .PV.>R..t.......
0800:20D0 EB 0D 0E E8 D0 FF 8B F0 50 90 0E E8 61 03 59 8B ........P...a.Y.
0800:20E0 C6 5E CB 58 0E 50 55 8B EC 80 3E 52 9B 00 74 05 .^.X.PU...>R..t.
0800:20F0 B8 FF FF EB 0D C6 06 52 9B 01 8A 46 06 A2 53 9B .......R...F..S.
0800:2100 B4 00 5D CB 55 8B EC 83 EC 02 8A 4E 08 80 C1 FF ..].U......N....
0800:2110 02 0E 03 9B 8A 46 06 04 FF 88 46 FF A0 02 9B 00 .....F....F.....
0800:2120 46 FF 3A 0E 03 9B 72 21 3A 0E 05 9B 77 1B 8A 46 F.:...r!:...w..F
0800:2130 FF 3A 06 02 9B 72 12 3A 06 04 9B 77 0C 8A 56 FF .:...r.:...w..V.
0800:2140 8A F1 B4 02 B7 00 E8 75 F7 8B E5 5D CB 55 8B EC .......u...].U..
0800:2150 83 EC 02 56 57 8B 7E 06 8B 76 08 57 56 FF 76 0A ...VW.~..v.WV.v.
0800:2160 FF 76 0C E8 72 04 0B C0 75 04 33 C0 EB 2F 8B 46 .v..r...u.3../.F
0800:2170 0A 2B C7 40 89 46 FE EB 1C FF 76 10 FF 76 0E 57 .+.@.F....v..v.W
0800:2180 56 E8 92 F4 52 50 FF 76 FE E8 10 04 8B 46 FE D1 V...RP.v.....F..
0800:2190 E0 01 46 0E 46 3B 76 0C 7E DF B8 01 00 5F 5E 8B ..F.F;v.~...._^.
0800:21A0 E5 5D CB 55 8B EC 83 EC 02 56 57 8B 7E 06 8B 76 .].U.....VW.~..v
0800:21B0 08 57 56 FF 76 0A FF 76 0C E8 1C 04 0B C0 75 04 .WV.v..v......u.
0800:21C0 33 C0 EB 2F 8B 46 0A 2B C7 40 89 46 FE EB 1C 57 3../.F.+.@.F...W
0800:21D0 56 E8 42 F4 52 50 FF 76 10 FF 76 0E FF 76 FE E8 V.B.RP.v..v..v..
0800:21E0 BA 03 8B 46 FE D1 E0 01 46 0E 46 3B 76 0C 7E DF ...F....F.F;v.~.
0800:21F0 B8 01 00 5F 5E 8B E5 5D CB                      ..._^..].      

;; fn0800_21F9: 0800:21F9
;;   Called from:
;;     2425:0298 (in fn2425_0286)
;;     2476:0122 (in fn2476_0104)
;;     2476:03FD (in fn2476_03E6)
;;     268D:037D (in fn268D_034A)
;;     268D:0578 (in fn268D_03E2)
fn0800_21F9 proc
	push	bp
	mov	bp,sp
	sub	sp,8h
	push	ss
	lea	ax,[bp-8h]
	push	ax
	nop
	push	cs
	call	0F6Dh
	pop	cx
	pop	cx
	push	ss
	lea	ax,[bp-8h]
	push	ax
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	222Ah
	add	sp,0Eh
	mov	sp,bp
	pop	bp
	retf

;; fn0800_222A: 0800:222A
;;   Called from:
;;     0800:221F (in fn0800_21F9)
fn0800_222A proc
	push	bp
	mov	bp,sp
	sub	sp,0Eh
	push	si
	push	di
	push	ds
	lea	cx,[bp-0Eh]
	mov	[bp-4h],cx
	mov	[bp-2h],ss
	mov	byte ptr [bp-0Eh],55h
	mov	byte ptr [bp-0Dh],0CDh
	mov	ax,[bp+6h]
	mov	[bp-0Ch],al
	mov	word ptr [bp-0Bh],0CB5Dh
	cmp	al,25h
	jc	2268h

l0800_2253:
	cmp	al,26h
	ja	2268h

l0800_2257:
	mov	byte ptr [bp-0Bh],36h
	mov	word ptr [bp-0Ah],68Fh
	mov	[bp-8h],cx
	mov	word ptr [bp-6h],0CB5Dh

l0800_2268:
	lds	si,[bp+10h]
	push	word ptr [si]
	push	word ptr [si+6h]
	lds	si,[bp+8h]
	mov	ax,[si]
	mov	bx,[si+2h]
	mov	cx,[si+4h]
	mov	dx,[si+6h]
	mov	di,[si+0Ah]
	mov	si,[si+8h]
	pop	ds
	pop	es
	call	dword ptr [bp-4h]
	pushf
	pushf
	push	si
	push	ds
	push	es
	lds	si,[bp+10h]
	pop	word ptr [si]
	pop	word ptr [si+6h]
	lds	si,[bp+0Ch]
	pop	word ptr [si+8h]
	pop	word ptr [si+0Eh]
	pop	word ptr [si+0Ch]
	and	word ptr [si+0Ch],1h
	mov	[si+0Ah],di
	mov	[si+6h],dx
	mov	[si+4h],cx
	mov	[si+2h],bx
	mov	[si],ax
	pop	ds
	jz	22BDh

l0800_22B7:
	push	ax
	push	ax
	call	05ADh
	pop	ax

l0800_22BD:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn0800_22C3: 0800:22C3
;;   Called from:
;;     2425:0029 (in fn2425_000A)
;;     2425:0047 (in fn2425_000A)
;;     2425:0065 (in fn2425_000A)
fn0800_22C3 proc
	push	bp
	mov	bp,sp
	sub	sp,12h
	push	si
	push	di
	push	bp
	push	ds
	pushf
	lea	cx,[bp-12h]
	mov	[bp-4h],cx
	mov	[bp-2h],ss
	mov	word ptr [bp-12h],6E8Bh
	mov	byte ptr [bp-10h],0DEh
	mov	byte ptr [bp-0Fh],0CDh
	mov	ax,[bp+6h]
	mov	[bp-0Eh],al
	cmp	al,25h
	jc	230Ah

l0800_22EE:
	cmp	al,26h
	ja	230Ah

l0800_22F2:
	mov	byte ptr [bp-0Dh],36h
	mov	word ptr [bp-0Ch],68Fh
	mov	[bp-0Ah],cx
	mov	byte ptr [bp-8h],0CAh
	mov	word ptr [bp-7h],2h
	jmp	2313h

;; fn0800_2309: 0800:2309
;;   Called from:
;;     0800:235B (in fn0800_22C3)
fn0800_2309 proc
	iret

l0800_230A:
	mov	byte ptr [bp-0Dh],0CAh
	mov	word ptr [bp-0Ch],2h

l0800_2313:
	lds	di,[bp+8h]
	push	ds
	push	di
	mov	ax,[di]
	mov	bx,[di+2h]
	mov	cx,[di+4h]
	mov	dx,[di+6h]
	push	word ptr [di+8h]
	mov	si,[di+0Ah]
	mov	es,[di+10h]
	lds	di,[di+0Ch]
	call	dword ptr [bp-4h]
	push	ds
	push	di
	push	bp
	pushf
	mov	bp,sp
	lds	di,[bp+8h]
	mov	[di],ax
	mov	[di+2h],bx
	mov	[di+4h],cx
	mov	[di+6h],dx
	mov	[di+0Ah],si
	mov	[di+10h],es
	pop	word ptr [di+12h]
	pop	word ptr [di+8h]
	pop	word ptr [di+0Ch]
	pop	word ptr [di+0Eh]
	add	sp,4h
	push	cs
	call	2309h
	pop	ds
	pop	bp
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn0800_2367: 0800:2367
;;   Called from:
;;     0800:36E8 (in fn0800_3615)
;;     0800:3710 (in fn0800_3615)
fn0800_2367 proc
	push	bp
	mov	bp,sp
	push	ds
	lds	dx,[bp+0Ah]
	mov	ah,44h
	mov	al,[bp+8h]
	mov	bx,[bp+6h]
	mov	cx,[bp+0Eh]
	int	21h
	pop	ds
	jc	238Ah

l0800_237E:
	cmp	word ptr [bp+8h],0h
	jnz	2388h

l0800_2384:
	mov	ax,dx
	jmp	238Eh

l0800_2388:
	jmp	238Eh

l0800_238A:
	push	ax
	call	05ADh

l0800_238E:
	pop	bp
	retf

;; fn0800_2390: 0800:2390
;;   Called from:
;;     0CE0:08BA (in fn0CE0_05FB)
;;     1D10:047E (in fn1D10_02AE)
;;     2331:01B7 (in fn2331_0167)
;;     268D:04D1 (in fn268D_03E2)
fn0800_2390 proc
	cmp	byte ptr [9B52h],0h
	jz	239Ch

l0800_2397:
	mov	ax,1h
	jmp	23A1h

l0800_239C:
	mov	ah,0Bh
	int	21h
	cbw

l0800_23A1:
	retf
0800:23A2       55 8B EC 83 EC 04 56 57 8B 76 08 8B 7E 0C   U.....VW.v..~.
0800:23B0 FF 76 06 56 FF 76 0A 57 E8 1D 02 0B C0 74 23 FF .v.V.v.W.....t#.
0800:23C0 76 0E FF 76 10 8B 46 0A 2B 46 06 8B 56 0E 03 D0 v..v..F.+F..V...
0800:23D0 52 8B C7 2B C6 8B 56 10 03 D0 52 E8 FA 01 0B C0 R..+..V...R.....
0800:23E0 75 04 33 C0 EB 53 8B D6 89 7E FE C7 46 FC 01 00 u.3..S...~..F...
0800:23F0 3B 76 10 7D 0A 8B D7 89 76 FE C7 46 FC FF FF 8B ;v.}....v..F....
0800:2400 FA EB 29 FF 76 0E 8B C7 2B C6 8B 56 10 03 D0 52 ..).v...+..V...R
0800:2410 E8 03 F2 52 50 FF 76 06 57 E8 FA F1 52 50 8B 46 ...RP.v.W...RP.F
0800:2420 0A 2B 46 06 40 50 E8 73 01 03 7E FC 8B 46 FE 03 .+F.@P.s..~..F..
0800:2430 46 FC 3B C7 75 CD B8 01 00 5F 5E 8B E5 5D CB 55 F.;.u...._^..].U
0800:2440 8B EC 16 8D 46 06 50 B8 01 00 50 33 C0 33 D2 50 ....F.P...P3.3.P
0800:2450 52 E8 E1 F2 5D CB                               R...].         

;; fn0800_2456: 0800:2456
;;   Called from:
;;     0800:146E (in fn0800_1153)
fn0800_2456 proc
	jmp	word ptr [9BAEh]

;; fn0800_245A: 0800:245A
;;   Called from:
;;     0800:0AD3 (in fn0800_08AC)
fn0800_245A proc
	jmp	word ptr [9BB0h]

;; fn0800_245E: 0800:245E
;;   Called from:
;;     0800:0B09 (in fn0800_08AC)
fn0800_245E proc
	jmp	word ptr [9BB2h]

;; fn0800_2462: 0800:2462
;;   Called from:
;;     0800:0B12 (in fn0800_08AC)
;;     0800:0B18 (in fn0800_08AC)
fn0800_2462 proc
	jmp	word ptr [9BB4h]
0800:2466                   55 8B EC 83 EC 02 8B 46 04 D1       U......F..
0800:2470 E8 8B C8 A0 0A 9B B4 00 50 8B C1 33 D2 5B F7 F3 ........P..3.[..
0800:2480 8A D8 B4 00 8A 16 0A 9B B6 00 F7 EA 8A D1 2A D0 ..............*.
0800:2490 88 56 FF 8A E3 8A 46 FF 8B E5 5D C2 04 00 55 8B .V....F...]...U.
0800:24A0 EC C4 5E 08 26 8B 17 C4 5E 04 26 3B 17 74 0D B7 ..^.&...^.&;.t..
0800:24B0 00 B4 02 E8 08 F4 C4 5E 04 26 89 17 FE C2 3A 16 .......^.&....:.
0800:24C0 0A 9B 72 04 FE C6 B2 00 C4 5E 08 26 89 17 5D C2 ..r......^.&..].
0800:24D0 08 00 55 8B EC 83 EC 0C 56 57 8B 7E 04 E8 AD 04 ..U.....VW.~....
0800:24E0 89 46 F8 89 46 FA 8B 46 0C 3B 06 0F 9B 75 05 B8 .F..F..F.;...u..
0800:24F0 01 00 EB 02 33 C0 89 46 F6 0B C0 74 0C FF 76 0C ....3..F...t..v.
0800:2500 FF 76 0A E8 60 FF 89 46 FE 8B 46 08 3B 06 0F 9B .v..`..F..F.;...
0800:2510 75 05 B8 01 00 EB 02 33 C0 89 46 F4 0B C0 74 63 u......3..F...tc
0800:2520 FF 76 08 FF 76 06 E8 3D FF 89 46 FC EB 55 83 7E .v..v..=..F..U.~
0800:2530 F4 00 74 18 16 8D 46 FC 50 16 8D 46 FA 50 E8 5D ..t...F.P..F.P.]
0800:2540 FF B7 00 B4 08 E8 76 F3 8B F0 EB 0A C4 5E 06 26 ......v......^.&
0800:2550 8B 37 83 46 06 02 83 7E F6 00 74 1D 16 8D 46 FE .7.F...~..t...F.
0800:2560 50 16 8D 46 FA 50 E8 35 FF 8B C6 8A DC B9 01 00 P..F.P.5........
0800:2570 B7 00 B4 09 E8 47 F3 EB 0A C4 5E 0A 26 89 37 83 .....G....^.&.7.
0800:2580 46 0A 02 8B C7 4F 0B C0 75 A4 8B 56 F8 B7 00 B4 F....O..u..V....
0800:2590 02 E8 2A F3 5F 5E 8B E5 5D C2 0A 00 55 8B EC 8B ..*._^..]...U...
0800:25A0 56 04 A0 0B 9B B4 00 0B C0 75 19 83 3E 11 9B 00 V........u..>...
0800:25B0 74 12 FF 76 0C FF 76 0A FF 76 08 FF 76 06 52 E8 t..v..v..v..v.R.
0800:25C0 79 F0 EB 10 FF 76 0C FF 76 0A FF 76 08 FF 76 06 y....v..v..v..v.
0800:25D0 52 E8 FE FE 5D C2 0A 00 55 8B EC 56 57 8B 5E 0A R...]...U..VW.^.
0800:25E0 8B 76 08 8B 7E 06 A0 0A 9B B4 00 8B C8 A0 09 9B .v..~...........
0800:25F0 B4 00 8B D0 3B D9 77 2D 3B F9 77 29 3B DF 7F 25 ....;.w-;.w);..%
0800:2600 3B F2 77 21 39 56 04 77 1C 3B 76 04 7F 17 0B DB ;.w!9V.w.;v.....
0800:2610 7E 13 0B FF 7E 0F 0B F6 7E 0B 83 7E 04 00 7E 05 ~...~...~..~..~.
0800:2620 B8 01 00 EB 02 33 C0 5F 5E 5D C2 08 00 55 8B EC .....3._^]...U..
0800:2630 8B 56 06 8A 2E 06 9B B1 20 EB 0B C4 5E 08 26 89 .V...... ...^.&.
0800:2640 0F 83 46 08 02 42 3B 56 04 7E F0 5D C2 08 00 55 ..F..B;V.~.]...U
0800:2650 8B EC 81 EC A0 00 A0 0B 9B B4 00 0B C0 74 03 E9 .............t..
0800:2660 3A 01 83 3E 11 9B 00 75 03 E9 30 01 80 7E 04 01 :..>...u..0..~..
0800:2670 74 03 E9 27 01 FE 46 0C FE 46 0A FE 46 08 FE 46 t..'..F..F..F..F
0800:2680 06 80 7E 0E 06 74 03 E9 91 00 8A 46 0A B4 00 50 ..~..t.....F...P
0800:2690 8A 46 0C B4 00 50 8A 46 06 B4 00 50 8A 46 08 B4 .F...P.F...P.F..
0800:26A0 00 50 8A 46 0A B4 00 40 50 8A 46 0C B4 00 50 90 .P.F...@P.F...P.
0800:26B0 0E E8 EE FC 83 C4 0C 16 8D 86 60 FF 50 8A 46 06 ..........`.P.F.
0800:26C0 B4 00 50 8A 46 0C B4 00 50 8A 46 06 B4 00 50 8A ..P.F...P.F...P.
0800:26D0 46 0C B4 00 50 90 0E E8 73 FA 83 C4 0C 16 8D 86 F...P...s.......
0800:26E0 60 FF 50 8A 46 0C B4 00 50 8A 46 08 B4 00 50 E8 `.P.F...P.F...P.
0800:26F0 3B FF 16 8D 86 60 FF 50 8A 46 06 B4 00 50 8A 46 ;....`.P.F...P.F
0800:2700 08 B4 00 50 8A 46 06 B4 00 50 8A 46 0C B4 00 50 ...P.F...P.F...P
0800:2710 90 0E E8 8E FA 83 C4 0C E9 9A 00 8A 46 0A B4 00 ............F...
0800:2720 40 50 8A 46 0C B4 00 50 8A 46 06 B4 00 48 50 8A @P.F...P.F...HP.
0800:2730 46 08 B4 00 50 8A 46 0A B4 00 50 8A 46 0C B4 00 F...P.F...P.F...
0800:2740 50 90 0E E8 5C FC 83 C4 0C 16 8D 86 60 FF 50 8A P...\.......`.P.
0800:2750 46 0A B4 00 50 8A 46 0C B4 00 50 8A 46 0A B4 00 F...P.F...P.F...
0800:2760 50 8A 46 0C B4 00 50 90 0E E8 E1 F9 83 C4 0C 16 P.F...P.........
0800:2770 8D 86 60 FF 50 8A 46 0C B4 00 50 8A 46 08 B4 00 ..`.P.F...P.F...
0800:2780 50 E8 A9 FE 16 8D 86 60 FF 50 8A 46 0A B4 00 50 P......`.P.F...P
0800:2790 8A 46 08 B4 00 50 8A 46 0A E9 6B FF 8A 3E 06 9B .F...P.F..k..>..
0800:27A0 8A 66 0E 8A 46 04 8A 6E 0A 8A 4E 0C 8A 76 06 8A .f..F..n..N..v..
0800:27B0 56 08 E8 09 F1 8B E5 5D C2 0C 00 00 00 8F 06 5A V......].......Z
0800:27C0 9B 8F 06 5C 9B 8F 06 5E 9B 2E 8C 1E BB 27 89 36 ...\...^.....'.6
0800:27D0 60 9B 89 3E 62 9B FC 8E 06 7B 00 BE 80 00 32 E4 `..>b....{....2.
0800:27E0 26 AC 40 8C C5 87 D6 93 8B 36 75 00 46 46 B9 01 &.@......6u.FF..
0800:27F0 00 80 3E 7D 00 03 72 11 8E 06 77 00 8B FE B1 7F ..>}..r...w.....
0800:2800 32 C0 F2 AE E3 72 80 F1 7F 50 8B C1 03 C3 40 25 2....r...P....@%
0800:2810 FE FF 8B FC 2B F8 72 60 8B E7 06 1F 16 07 51 49 ....+.r`......QI
0800:2820 F3 A4 32 C0 AA 8E DD 87 F2 87 D9 8B C3 8B D0 43 ..2............C
0800:2830 E8 1D 00 77 0B 72 46 3C 0D 74 11 E8 12 00 77 F5 ...w.rF<.t....w.
0800:2840 3C 20 74 08 3C 0D 74 04 3C 09 75 E4 32 C0 EB E0 < t.<.t.<.u.2...
0800:2850 0B C0 74 07 42 AA 0A C0 75 01 43 86 E0 32 C0 F9 ..t.B...u.C..2..
0800:2860 E3 15 AC 49 2C 22 74 0F 04 22 3C 5C 75 07 80 3C ...I,"t.."<\u..<
0800:2870 22 75 02 AC 49 0B F6 C3 90 90 E9 FD D9 59 03 CA "u..I........Y..
0800:2880 2E 8E 1E BB 27 89 1E 54 9B 43 03 DB 03 DB 8B F4 ....'..T.C......
0800:2890 8B EC 2B EB 72 E2 8B E5 89 2E 56 9B 8C 16 58 9B ..+.r.....V...X.
0800:28A0 E3 11 89 76 00 8C 56 02 83 C5 04 36 AC 0A C0 E0 ...v..V....6....
0800:28B0 FA 74 ED 33 C0 89 46 00 89 46 02 2E 8E 1E BB 27 .t.3..F..F.....'
0800:28C0 8B 36 60 9B 8B 3E 62 9B FF 36 5E 9B FF 36 5C 9B .6`..>b..6^..6\.
0800:28D0 A1 54 9B A3 6B 00 A1 58 9B A3 6F 00 A1 56 9B A3 .T..k..X..o..V..
0800:28E0 6D 00 FF 26 5A 9B                               m..&Z.         

;; fn0800_28E6: 0800:28E6
;;   Called from:
;;     0800:1F5F (in fn0800_1F16)
fn0800_28E6 proc
	push	bp
	mov	bp,sp
	mov	ah,4Ah
	mov	bx,[bp+8h]
	mov	es,[bp+6h]
	int	21h
	jc	28FAh

l0800_28F5:
	mov	ax,0FFFFh
	jmp	2900h

l0800_28FA:
	push	bx
	push	ax
	call	05ADh
	pop	ax

l0800_2900:
	pop	bp
	retf
0800:2902       56 57 8E 06 77 00 33 FF 06 FF 36 79 00 90   VW..w.3...6y..
0800:2910 0E E8 1A F4 5B 8B D8 07 A3 64 9B 89 16 66 9B 1E ....[....d...f..
0800:2920 8E DA 0B C2 75 05 90 90 E9 4F D9 33 C0 B9 FF FF ....u....O.3....
0800:2930 26 80 3D 00 74 0F 89 3F 8C 47 02 83 C3 04 F2 AE &.=.t..?.G......
0800:2940 26 38 05 75 F1 89 07 89 47 02 1F 5F 5E A1 66 9B &8.u....G.._^.f.
0800:2950 A3 73 00 A1 64 9B A3 71 00 C3                   .s..d..q..     

;; fn0800_295A: 0800:295A
;;   Called from:
;;     268D:0609 (in fn268D_05FB)
fn0800_295A proc
	push	bp
	mov	bp,sp
	mov	bx,[bp+6h]
	mov	ax,34DDh
	mov	dx,12h
	cmp	dx,bx
	jnc	2984h

l0800_296A:
	div	bx
	mov	bx,ax
	in	al,61h
	test	al,3h
	jnz	297Ch

l0800_2974:
	or	al,3h
	out	61h,al
	mov	al,0B6h
	out	43h,al

l0800_297C:
	mov	al,bl
	out	42h,al
	mov	al,bh
	out	42h,al

l0800_2984:
	pop	bp
	retf

;; fn0800_2986: 0800:2986
;;   Called from:
;;     268D:0621 (in fn268D_05FB)
fn0800_2986 proc
	in	al,61h
	and	al,0FCh
	out	61h,al
	retf
0800:298D                                        B4 03 B7              ...
0800:2990 00 E8 2A EF 8B C2 C3 E8 F3 FF B4 00 8A 16 02 9B ..*.............
0800:29A0 B6 00 2B C2 40 CB E8 E4 FF B1 08 D3 E8 B4 00 8A ..+.@...........
0800:29B0 16 03 9B B6 00 2B C2 40 CB                      .....+.@.      

;; fn0800_29B9: 0800:29B9
;;   Called from:
;;     0F2B:1572 (in fn0F2B_153F)
fn0800_29B9 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	nop
	push	cs
	call	2A76h
	add	sp,6h
	mov	dx,ax
	cmp	dx,0FFh
	jz	29EEh

l0800_29D4:
	test	word ptr [bp+0Ah],2h
	jz	29E1h

l0800_29DB:
	test	dx,1h
	jnz	29E5h

l0800_29E1:
	xor	ax,ax
	jmp	29EEh

l0800_29E5:
	mov	word ptr [007Fh],5h
	mov	ax,0FFFFh

l0800_29EE:
	pop	bp
	retf

;; fn0800_29F0: 0800:29F0
;;   Called from:
;;     0800:42C6 (in fn0800_418D)
;;     268D:00A5 (in fn268D_000F)
;;     268D:097B (in fn268D_0974)
fn0800_29F0 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	push	es
	push	bp
	les	si,[bp+6h]
	cld
	sub	ax,ax
	cwd
	mov	cx,0Ah
	mov	bh,0h
	mov	di,96E3h

l0800_2A06:
	mov	bl,es:[si]
	inc	si
	test	byte ptr [bx+di],1h
	jnz	2A06h

l0800_2A0F:
	mov	bp,0h
	cmp	bl,2Bh
	jz	2A1Dh

l0800_2A17:
	cmp	bl,2Dh
	jnz	2A21h

l0800_2A1C:
	inc	bp

l0800_2A1D:
	mov	bl,es:[si]
	inc	si

l0800_2A21:
	cmp	bl,39h
	ja	2A55h

l0800_2A26:
	sub	bl,30h
	jc	2A55h

l0800_2A2B:
	mul	cx
	add	ax,bx
	adc	dl,dh
	jz	2A1Dh

l0800_2A33:
	jmp	2A47h

l0800_2A35:
	mov	di,dx
	mov	cx,0Ah
	mul	cx
	xchg	di,ax
	xchg	cx,dx
	mul	dx
	xchg	dx,ax
	xchg	di,ax
	add	ax,bx
	adc	dx,cx

l0800_2A47:
	mov	bl,es:[si]
	inc	si
	cmp	bl,39h
	ja	2A55h

l0800_2A50:
	sub	bl,30h
	jnc	2A35h

l0800_2A55:
	dec	bp
	jl	2A5Fh

l0800_2A58:
	neg	dx
	neg	ax
	sbb	dx,0h

l0800_2A5F:
	pop	bp
	pop	es
	pop	di
	pop	si
	pop	bp
	retf
0800:2A65                55 8B EC FF 76 08 FF 76 06 0E E8      U...v..v...
0800:2A70 7E FF 59 59 5D CB                               ~.YY].         

;; fn0800_2A76: 0800:2A76
;;   Called from:
;;     0800:29C6 (in fn0800_29B9)
;;     0800:363B (in fn0800_3615)
;;     0800:3742 (in fn0800_3615)
fn0800_2A76 proc
	push	bp
	mov	bp,sp
	push	ds
	mov	cx,[bp+0Ch]
	mov	ah,43h
	mov	al,[bp+0Ah]
	lds	dx,[bp+6h]
	int	21h
	pop	ds
	jc	2A8Dh

l0800_2A8A:
	xchg	cx,ax
	jmp	2A91h

l0800_2A8D:
	push	ax
	call	05ADh

l0800_2A91:
	pop	bp
	retf

;; fn0800_2A93: 0800:2A93
;;   Called from:
;;     0800:2BBB (in fn0800_2B50)
;;     0CE0:006A (in fn0CE0_0007)
;;     0CE0:0F87 (in fn0CE0_08FC)
;;     0CE0:0FE5 (in fn0CE0_08FC)
;;     0CE0:1076 (in fn0CE0_08FC)
;;     0CE0:10DC (in fn0CE0_08FC)
;;     0E31:009B (in fn0E31_0002)
;;     0F2B:168B (in fn0F2B_153F)
;;     209F:045D (in fn209F_02E3)
;;     209F:09C0 (in fn209F_08D2)
;;     2476:0709 (in fn2476_0630)
;;     2504:09C8 (in fn2504_094D)
;;     263F:03DF (in fn263F_033E)
;;     268D:046B (in fn268D_03E2)
;;     268D:05BE (in fn268D_03E2)
fn0800_2A93 proc
	push	bp
	mov	bp,sp
	mov	dx,[bp+6h]
	cmp	dx,[9980h]
	jc	2AA8h

l0800_2A9F:
	mov	ax,6h
	push	ax
	call	05ADh
	jmp	2AB9h

l0800_2AA8:
	mov	bx,dx
	shl	bx,1h
	mov	word ptr [bx+9982h],0h
	push	dx
	nop
	push	cs
	call	2ABBh
	pop	cx

l0800_2AB9:
	pop	bp
	retf

;; fn0800_2ABB: 0800:2ABB
;;   Called from:
;;     0800:2AB4 (in fn0800_2A93)
;;     0800:36B2 (in fn0800_3615)
fn0800_2ABB proc
	push	bp
	mov	bp,sp
	mov	ah,3Eh
	mov	bx,[bp+6h]
	int	21h
	jc	2AD3h

l0800_2AC7:
	shl	bx,1h
	mov	word ptr [bx+9982h],0h
	xor	ax,ax
	jmp	2AD7h

l0800_2AD3:
	push	ax
	call	05ADh

l0800_2AD7:
	pop	bp
	retf

;; fn0800_2AD9: 0800:2AD9
;;   Called from:
;;     0800:33D7 (in fn0800_3334)
;;     1D10:1022 (in fn1D10_0FB3)
;;     1D10:10D3 (in fn1D10_0FB3)
fn0800_2AD9 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	ax,[bp+6h]
	cmp	ax,[9980h]
	jc	2AEEh

l0800_2AE8:
	mov	ax,6h
	push	ax
	jmp	2B49h

l0800_2AEE:
	mov	bx,[bp+6h]
	shl	bx,1h
	test	word ptr [bx+9982h],200h
	jz	2B00h

l0800_2AFB:
	mov	ax,1h
	jmp	2B4Ch

l0800_2B00:
	mov	ax,4400h
	mov	bx,[bp+6h]
	int	21h
	jc	2B48h

l0800_2B0A:
	test	dl,80h
	jnz	2B44h

l0800_2B0F:
	mov	ax,4201h
	xor	cx,cx
	mov	dx,cx
	int	21h
	jc	2B48h

l0800_2B1A:
	push	dx
	push	ax
	mov	ax,4202h
	xor	cx,cx
	mov	dx,cx
	int	21h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	pop	dx
	pop	cx
	jc	2B48h

l0800_2B2F:
	mov	ax,4200h
	int	21h
	jc	2B48h

l0800_2B36:
	cmp	dx,[bp-2h]
	jc	2B44h

l0800_2B3B:
	ja	2B42h

l0800_2B3D:
	cmp	ax,[bp-4h]
	jc	2B44h

l0800_2B42:
	jmp	2AFBh

l0800_2B44:
	xor	ax,ax
	jmp	2B4Ch

l0800_2B48:
	push	ax

l0800_2B49:
	call	05ADh

l0800_2B4C:
	mov	sp,bp
	pop	bp
	retf

;; fn0800_2B50: 0800:2B50
;;   Called from:
;;     0800:2FC4 (in fn0800_2F10)
;;     263F:0334 (in fn263F_00A6)
;;     268D:005C (in fn268D_000F)
;;     268D:00EB (in fn268D_000F)
fn0800_2B50 proc
	push	bp
	mov	bp,sp
	push	si
	mov	si,0FFFFh
	mov	ax,[bp+6h]
	or	ax,[bp+8h]
	jnz	2B62h

l0800_2B5F:
	jmp	2C03h

l0800_2B62:
	les	bx,[bp+6h]
	mov	ax,es:[bx+12h]
	cmp	ax,[bp+6h]
	jz	2B71h

l0800_2B6E:
	jmp	2C03h

l0800_2B71:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+6h],0h
	jz	2BAAh

l0800_2B7B:
	cmp	word ptr es:[bx],0h
	jge	2B90h

l0800_2B81:
	push	word ptr [bp+8h]
	push	bx
	nop
	push	cs
	call	2C08h
	pop	cx
	pop	cx
	or	ax,ax
	jnz	2C03h

l0800_2B90:
	les	bx,[bp+6h]
	test	word ptr es:[bx+2h],4h
	jz	2BAAh

l0800_2B9B:
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	nop
	push	cs
	call	1C24h
	pop	cx
	pop	cx

l0800_2BAA:
	les	bx,[bp+6h]
	cmp	byte ptr es:[bx+4h],0h
	jl	2BC2h

l0800_2BB4:
	mov	al,es:[bx+4h]
	cbw
	push	ax
	nop
	push	cs
	call	2A93h
	pop	cx
	mov	si,ax

l0800_2BC2:
	les	bx,[bp+6h]
	mov	word ptr es:[bx+2h],0h
	mov	word ptr es:[bx+6h],0h
	mov	word ptr es:[bx],0h
	mov	byte ptr es:[bx+4h],0FFh
	cmp	word ptr es:[bx+10h],0h
	jz	2C03h

l0800_2BE2:
	xor	ax,ax
	xor	dx,dx
	push	ax
	push	dx
	push	ax
	push	dx
	push	word ptr es:[bx+10h]
	call	06D4h
	push	dx
	push	ax
	nop
	push	cs
	call	1123h
	pop	cx
	pop	cx
	les	bx,[bp+6h]
	mov	word ptr es:[bx+10h],0h

l0800_2C03:
	mov	ax,si
	pop	si
	pop	bp
	retf

;; fn0800_2C08: 0800:2C08
;;   Called from:
;;     0800:2B86 (in fn0800_2B50)
;;     0800:2E3A (in fn0800_2E12)
;;     0800:3114 (in fn0800_3106)
;;     0800:328E (in fn0800_3266)
;;     0800:385B (in fn0800_380A)
;;     0800:38A9 (in fn0800_380A)
;;     0800:38FA (in fn0800_380A)
fn0800_2C08 proc
	push	bp
	mov	bp,sp
	push	si
	mov	ax,[bp+6h]
	or	ax,[bp+8h]
	jnz	2C1Ch

l0800_2C14:
	nop
	push	cs
	call	2E12h
	jmp	2CD0h

l0800_2C1C:
	les	bx,[bp+6h]
	mov	ax,es:[bx+12h]
	cmp	ax,[bp+6h]
	jz	2C2Eh

l0800_2C28:
	mov	ax,0FFFFh
	jmp	2CD2h

l0800_2C2E:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx],0h
	jl	2C88h

l0800_2C37:
	test	word ptr es:[bx+2h],8h
	jnz	2C57h

l0800_2C3F:
	mov	ax,es:[bx+0Eh]
	mov	dx,[bp+6h]
	add	dx,5h
	cmp	ax,[bp+8h]
	jz	2C51h

l0800_2C4E:
	jmp	2CD0h

l0800_2C51:
	cmp	es:[bx+0Ch],dx
	jnz	2CD0h

l0800_2C57:
	les	bx,[bp+6h]
	mov	word ptr es:[bx],0h
	mov	ax,es:[bx+0Eh]
	mov	dx,[bp+6h]
	add	dx,5h
	cmp	ax,[bp+8h]
	jnz	2CD0h

l0800_2C6E:
	cmp	es:[bx+0Ch],dx
	jnz	2CD0h

l0800_2C74:
	mov	ax,es:[bx+0Ah]
	mov	dx,es:[bx+8h]
	mov	es:[bx+0Eh],ax
	mov	es:[bx+0Ch],dx
	jmp	2CD0h
0800:2C86                   EB 48                               .H       

l0800_2C88:
	les	bx,[bp+6h]
	mov	ax,es:[bx+6h]
	add	ax,es:[bx]
	inc	ax
	mov	si,ax
	sub	es:[bx],si
	push	ax
	mov	ax,es:[bx+0Ah]
	mov	dx,es:[bx+8h]
	mov	es:[bx+0Eh],ax
	mov	es:[bx+0Ch],dx
	push	ax
	push	dx
	mov	al,es:[bx+4h]
	cbw
	push	ax
	nop
	push	cs
	call	44C8h
	add	sp,8h
	cmp	ax,si
	jz	2CD0h

l0800_2CBD:
	les	bx,[bp+6h]
	test	word ptr es:[bx+2h],200h
	jnz	2CD0h

l0800_2CC8:
	or	word ptr es:[bx+2h],10h
	jmp	2C28h

l0800_2CD0:
	xor	ax,ax

l0800_2CD2:
	pop	si
	pop	bp
	retf

;; fn0800_2CD5: 0800:2CD5
;;   Called from:
;;     263F:0017 (in fn263F_0008)
;;     263F:0044 (in fn263F_0008)
fn0800_2CD5 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	push	di
	mov	di,[bp+0Ah]
	xor	cx,cx
	mov	ax,[bp+8h]
	mov	dx,[bp+6h]
	mov	[bp-2h],ax
	mov	[bp-4h],dx
	jmp	2CF9h

l0800_2CF0:
	les	bx,[bp-4h]
	mov	es:[bx],cl
	inc	word ptr [bp-4h]

l0800_2CF9:
	cmp	cx,0Ah
	jz	2D32h

l0800_2CFE:
	dec	di
	jle	2D32h

l0800_2D01:
	les	bx,[bp+0Ch]
	dec	word ptr es:[bx]
	jl	2D1Eh

l0800_2D09:
	mov	ax,es:[bx+0Eh]
	mov	si,es:[bx+0Ch]
	inc	word ptr es:[bx+0Ch]
	mov	es,ax
	mov	al,es:[si]
	mov	ah,0h
	jmp	2D2Bh

l0800_2D1E:
	push	word ptr [bp+0Eh]
	push	word ptr [bp+0Ch]
	nop
	push	cs
	call	331Ch
	pop	cx
	pop	cx

l0800_2D2B:
	mov	cx,ax
	cmp	ax,0FFFFh
	jnz	2CF0h

l0800_2D32:
	cmp	cx,0FFh
	jnz	2D4Dh

l0800_2D37:
	mov	ax,[bp-2h]
	mov	dx,[bp-4h]
	cmp	ax,[bp+8h]
	jnz	2D4Dh

l0800_2D42:
	cmp	dx,[bp+6h]
	jnz	2D4Dh

l0800_2D47:
	xor	dx,dx
	xor	ax,ax
	jmp	2D6Bh

l0800_2D4D:
	les	bx,[bp-4h]
	mov	byte ptr es:[bx],0h
	les	bx,[bp+0Ch]
	test	word ptr es:[bx+2h],10h
	jz	2D65h

l0800_2D5F:
	xor	dx,dx
	xor	ax,ax
	jmp	2D6Bh

l0800_2D65:
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]

l0800_2D6B:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn0800_2D71: 0800:2D71
;;   Called from:
;;     263F:00D8 (in fn263F_00A6)
fn0800_2D71 proc
	push	bp
	mov	bp,sp
	push	ds
	mov	ah,2Fh
	int	21h
	push	es
	push	bx
	mov	ah,1Ah
	lds	dx,[bp+0Ah]
	int	21h
	mov	ah,4Eh
	mov	cx,[bp+0Eh]
	lds	dx,[bp+6h]
	int	21h
	pushf
	pop	cx
	xchg	bx,ax
	mov	ah,1Ah
	pop	dx
	pop	ds
	int	21h
	push	cx
	popf
	pop	ds
	jc	2D9Eh

l0800_2D9A:
	xor	ax,ax
	jmp	2DA2h

l0800_2D9E:
	push	bx
	call	05ADh

l0800_2DA2:
	pop	bp
	retf

;; fn0800_2DA4: 0800:2DA4
;;   Called from:
;;     263F:00EF (in fn263F_00A6)
fn0800_2DA4 proc
	push	bp
	mov	bp,sp
	push	ds
	mov	ah,2Fh
	int	21h
	push	es
	push	bx
	mov	ah,1Ah
	lds	dx,[bp+6h]
	int	21h
	mov	ah,4Fh
	int	21h
	pushf
	pop	cx
	xchg	bx,ax
	mov	ah,1Ah
	pop	dx
	pop	ds
	int	21h
	push	cx
	popf
	pop	ds
	jc	2DCBh

l0800_2DC7:
	xor	ax,ax
	jmp	2DCFh

l0800_2DCB:
	push	bx
	call	05ADh

l0800_2DCF:
	pop	bp
	retf

;; fn0800_2DD1: 0800:2DD1
;;   Called from:
;;     2504:098E (in fn2504_094D)
;;     268D:0416 (in fn268D_03E2)
fn0800_2DD1 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	ax,4201h
	mov	bx,[bp+6h]
	xor	cx,cx
	xor	dx,dx
	int	21h
	jc	2E09h

l0800_2DE5:
	push	dx
	push	ax
	mov	ax,4202h
	xor	cx,cx
	xor	dx,dx
	int	21h
	mov	[bp-4h],ax
	mov	[bp-2h],dx
	pop	dx
	pop	cx
	jc	2E09h

l0800_2DFA:
	mov	ax,4200h
	int	21h
	jc	2E09h

l0800_2E01:
	mov	dx,[bp-2h]
	mov	ax,[bp-4h]
	jmp	2E0Eh

l0800_2E09:
	push	ax
	call	05ADh
	cwd

l0800_2E0E:
	mov	sp,bp
	pop	bp
	retf

;; fn0800_2E12: 0800:2E12
;;   Called from:
;;     0800:2C15 (in fn0800_2C08)
fn0800_2E12 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	push	di
	xor	di,di
	mov	si,[9980h]
	mov	[bp-2h],ds
	mov	word ptr [bp-4h],97F0h
	jmp	2E45h

l0800_2E2A:
	les	bx,[bp-4h]
	test	word ptr es:[bx+2h],3h
	jz	2E41h

l0800_2E35:
	push	word ptr [bp-2h]
	push	bx
	nop
	push	cs
	call	2C08h
	pop	cx
	pop	cx
	inc	di

l0800_2E41:
	add	word ptr [bp-4h],14h

l0800_2E45:
	mov	ax,si
	dec	si
	or	ax,ax
	jnz	2E2Ah

l0800_2E4C:
	mov	ax,di
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn0800_2E54: 0800:2E54
;;   Called from:
;;     0800:2F26 (in fn0800_2F10)
fn0800_2E54 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	xor	di,di
	les	bx,[bp+0Ch]
	inc	word ptr [bp+0Ch]
	mov	cl,es:[bx]
	mov	al,cl
	cmp	al,72h
	jnz	2E72h

l0800_2E6A:
	mov	dx,1h
	mov	si,1h
	jmp	2E90h

l0800_2E72:
	cmp	cl,77h
	jnz	2E7Ch

l0800_2E77:
	mov	dx,302h
	jmp	2E84h

l0800_2E7C:
	cmp	cl,61h
	jnz	2E8Ch

l0800_2E81:
	mov	dx,902h

l0800_2E84:
	mov	di,80h
	mov	si,2h
	jmp	2E90h

l0800_2E8C:
	xor	ax,ax
	jmp	2F0Ah

l0800_2E90:
	les	bx,[bp+0Ch]
	mov	cl,es:[bx]
	inc	word ptr [bp+0Ch]
	cmp	cl,2Bh
	jz	2EB1h

l0800_2E9E:
	les	bx,[bp+0Ch]
	cmp	byte ptr es:[bx],2Bh
	jnz	2EC8h

l0800_2EA7:
	cmp	cl,74h
	jz	2EB1h

l0800_2EAC:
	cmp	cl,62h
	jnz	2EC8h

l0800_2EB1:
	cmp	cl,2Bh
	jnz	2EBCh

l0800_2EB6:
	les	bx,[bp+0Ch]
	mov	cl,es:[bx]

l0800_2EBC:
	and	dx,0FCh
	or	dx,4h
	mov	di,180h
	mov	si,3h

l0800_2EC8:
	cmp	cl,74h
	jnz	2ED3h

l0800_2ECD:
	or	dx,4000h
	jmp	2EF0h

l0800_2ED3:
	cmp	cl,62h
	jnz	2EDEh

l0800_2ED8:
	or	dx,8000h
	jmp	2EEDh

l0800_2EDE:
	mov	ax,[99AAh]
	and	ax,0C000h
	or	dx,ax
	mov	ax,dx
	test	ax,8000h
	jz	2EF0h

l0800_2EED:
	or	si,40h

l0800_2EF0:
	mov	word ptr [97EAh],800h
	mov	word ptr [97E8h],4658h
	les	bx,[bp+8h]
	mov	es:[bx],dx
	les	bx,[bp+4h]
	mov	es:[bx],di
	mov	ax,si

l0800_2F0A:
	pop	di
	pop	si
	pop	bp
	ret	0Ch

;; fn0800_2F10: 0800:2F10
;;   Called from:
;;     0800:3059 (in fn0800_302B)
fn0800_2F10 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	ss
	lea	ax,[bp-2h]
	push	ax
	push	ss
	lea	ax,[bp-4h]
	push	ax
	call	2E54h
	les	bx,[bp+0Eh]
	mov	es:[bx+2h],ax
	or	ax,ax
	jz	2F5Eh

l0800_2F34:
	cmp	byte ptr es:[bx+4h],0h
	jge	2F72h

l0800_2F3B:
	push	word ptr [bp-4h]
	mov	ax,[bp-2h]
	or	ax,[bp+4h]
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	nop
	push	cs
	call	3615h
	add	sp,8h
	les	bx,[bp+0Eh]
	mov	es:[bx+4h],al
	or	al,al
	jge	2F72h

l0800_2F5E:
	les	bx,[bp+0Eh]
	mov	byte ptr es:[bx+4h],0FFh
	mov	word ptr es:[bx+2h],0h

l0800_2F6C:
	xor	dx,dx
	xor	ax,ax
	jmp	2FDBh

l0800_2F72:
	les	bx,[bp+0Eh]
	mov	al,es:[bx+4h]
	cbw
	push	ax
	nop
	push	cs
	call	05F8h
	pop	cx
	or	ax,ax
	jz	2F8Eh

l0800_2F85:
	les	bx,[bp+0Eh]
	or	word ptr es:[bx+2h],200h

l0800_2F8E:
	mov	ax,200h
	push	ax
	les	bx,[bp+0Eh]
	test	word ptr es:[bx+2h],200h
	jz	2FA2h

l0800_2F9D:
	mov	ax,1h
	jmp	2FA4h

l0800_2FA2:
	xor	ax,ax

l0800_2FA4:
	push	ax
	xor	ax,ax
	xor	dx,dx
	push	ax
	push	dx
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	nop
	push	cs
	call	3C8Ah
	add	sp,0Ch
	or	ax,ax
	jz	2FCCh

l0800_2FBD:
	push	word ptr [bp+10h]
	push	word ptr [bp+0Eh]
	nop
	push	cs
	call	2B50h
	pop	cx
	pop	cx
	jmp	2F6Ch

l0800_2FCC:
	les	bx,[bp+0Eh]
	mov	word ptr es:[bx+10h],0h
	mov	dx,[bp+10h]
	mov	ax,[bp+0Eh]

l0800_2FDB:
	mov	sp,bp
	pop	bp
	ret	0Eh

;; fn0800_2FE1: 0800:2FE1
;;   Called from:
;;     0800:3031 (in fn0800_302B)
fn0800_2FE1 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	mov	[bp-2h],ds
	mov	word ptr [bp-4h],97F0h

l0800_2FEF:
	les	bx,[bp-4h]
	cmp	byte ptr es:[bx+4h],0h
	jl	3011h

l0800_2FF9:
	mov	ax,[bp-4h]
	add	word ptr [bp-4h],14h
	push	ax
	mov	ax,[9980h]
	mov	dx,14h
	imul	dx
	add	ax,97F0h
	pop	dx
	cmp	dx,ax
	jc	2FEFh

l0800_3011:
	les	bx,[bp-4h]
	cmp	byte ptr es:[bx+4h],0h
	jl	3021h

l0800_301B:
	xor	dx,dx
	xor	ax,ax
	jmp	3027h

l0800_3021:
	mov	dx,[bp-2h]
	mov	ax,[bp-4h]

l0800_3027:
	mov	sp,bp
	pop	bp
	ret

;; fn0800_302B: 0800:302B
;;   Called from:
;;     263F:0317 (in fn263F_00A6)
;;     268D:001B (in fn268D_000F)
;;     268D:006C (in fn268D_000F)
fn0800_302B proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	call	2FE1h
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	or	ax,dx
	jnz	3044h

l0800_303E:
	xor	dx,dx
	xor	ax,ax
	jmp	305Ch

l0800_3044:
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	xor	ax,ax
	push	ax
	call	2F10h

l0800_305C:
	mov	sp,bp
	pop	bp
	retf

;; fn0800_3060: 0800:3060
;;   Called from:
;;     268D:0050 (in fn268D_000F)
;;     268D:0098 (in fn268D_000F)
fn0800_3060 proc
	push	bp
	mov	bp,sp
	push	ss
	lea	ax,[bp+0Eh]
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	mov	ax,445Ah
	push	ax
	mov	ax,3331h
	push	ax
	call	08ACh
	add	sp,10h
	pop	bp
	retf

;; fn0800_3084: 0800:3084
;;   Called from:
;;     0800:3135 (in fn0800_3106)
fn0800_3084 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	les	bx,[bp+4h]
	cmp	word ptr es:[bx],0h
	jge	30A0h

l0800_3094:
	mov	cx,es:[bx+6h]
	add	cx,es:[bx]
	inc	cx
	mov	si,cx
	jmp	30AFh

l0800_30A0:
	les	bx,[bp+4h]
	mov	ax,es:[bx]
	cwd
	xor	ax,dx
	sub	ax,dx
	mov	cx,ax
	mov	si,ax

l0800_30AF:
	les	bx,[bp+4h]
	test	word ptr es:[bx+2h],40h
	jnz	30FDh

l0800_30BA:
	les	bx,[bp+4h]
	mov	ax,es:[bx+0Eh]
	mov	dx,es:[bx+0Ch]
	mov	[bp-2h],ax
	mov	[bp-4h],dx
	cmp	word ptr es:[bx],0h
	jge	30F6h

l0800_30D1:
	jmp	30E0h

l0800_30D3:
	dec	word ptr [bp-4h]
	les	bx,[bp-4h]
	cmp	byte ptr es:[bx],0Ah
	jnz	30E0h

l0800_30DF:
	inc	si

l0800_30E0:
	mov	ax,cx
	dec	cx
	or	ax,ax
	jnz	30D3h

l0800_30E7:
	jmp	30FDh

l0800_30E9:
	les	bx,[bp-4h]
	inc	word ptr [bp-4h]
	cmp	byte ptr es:[bx],0Ah
	jnz	30F6h

l0800_30F5:
	inc	si

l0800_30F6:
	mov	ax,cx
	dec	cx
	or	ax,ax
	jnz	30E9h

l0800_30FD:
	mov	ax,si
	pop	si
	mov	sp,bp
	pop	bp
	ret	4h

;; fn0800_3106: 0800:3106
;;   Called from:
;;     0800:3CF4 (in fn0800_3C8A)
fn0800_3106 proc
	push	bp
	mov	bp,sp
	push	si
	mov	si,[bp+0Eh]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	nop
	push	cs
	call	2C08h
	pop	cx
	pop	cx
	or	ax,ax
	jz	3123h

l0800_311E:
	mov	ax,0FFFFh
	jmp	3183h

l0800_3123:
	cmp	si,1h
	jnz	313Fh

l0800_3128:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx],0h
	jle	313Fh

l0800_3131:
	push	word ptr [bp+8h]
	push	bx
	call	3084h
	cwd
	sub	[bp+0Ah],ax
	sbb	[bp+0Ch],dx

l0800_313F:
	les	bx,[bp+6h]
	and	word ptr es:[bx+2h],0FE5Fh
	mov	word ptr es:[bx],0h
	mov	ax,es:[bx+0Ah]
	mov	dx,es:[bx+8h]
	mov	es:[bx+0Eh],ax
	mov	es:[bx+0Ch],dx
	push	si
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	mov	al,es:[bx+4h]
	cbw
	push	ax
	nop
	push	cs
	call	06ABh
	add	sp,8h
	cmp	dx,0FFh
	jnz	3181h

l0800_3177:
	cmp	ax,0FFFFh
	jnz	3181h

l0800_317C:
	mov	ax,0FFFFh
	jmp	3183h

l0800_3181:
	xor	ax,ax

l0800_3183:
	pop	si
	pop	bp
	retf
0800:3186                   55 8B EC 83 EC 08 B8 01 00 50       U........P
0800:3190 33 C0 33 D2 50 52 C4 5E 06 26 8A 47 04 98 50 90 3.3.PR.^.&.G..P.
0800:31A0 0E E8 07 D5 83 C4 08 89 56 FE 89 46 FC 83 FA FF ........V..F....
0800:31B0 75 08 3D FF FF 75 03 E9 A2 00 C4 5E 06 26 83 3F u.=..u.....^.&.?
0800:31C0 00 7C 03 E9 86 00 26 8A 47 04 98 D1 E0 8B D8 F7 .|....&.G.......
0800:31D0 87 82 99 00 08 74 63 B8 02 00 50 33 C0 33 D2 50 .....tc...P3.3.P
0800:31E0 52 8B 5E 06 26 8A 47 04 98 50 90 0E E8 BC D4 83 R.^.&.G..P......
0800:31F0 C4 08 89 56 FA 89 46 F8 83 FA FF 75 05 3D FF FF ...V..F....u.=..
0800:3200 74 60 33 C0 50 FF 76 FE FF 76 FC C4 5E 06 26 8A t`3.P.v..v..^.&.
0800:3210 47 04 98 50 90 0E E8 92 D4 83 C4 08 83 FA FF 75 G..P...........u
0800:3220 0D 3D FF FF 75 08 BA FF FF B8 FF FF EB 34 8B 46 .=..u........4.F
0800:3230 FA 8B 56 F8 89 46 FE 89 56 FC FF 76 08 FF 76 06 ..V..F..V..v..v.
0800:3240 E8 41 FE 99 01 46 FC 11 56 FE EB 10 FF 76 08 FF .A...F..V....v..
0800:3250 76 06 E8 2F FE 99 29 46 FC 19 56 FE 8B 56 FE 8B v../..)F..V..V..
0800:3260 46 FC 8B E5 5D CB                               F...].         

;; fn0800_3266: 0800:3266
;;   Called from:
;;     0800:32B2 (in fn0800_32A4)
;;     0800:33AC (in fn0800_3334)
fn0800_3266 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	mov	si,14h
	mov	[bp-2h],ds
	mov	word ptr [bp-4h],97F0h
	jmp	3298h

l0800_327A:
	les	bx,[bp-4h]
	mov	ax,es:[bx+2h]
	and	ax,300h
	cmp	ax,300h
	jnz	3294h

l0800_3289:
	push	word ptr [bp-2h]
	push	bx
	nop
	push	cs
	call	2C08h
	pop	cx
	pop	cx

l0800_3294:
	add	word ptr [bp-4h],14h

l0800_3298:
	mov	ax,si
	dec	si
	or	ax,ax
	jnz	327Ah

l0800_329F:
	pop	si
	mov	sp,bp
	pop	bp
	ret

;; fn0800_32A4: 0800:32A4
;;   Called from:
;;     0800:3396 (in fn0800_3334)
fn0800_32A4 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+4h]
	test	word ptr es:[bx+2h],200h
	jz	32B5h

l0800_32B2:
	call	3266h

l0800_32B5:
	les	bx,[bp+4h]
	push	word ptr es:[bx+6h]
	mov	ax,es:[bx+0Ah]
	mov	dx,es:[bx+8h]
	mov	es:[bx+0Eh],ax
	mov	es:[bx+0Ch],dx
	push	ax
	push	dx
	mov	al,es:[bx+4h]
	cbw
	push	ax
	nop
	push	cs
	call	3BB6h
	add	sp,8h
	les	bx,[bp+4h]
	mov	es:[bx],ax
	or	ax,ax
	jle	32EFh

l0800_32E6:
	and	word ptr es:[bx+2h],0DFh
	xor	ax,ax
	jmp	3318h

l0800_32EF:
	les	bx,[bp+4h]
	cmp	word ptr es:[bx],0h
	jnz	3308h

l0800_32F8:
	mov	ax,es:[bx+2h]
	and	ax,0FE7Fh
	or	ax,20h
	mov	es:[bx+2h],ax
	jmp	3315h

l0800_3308:
	les	bx,[bp+4h]
	mov	word ptr es:[bx],0h
	or	word ptr es:[bx+2h],10h

l0800_3315:
	mov	ax,0FFFFh

l0800_3318:
	pop	bp
	ret	4h

;; fn0800_331C: 0800:331C
;;   Called from:
;;     0800:2D25 (in fn0800_2CD5)
fn0800_331C proc
	push	bp
	mov	bp,sp
	les	bx,[bp+6h]
	inc	word ptr es:[bx]
	push	word ptr [bp+8h]
	push	bx
	push	cs
	call	3334h
	pop	cx
	pop	cx
	pop	bp
	retf
0800:3331    58 0E 50                                      X.P           

;; fn0800_3334: 0800:3334
;;   Called from:
;;     0800:3329 (in fn0800_331C)
fn0800_3334 proc
	push	bp
	mov	bp,sp
	push	si
	mov	ax,[bp+6h]
	or	ax,[bp+8h]
	jnz	3346h

l0800_3340:
	mov	ax,0FFFFh
	jmp	341Fh

l0800_3346:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx],0h
	jle	3369h

l0800_334F:
	les	bx,[bp+6h]
	dec	word ptr es:[bx]
	mov	ax,es:[bx+0Eh]
	mov	si,es:[bx+0Ch]
	inc	word ptr es:[bx+0Ch]
	mov	es,ax
	mov	al,es:[si]
	jmp	341Dh

l0800_3369:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx],0h
	jl	33E1h

l0800_3372:
	test	word ptr es:[bx+2h],110h
	jnz	33E1h

l0800_337A:
	test	word ptr es:[bx+2h],1h
	jz	33E1h

l0800_3382:
	les	bx,[bp+6h]
	or	word ptr es:[bx+2h],80h
	cmp	word ptr es:[bx+6h],0h
	jz	33A1h

l0800_3392:
	push	word ptr [bp+8h]
	push	bx
	call	32A4h
	or	ax,ax
	jz	334Fh

l0800_339D:
	jmp	3340h
0800:339F                                              EB                .
0800:33A0 AE                                              .              

l0800_33A1:
	les	bx,[bp+6h]
	test	word ptr es:[bx+2h],200h
	jz	33AFh

l0800_33AC:
	call	3266h

l0800_33AF:
	mov	ax,1h
	push	ax
	push	ds
	mov	ax,0AB4Eh
	push	ax
	les	bx,[bp+6h]
	mov	al,es:[bx+4h]
	cbw
	push	ax
	nop
	push	cs
	call	3BB6h
	add	sp,8h
	or	ax,ax
	jnz	3400h

l0800_33CD:
	les	bx,[bp+6h]
	mov	al,es:[bx+4h]
	cbw
	push	ax
	nop
	push	cs
	call	2AD9h
	pop	cx
	cmp	ax,1h
	jz	33ECh

l0800_33E1:
	les	bx,[bp+6h]
	or	word ptr es:[bx+2h],10h
	jmp	3340h

l0800_33EC:
	les	bx,[bp+6h]
	mov	ax,es:[bx+2h]
	and	ax,0FE7Fh
	or	ax,20h
	mov	es:[bx+2h],ax
	jmp	3340h

l0800_3400:
	cmp	byte ptr [0AB4Eh],0Dh
	jnz	3412h

l0800_3407:
	les	bx,[bp+6h]
	test	word ptr es:[bx+2h],40h
	jz	33A1h

l0800_3412:
	les	bx,[bp+6h]
	and	word ptr es:[bx+2h],0DFh
	mov	al,[0AB4Eh]

l0800_341D:
	mov	ah,0h

l0800_341F:
	pop	si
	pop	bp
	retf
0800:3422       1E B8 F0 97 50 0E E8 09 FF 59 59 CB         ....P....YY. 

;; fn0800_342E: 0800:342E
;;   Called from:
;;     0800:419A (in fn0800_418D)
fn0800_342E proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	push	di
	les	di,[bp+6h]
	mov	ax,es
	or	ax,di
	jz	345Fh

l0800_343F:
	mov	al,0h
	mov	ah,es:[di]
	mov	cx,0FFFFh
	cld

l0800_3448:
	repne scasb

l0800_344A:
	not	cx
	dec	cx
	jz	345Fh

l0800_344F:
	les	di,[9B64h]
	mov	[bp-2h],es
	mov	bx,es
	or	bx,di
	mov	[bp-4h],di
	jnz	346Ch

l0800_345F:
	xor	dx,dx
	xor	ax,ax
	jmp	3498h

l0800_3465:
	add	word ptr [bp-4h],4h
	les	di,[bp-4h]

l0800_346C:
	les	di,es:[di]
	mov	bx,es
	or	bx,di
	jz	345Fh

l0800_3475:
	mov	al,es:[di]
	or	al,al
	jz	345Fh

l0800_347C:
	cmp	ah,al
	jnz	3465h

l0800_3480:
	mov	bx,cx
	cmp	byte ptr es:[bx+di],3Dh
	jnz	3465h

l0800_3488:
	push	ds
	lds	si,[bp+6h]

l0800_348C:
	rep cmpsb

l0800_348E:
	pop	ds
	xchg	bx,cx
	jnz	3465h

l0800_3493:
	inc	di
	mov	ax,di
	mov	dx,es

l0800_3498:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf
0800:349E                                           55 8B               U.
0800:34A0 EC 8B 5E 06 8B 4E 0C 83 F9 0A 75 05 8B C3 99 EB ..^..N....u.....
0800:34B0 04 8B C3 33 D2 52 50 FF 76 0A FF 76 08 51 B0 01 ...3.RP.v..v.Q..
0800:34C0 50 B0 61 50 E8 42 D1 5D CB 55 8B EC FF 76 08 FF P.aP.B.].U...v..
0800:34D0 76 06 FF 76 0C FF 76 0A FF 76 0E B0 00 50 B0 61 v..v..v..v...P.a
0800:34E0 50 E8 25 D1 5D CB 55 8B EC 8B 46 0E FF 76 08 FF P.%.].U...F..v..
0800:34F0 76 06 FF 76 0C FF 76 0A 50 3D 0A 00 75 05 B8 01 v..v..v.P=..u...
0800:3500 00 EB 02 33 C0 50 B0 61 50 E8 FD D0 5D CB       ...3.P.aP...]. 

;; fn0800_350E: 0800:350E
;;   Called from:
;;     0800:16D7 (in fn0800_16B5)
;;     0F2B:135E (in fn0F2B_130A)
;;     1D10:1B25 (in fn1D10_1A8F)
;;     209F:0579 (in fn209F_0516)
;;     209F:0780 (in fn209F_06D8)
;;     209F:07A6 (in fn209F_06D8)
;;     209F:0800 (in fn209F_06D8)
;;     209F:082E (in fn209F_06D8)
;;     209F:0889 (in fn209F_06D8)
;;     209F:08B3 (in fn209F_06D8)
;;     226D:0536 (in fn226D_00F9)
;;     226D:0614 (in fn226D_057F)
fn0800_350E proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	mov	dx,ds
	les	di,[bp+6h]
	lds	si,[bp+0Ah]
	mov	cx,[bp+0Eh]
	shr	cx,1h
	cld

l0800_3521:
	rep movsw

l0800_3523:
	jnc	3526h

l0800_3525:
	movsb

l0800_3526:
	mov	ds,dx
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]
	pop	di
	pop	si
	pop	bp
	retf

;; fn0800_3532: 0800:3532
;;   Called from:
;;     0800:3566 (in fn0800_3556)
fn0800_3532 proc
	push	bp
	mov	bp,sp
	push	di
	les	di,[bp+6h]
	mov	cx,[bp+0Ah]
	mov	al,[bp+0Ch]
	mov	ah,al
	cld
	test	di,1h
	jz	354Ch

l0800_3548:
	jcxz	3553h

l0800_354A:
	stosb
	dec	cx

l0800_354C:
	shr	cx,1h

l0800_354E:
	rep stosw

l0800_3550:
	jnc	3553h

l0800_3552:
	stosb

l0800_3553:
	pop	di
	pop	bp
	retf

;; fn0800_3556: 0800:3556
;;   Called from:
;;     0800:4291 (in fn0800_418D)
;;     1D10:1AF8 (in fn1D10_1A8F)
;;     209F:02DA (in fn209F_02A7)
;;     209F:0A0D (in fn209F_08D2)
fn0800_3556 proc
	push	bp
	mov	bp,sp
	mov	al,[bp+0Ah]
	push	ax
	push	word ptr [bp+0Ch]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	cs
	call	3532h
	add	sp,8h
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]
	pop	bp
	retf
0800:3575                55 8B EC 56 57 1E 8B 4E 0C 8B 5E      U..VW..N..^
0800:3580 0A 8B 56 08 8B 46 06 E8 83 D2 73 06 FD B8 01 00 ..V..F....s.....
0800:3590 EB 03 FC 33 C0 C5 76 06 C4 7E 0A 8B 4E 0E 0B C0 ...3..v..~..N...
0800:35A0 74 06 03 F1 4E 03 F9 4F F7 C7 01 00 74 04 E3 11 t...N..O....t...
0800:35B0 A4 49 2B F0 2B F8 D1 E9 F3 A5 73 05 03 F0 03 F8 .I+.+.....s.....
0800:35C0 A4 FC 1F 5F 5E 5D CB 55 8B EC FF 76 0E FF 76 08 ..._^].U...v..v.
0800:35D0 FF 76 06 FF 76 0C FF 76 0A 0E E8 98 FF 83 C4 0A .v..v..v........
0800:35E0 8B 56 08 8B 46 06 5D CB                         .V..F.].       

;; fn0800_35E8: 0800:35E8
;;   Called from:
;;     0800:36A4 (in fn0800_3615)
;;     0800:36C2 (in fn0800_3615)
fn0800_35E8 proc
	push	bp
	mov	bp,sp
	push	ds
	mov	cx,[bp+4h]
	mov	ah,3Ch
	lds	dx,[bp+6h]
	int	21h
	pop	ds
	jc	35FBh

l0800_35F9:
	jmp	35FFh

l0800_35FB:
	push	ax
	call	05ADh

l0800_35FF:
	pop	bp
	ret	6h

;; fn0800_3603: 0800:3603
;;   Called from:
;;     0800:3720 (in fn0800_3615)
fn0800_3603 proc
	push	bp
	mov	bp,sp
	mov	bx,[bp+4h]
	sub	cx,cx
	sub	dx,dx
	mov	ah,40h
	int	21h
	pop	bp
	ret	2h

;; fn0800_3615: 0800:3615
;;   Called from:
;;     0800:2F4C (in fn0800_2F10)
;;     0CE0:001A (in fn0CE0_0007)
;;     0CE0:0E48 (in fn0CE0_08FC)
;;     0CE0:0F42 (in fn0CE0_08FC)
;;     0CE0:0FA0 (in fn0CE0_08FC)
;;     0CE0:10B5 (in fn0CE0_08FC)
;;     0E31:001C (in fn0E31_0002)
;;     0F2B:158C (in fn0F2B_153F)
;;     209F:02F2 (in fn209F_02E3)
;;     209F:08F1 (in fn209F_08D2)
;;     2476:063B (in fn2476_0630)
;;     2504:096E (in fn2504_094D)
;;     263F:034C (in fn263F_033E)
;;     268D:0220 (in main)
;;     268D:03F6 (in fn268D_03E2)
fn0800_3615 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	push	di
	mov	si,[bp+0Ah]
	mov	di,[bp+0Ch]
	test	si,0C000h
	jnz	3631h

l0800_3629:
	mov	ax,[99AAh]
	and	ax,0C000h
	or	si,ax

l0800_3631:
	xor	ax,ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	nop
	push	cs
	call	2A76h
	add	sp,6h
	mov	[bp-2h],ax
	test	si,100h
	jnz	364Eh

l0800_364B:
	jmp	36CEh

l0800_364E:
	and	di,[99ACh]
	mov	ax,di
	test	ax,180h
	jnz	3660h

l0800_3659:
	mov	ax,1h
	push	ax
	call	05ADh

l0800_3660:
	cmp	word ptr [bp-2h],0FFh
	jnz	3689h

l0800_3666:
	cmp	word ptr [99AEh],2h
	jz	3677h

l0800_366D:
	push	word ptr [99AEh]

l0800_3671:
	call	05ADh
	jmp	377Eh

l0800_3677:
	test	di,80h
	jz	3681h

l0800_367D:
	xor	ax,ax
	jmp	3684h

l0800_3681:
	mov	ax,1h

l0800_3684:
	mov	[bp-2h],ax
	jmp	3695h

l0800_3689:
	test	si,400h
	jz	36CEh

l0800_368F:
	mov	ax,50h
	push	ax
	jmp	3671h

l0800_3695:
	test	si,0F0h
	jz	36B9h

l0800_369B:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	xor	ax,ax
	push	ax
	call	35E8h
	mov	di,ax
	or	ax,ax
	jge	36B0h

l0800_36AD:
	jmp	377Ch

l0800_36B0:
	push	di
	nop
	push	cs
	call	2ABBh
	pop	cx
	jmp	36CEh

l0800_36B9:
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	push	word ptr [bp-2h]
	call	35E8h
	mov	di,ax
	or	ax,ax
	jge	3749h

l0800_36CB:
	jmp	377Ch

l0800_36CE:
	push	si
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	nop
	push	cs
	call	3784h
	add	sp,6h
	mov	di,ax
	or	ax,ax
	jl	3749h

l0800_36E3:
	xor	ax,ax
	push	ax
	push	di
	nop
	push	cs
	call	2367h
	pop	cx
	pop	cx
	mov	[bp-4h],ax
	test	ax,80h
	jz	3719h

l0800_36F6:
	or	si,2000h
	test	si,8000h
	jz	3723h

l0800_3700:
	and	ax,0FFh
	or	ax,20h
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,1h
	push	ax
	push	di
	nop
	push	cs
	call	2367h
	add	sp,8h
	jmp	3723h

l0800_3719:
	test	si,200h
	jz	3723h

l0800_371F:
	push	di
	call	3603h

l0800_3723:
	test	word ptr [bp-2h],1h
	jz	3749h

l0800_372A:
	test	si,100h
	jz	3749h

l0800_3730:
	test	si,0F0h
	jz	3749h

l0800_3736:
	mov	ax,1h
	push	ax
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	nop
	push	cs
	call	2A76h
	add	sp,8h

l0800_3749:
	or	di,di
	jl	377Ch

l0800_374D:
	test	si,300h
	jz	3758h

l0800_3753:
	mov	ax,1000h
	jmp	375Ah

l0800_3758:
	xor	ax,ax

l0800_375A:
	mov	dx,si
	and	dx,0F8FFh
	or	dx,ax
	push	dx
	test	word ptr [bp-2h],1h
	jz	376Eh

l0800_376A:
	xor	ax,ax
	jmp	3771h

l0800_376E:
	mov	ax,100h

l0800_3771:
	pop	dx
	or	dx,ax
	mov	bx,di
	shl	bx,1h
	mov	[bx+9982h],dx

l0800_377C:
	mov	ax,di

l0800_377E:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn0800_3784: 0800:3784
;;   Called from:
;;     0800:36D6 (in fn0800_3615)
fn0800_3784 proc
	push	bp
	mov	bp,sp
	sub	sp,2h
	mov	al,1h
	mov	cx,[bp+0Ah]
	test	cx,2h
	jnz	379Fh

l0800_3795:
	mov	al,2h
	test	cx,4h
	jnz	379Fh

l0800_379D:
	mov	al,0h

l0800_379F:
	push	ds
	lds	dx,[bp+6h]
	mov	cl,0F0h
	and	cl,[bp+0Ah]
	or	al,cl
	mov	ah,3Dh
	int	21h
	pop	ds
	jc	37CBh

l0800_37B1:
	mov	[bp-2h],ax
	mov	ax,[bp+0Ah]
	and	ax,0B8FFh
	or	ax,8000h
	mov	bx,[bp-2h]
	shl	bx,1h
	mov	[bx+9982h],ax
	mov	ax,[bp-2h]
	jmp	37CFh

l0800_37CB:
	push	ax
	call	05ADh

l0800_37CF:
	mov	sp,bp
	pop	bp
	retf

;; fn0800_37D3: 0800:37D3
;;   Called from:
;;     2057:00B2 (in fn2057_005C)
;;     209F:0071 (in fn209F_0002)
;;     263F:041C (in fn263F_03F3)
;;     263F:0428 (in fn263F_03F3)
;;     263F:0464 (in fn263F_043F)
;;     263F:0470 (in fn263F_043F)
;;     263F:0480 (in fn263F_043F)
;;     263F:0493 (in fn263F_043F)
;;     263F:049F (in fn263F_043F)
;;     263F:04CD (in fn263F_04B6)
;;     263F:04DD (in fn263F_04B6)
;;     268D:0112 (in main)
;;     268D:011E (in main)
;;     268D:039B (in fn268D_034A)
;;     268D:03C6 (in fn268D_034A)
fn0800_37D3 proc
	push	bp
	mov	bp,sp
	mov	ax,39B3h
	push	ax
	push	ds
	mov	ax,9804h
	push	ax
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	lea	ax,[bp+0Ah]
	push	ax
	call	1153h
	pop	bp
	retf

;; fn0800_37EE: 0800:37EE
;;   Called from:
;;     263F:0182 (in fn263F_00A6)
fn0800_37EE proc
	push	bp
	mov	bp,sp
	les	bx,[bp+8h]
	dec	word ptr es:[bx]
	push	word ptr [bp+0Ah]
	push	bx
	mov	al,[bp+6h]
	cbw
	push	ax
	nop
	push	cs
	call	380Ah
	add	sp,6h
	pop	bp
	retf

;; fn0800_380A: 0800:380A
;;   Called from:
;;     0800:3801 (in fn0800_37EE)
fn0800_380A proc
	push	bp
	mov	bp,sp
	push	si
	mov	al,[bp+6h]
	mov	[0AB50h],al
	les	bx,[bp+8h]
	cmp	word ptr es:[bx],0FFh
	jge	3871h

l0800_381D:
	inc	word ptr es:[bx]
	mov	ax,es:[bx+0Eh]
	mov	si,es:[bx+0Ch]
	inc	word ptr es:[bx+0Ch]
	mov	dl,[0AB50h]
	mov	es,ax
	mov	es:[si],dl
	mov	es,[bp+0Ah]
	test	word ptr es:[bx+2h],8h
	jnz	3843h

l0800_3840:
	jmp	3997h

l0800_3843:
	cmp	byte ptr [0AB50h],0Ah
	jz	3854h

l0800_384A:
	cmp	byte ptr [0AB50h],0Dh
	jz	3854h

l0800_3851:
	jmp	3997h

l0800_3854:
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	nop
	push	cs
	call	2C08h
	pop	cx
	pop	cx
	or	ax,ax
	jnz	3868h

l0800_3865:
	jmp	3997h

l0800_3868:
	mov	ax,0FFFFh
	jmp	399Ch
0800:386E                                           E9 26               .&
0800:3870 01                                              .              

l0800_3871:
	les	bx,[bp+8h]
	test	word ptr es:[bx+2h],90h
	jnz	3884h

l0800_387C:
	test	word ptr es:[bx+2h],2h
	jnz	388Eh

l0800_3884:
	les	bx,[bp+8h]
	or	word ptr es:[bx+2h],10h
	jmp	3868h

l0800_388E:
	les	bx,[bp+8h]
	or	word ptr es:[bx+2h],100h
	cmp	word ptr es:[bx+6h],0h
	jz	390Dh

l0800_389E:
	cmp	word ptr es:[bx],0h
	jz	38B3h

l0800_38A4:
	push	word ptr [bp+0Ah]
	push	bx
	nop
	push	cs
	call	2C08h
	pop	cx
	pop	cx
	or	ax,ax
	jnz	3868h

l0800_38B3:
	les	bx,[bp+8h]
	mov	ax,es:[bx+6h]
	neg	ax
	mov	es:[bx],ax
	mov	ax,es:[bx+0Eh]
	mov	si,es:[bx+0Ch]
	inc	word ptr es:[bx+0Ch]
	mov	dl,[0AB50h]
	mov	es,ax
	mov	es:[si],dl
	mov	es,[bp+0Ah]
	test	word ptr es:[bx+2h],8h
	jnz	38E2h

l0800_38DF:
	jmp	3997h

l0800_38E2:
	cmp	byte ptr [0AB50h],0Ah
	jz	38F3h

l0800_38E9:
	cmp	byte ptr [0AB50h],0Dh
	jz	38F3h

l0800_38F0:
	jmp	3997h

l0800_38F3:
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	nop
	push	cs
	call	2C08h
	pop	cx
	pop	cx
	or	ax,ax
	jnz	3907h

l0800_3904:
	jmp	3997h

l0800_3907:
	jmp	3868h
0800:390A                               E9 8A 00                    ...  

l0800_390D:
	les	bx,[bp+8h]
	mov	al,es:[bx+4h]
	cbw
	shl	ax,1h
	mov	bx,ax
	test	word ptr [bx+9982h],800h
	jz	393Ch

l0800_3921:
	mov	ax,2h
	push	ax
	xor	ax,ax
	xor	dx,dx
	push	ax
	push	dx
	mov	bx,[bp+8h]
	mov	al,es:[bx+4h]
	cbw
	push	ax
	nop
	push	cs
	call	06ABh
	add	sp,8h

l0800_393C:
	cmp	byte ptr [0AB50h],0Ah
	jnz	396Ah

l0800_3943:
	les	bx,[bp+8h]
	test	word ptr es:[bx+2h],40h
	jnz	396Ah

l0800_394E:
	mov	ax,1h
	push	ax
	push	ds
	mov	ax,9B68h
	push	ax
	mov	al,es:[bx+4h]
	cbw
	push	ax
	nop
	push	cs
	call	4619h
	add	sp,8h
	cmp	ax,1h
	jnz	3989h

l0800_396A:
	mov	ax,1h
	push	ax
	push	ds
	mov	ax,0AB50h
	push	ax
	les	bx,[bp+8h]
	mov	al,es:[bx+4h]
	cbw
	push	ax
	nop
	push	cs
	call	4619h
	add	sp,8h
	cmp	ax,1h
	jz	3997h

l0800_3989:
	les	bx,[bp+8h]
	test	word ptr es:[bx+2h],200h
	jnz	3997h

l0800_3994:
	jmp	3884h

l0800_3997:
	mov	al,[0AB50h]
	mov	ah,0h

l0800_399C:
	pop	si
	pop	bp
	retf
0800:399F                                              55                U
0800:39A0 8B EC 1E B8 04 98 50 FF 76 06 0E E8 5C FE 83 C4 ......P.v...\...
0800:39B0 06 5D CB 55 8B EC 83 EC 02 56 57 8B 7E 08 89 7E .].U.....VW.~..~
0800:39C0 FE C4 5E 04 26 F7 47 02 08 00 74 2E EB 22 FF 76 ..^.&.G...t..".v
0800:39D0 06 FF 76 04 C4 5E 0A FF 46 0A 26 8A 07 98 50 0E ..v..^..F.&...P.
0800:39E0 E8 27 FE 83 C4 06 3D FF FF 75 05 33 C0 E9 BE 01 .'....=..u.3....
0800:39F0 8B C7 4F 0B C0 75 D7 E9 B1 01 C4 5E 04 26 F7 47 ..O..u.....^.&.G
0800:3A00 02 40 00 75 03 E9 28 01 26 83 7F 06 00 75 03 E9 .@.u..(.&....u..
0800:3A10 CB 00 26 39 7F 06 73 69 26 83 3F 00 74 0F FF 76 ..&9..si&.?.t..v
0800:3A20 06 53 90 0E E8 E1 F1 59 59 0B C0 75 BE C4 5E 04 .S.....YY..u..^.
0800:3A30 26 8A 47 04 98 D1 E0 8B D8 F7 87 82 99 00 08 74 &.G............t
0800:3A40 1B B8 02 00 50 33 C0 33 D2 50 52 8B 5E 04 26 8A ....P3.3.PR.^.&.
0800:3A50 47 04 98 50 90 0E E8 52 CC 83 C4 08 57 FF 76 0C G..P...R....W.v.
0800:3A60 FF 76 0A C4 5E 04 26 8A 47 04 98 50 90 0E E8 A8 .v..^.&.G..P....
0800:3A70 0B 83 C4 08 3B C7 75 03 E9 30 01 E9 6D FF E9 2A ....;.u..0..m..*
0800:3A80 01 C4 5E 04 26 8B 07 03 C7 7C 26 26 83 3F 00 75 ..^.&....|&&.?.u
0800:3A90 0C B8 FF FF 26 2B 47 06 26 89 07 EB 14 FF 76 06 ....&+G.&.....v.
0800:3AA0 FF 76 04 90 0E E8 60 F1 59 59 0B C0 74 03 E9 3A .v....`.YY..t..:
0800:3AB0 FF 57 FF 76 0C FF 76 0A C4 5E 04 26 FF 77 0E 26 .W.v..v..^.&.w.&
0800:3AC0 FF 77 0C 90 0E E8 46 FA 83 C4 0A C4 5E 04 26 8B .w....F.....^.&.
0800:3AD0 07 03 C7 26 89 07 26 01 7F 0C E9 CE 00 C4 5E 04 ...&..&.......^.
0800:3AE0 26 8A 47 04 98 D1 E0 8B D8 F7 87 82 99 00 08 74 &.G............t
0800:3AF0 1B B8 02 00 50 33 C0 33 D2 50 52 8B 5E 04 26 8A ....P3.3.PR.^.&.
0800:3B00 47 04 98 50 90 0E E8 A2 CB 83 C4 08 57 FF 76 0C G..P........W.v.
0800:3B10 FF 76 0A C4 5E 04 26 8A 47 04 98 50 90 0E E8 F8 .v..^.&.G..P....
0800:3B20 0A 83 C4 08 3B C7 75 03 E9 80 00 E9 BD FE EB 7B ....;.u........{
0800:3B30 C4 5E 04 26 83 7F 06 00 74 52 EB 47 C4 5E 04 26 .^.&....tR.G.^.&
0800:3B40 FF 07 7D 20 26 8B 47 0E 26 8B 77 0C 26 FF 47 0C ..} &.G.&.w.&.G.
0800:3B50 C4 5E 0A FF 46 0A 26 8A 17 8E C0 26 88 14 8A C2 .^..F.&....&....
0800:3B60 B4 00 EB 17 FF 76 06 FF 76 04 C4 5E 0A FF 46 0A .....v..v..^..F.
0800:3B70 26 8A 07 50 0E E8 76 FC 83 C4 06 3D FF FF 75 03 &..P..v....=..u.
0800:3B80 E9 68 FE 8B C7 4F 0B C0 75 B2 EB 1F 57 FF 76 0C .h...O..u...W.v.
0800:3B90 FF 76 0A C4 5E 04 26 8A 47 04 98 50 90 0E E8 27 .v..^.&.G..P...'
0800:3BA0 09 83 C4 08 3B C7 74 03 E9 40 FE 8B 46 FE 5F 5E ....;.t..@..F._^
0800:3BB0 8B E5 5D C2 0A 00                               ..]...         

;; fn0800_3BB6: 0800:3BB6
;;   Called from:
;;     0800:32D5 (in fn0800_32A4)
;;     0800:33C2 (in fn0800_3334)
;;     0800:3C87 (in fn0800_3C87)
fn0800_3BB6 proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	push	di
	mov	ax,[bp+6h]
	cmp	ax,[9980h]
	jc	3BD1h

l0800_3BC7:
	mov	ax,6h
	push	ax
	call	05ADh
	jmp	3C81h

l0800_3BD1:
	mov	ax,[bp+0Ch]
	inc	ax
	cmp	ax,2h
	jc	3BE7h

l0800_3BDA:
	mov	bx,[bp+6h]
	shl	bx,1h
	test	word ptr [bx+9982h],200h
	jz	3BECh

l0800_3BE7:
	xor	ax,ax
	jmp	3C81h

l0800_3BEC:
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	word ptr [bp+6h]
	nop
	push	cs
	call	0865h
	add	sp,8h
	mov	[bp-2h],ax
	inc	ax
	cmp	ax,2h
	jc	3C16h

l0800_3C09:
	mov	bx,[bp+6h]
	shl	bx,1h
	test	word ptr [bx+9982h],4000h
	jnz	3C1Bh

l0800_3C16:
	mov	ax,[bp-2h]
	jmp	3C81h

l0800_3C1B:
	mov	cx,[bp-2h]
	les	si,[bp+8h]
	mov	di,si
	mov	bx,si
	cld

l0800_3C26:
	lodsb
	cmp	al,1Ah
	jz	3C5Ch

l0800_3C2C:
	cmp	al,0Dh
	jz	3C35h

l0800_3C30:
	stosb
	loop	3C26h

l0800_3C33:
	jmp	3C54h

l0800_3C35:
	loop	3C26h

l0800_3C37:
	push	es
	push	bx
	mov	ax,1h
	push	ax
	lea	ax,[bp-3h]
	push	ss
	push	ax
	push	word ptr [bp+6h]
	nop
	push	cs
	call	0865h
	add	sp,8h
	pop	bx
	pop	es
	cld
	mov	al,[bp-3h]
	stosb

l0800_3C54:
	cmp	di,bx
	jnz	3C5Ah

l0800_3C58:
	jmp	3BECh

l0800_3C5A:
	jmp	3C7Eh

l0800_3C5C:
	push	bx
	mov	ax,1h
	push	ax
	neg	cx
	sbb	ax,ax
	push	ax
	push	cx
	push	word ptr [bp+6h]
	nop
	push	cs
	call	06ABh
	add	sp,8h
	mov	bx,[bp+6h]
	shl	bx,1h
	or	word ptr [bx+9982h],200h
	pop	bx

l0800_3C7E:
	sub	di,bx
	xchg	di,ax

l0800_3C81:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn0800_3C87: 0800:3C87
;;   Called from:
;;     0CE0:005F (in fn0CE0_0007)
;;     0CE0:0F7C (in fn0CE0_08FC)
;;     0CE0:0FDA (in fn0CE0_08FC)
;;     1D10:0FEC (in fn1D10_0FB3)
;;     1D10:105E (in fn1D10_0FB3)
;;     1D10:1314 (in fn1D10_12D4)
;;     209F:040A (in fn209F_02E3)
;;     209F:05CF (in fn209F_0516)
;;     2476:0677 (in fn2476_0630)
;;     2476:0689 (in fn2476_0630)
;;     2476:06B3 (in fn2476_0630)
;;     2476:06C8 (in fn2476_0630)
;;     2504:099F (in fn2504_094D)
;;     263F:03C9 (in fn263F_033E)
;;     268D:0431 (in fn268D_03E2)
;;     268D:0443 (in fn268D_03E2)
;;     268D:0460 (in fn268D_03E2)
fn0800_3C87 proc
	jmp	3BB6h

;; fn0800_3C8A: 0800:3C8A
;;   Called from:
;;     0800:2FB2 (in fn0800_2F10)
fn0800_3C8A proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	mov	di,[bp+0Eh]
	mov	si,[bp+10h]
	les	bx,[bp+6h]
	mov	ax,es:[bx+12h]
	cmp	ax,[bp+6h]
	jnz	3CACh

l0800_3CA1:
	cmp	di,2h
	jg	3CACh

l0800_3CA6:
	cmp	si,7FFFh
	jbe	3CB2h

l0800_3CAC:
	mov	ax,0FFFFh
	jmp	3DA3h

l0800_3CB2:
	cmp	word ptr [9B6Ch],0h
	jnz	3CC8h

l0800_3CB9:
	cmp	word ptr [bp+6h],9804h
	jnz	3CC8h

l0800_3CC0:
	mov	word ptr [9B6Ch],1h
	jmp	3CDCh

l0800_3CC8:
	cmp	word ptr [9B6Ah],0h
	jnz	3CDCh

l0800_3CCF:
	cmp	word ptr [bp+6h],97F0h
	jnz	3CDCh

l0800_3CD6:
	mov	word ptr [9B6Ah],1h

l0800_3CDC:
	les	bx,[bp+6h]
	cmp	word ptr es:[bx],0h
	jz	3CFBh

l0800_3CE5:
	mov	ax,1h
	push	ax
	xor	ax,ax
	xor	dx,dx
	push	ax
	push	dx
	push	word ptr [bp+8h]
	push	bx
	nop
	push	cs
	call	3106h
	add	sp,0Ah

l0800_3CFB:
	les	bx,[bp+6h]
	test	word ptr es:[bx+2h],4h
	jz	3D15h

l0800_3D06:
	push	word ptr es:[bx+0Ah]
	push	word ptr es:[bx+8h]
	nop
	push	cs
	call	1C24h
	pop	cx
	pop	cx

l0800_3D15:
	les	bx,[bp+6h]
	and	word ptr es:[bx+2h],0F3h
	mov	word ptr es:[bx+6h],0h
	mov	ax,[bp+8h]
	mov	dx,[bp+6h]
	add	dx,5h
	mov	es:[bx+0Ah],ax
	mov	es:[bx+8h],dx
	mov	es:[bx+0Eh],ax
	mov	es:[bx+0Ch],dx
	cmp	di,2h
	jz	3DA1h

l0800_3D41:
	or	si,si
	jbe	3DA1h

l0800_3D45:
	mov	word ptr [97E6h],800h
	mov	word ptr [97E4h],4695h
	mov	ax,[bp+0Ah]
	or	ax,[bp+0Ch]
	jnz	3D7Ah

l0800_3D59:
	push	si
	nop
	push	cs
	call	1D2Eh
	pop	cx
	mov	[bp+0Ch],dx
	mov	[bp+0Ah],ax
	or	ax,dx
	jnz	3D6Dh

l0800_3D6A:
	jmp	3CACh

l0800_3D6D:
	les	bx,[bp+6h]
	or	word ptr es:[bx+2h],4h
	jmp	3D7Ah
0800:3D77                      E9 32 FF                          .2.     

l0800_3D7A:
	les	bx,[bp+6h]
	mov	ax,[bp+0Ch]
	mov	dx,[bp+0Ah]
	mov	es:[bx+0Eh],ax
	mov	es:[bx+0Ch],dx
	mov	es:[bx+0Ah],ax
	mov	es:[bx+8h],dx
	mov	es:[bx+6h],si
	cmp	di,1h
	jnz	3DA1h

l0800_3D9C:
	or	word ptr es:[bx+2h],8h

l0800_3DA1:
	xor	ax,ax

l0800_3DA3:
	pop	di
	pop	si
	pop	bp
	retf

;; fn0800_3DA7: 0800:3DA7
;;   Called from:
;;     0800:0720 (in fn0800_06D4)
fn0800_3DA7 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	cld
	push	ds
	les	di,[bp+6h]
	mov	dx,di
	xor	al,al
	mov	cx,0FFFFh

l0800_3DB8:
	repne scasb

l0800_3DBA:
	push	es
	lea	si,[di-1h]
	les	di,[bp+0Ah]
	mov	cx,0FFFFh

l0800_3DC4:
	repne scasb

l0800_3DC6:
	not	cx
	sub	di,cx
	push	es
	pop	ds
	pop	es
	xchg	di,si
	test	si,1h
	jz	3DD7h

l0800_3DD5:
	movsb
	dec	cx

l0800_3DD7:
	shr	cx,1h

l0800_3DD9:
	rep movsw

l0800_3DDB:
	jnc	3DDEh

l0800_3DDD:
	movsb

l0800_3DDE:
	xchg	dx,ax
	mov	dx,es
	pop	ds
	pop	di
	pop	si
	pop	bp
	retf

;; fn0800_3DE6: 0800:3DE6
;;   Called from:
;;     0800:4262 (in fn0800_418D)
;;     0800:4277 (in fn0800_418D)
;;     1F0F:0D15 (in fn1F0F_0BF7)
;;     1F0F:0D90 (in fn1F0F_0BF7)
;;     1F0F:0E19 (in fn1F0F_0BF7)
;;     1F0F:0E7C (in fn1F0F_0BF7)
;;     1F0F:0F05 (in fn1F0F_0BF7)
;;     1F0F:0F68 (in fn1F0F_0BF7)
;;     1F0F:0FE6 (in fn1F0F_0BF7)
fn0800_3DE6 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	cld
	les	di,[bp+0Ah]
	mov	si,di
	xor	al,al
	mov	cx,0FFFFh

l0800_3DF6:
	repne scasb

l0800_3DF8:
	not	cx
	push	ds
	mov	ax,es
	mov	ds,ax
	les	di,[bp+6h]

l0800_3E02:
	rep movsb

l0800_3E04:
	pop	ds
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]
	pop	di
	pop	si
	pop	bp
	retf

;; fn0800_3E0F: 0800:3E0F
;;   Called from:
;;     0800:16C0 (in fn0800_16B5)
;;     0800:41B2 (in fn0800_418D)
;;     0800:4306 (in fn0800_418D)
;;     263F:0024 (in fn263F_0008)
;;     263F:0052 (in fn263F_0008)
fn0800_3E0F proc
	push	bp
	mov	bp,sp
	push	di
	les	di,[bp+6h]
	xor	ax,ax
	cmp	ax,[bp+8h]
	jnz	3E21h

l0800_3E1D:
	cmp	ax,di
	jz	3E2Bh

l0800_3E21:
	cld
	mov	cx,0FFFFh

l0800_3E25:
	repne scasb

l0800_3E27:
	xchg	cx,ax
	not	ax
	dec	ax

l0800_3E2B:
	pop	di
	pop	bp
	retf

;; fn0800_3E2E: 0800:3E2E
;;   Called from:
;;     0800:42AB (in fn0800_418D)
;;     0800:434F (in fn0800_418D)
fn0800_3E2E proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	cld
	les	di,[bp+0Ah]
	mov	si,di
	xor	al,al
	mov	bx,[bp+0Eh]
	mov	cx,bx

l0800_3E40:
	repne scasb

l0800_3E42:
	sub	bx,cx
	push	ds
	mov	di,es
	mov	ds,di
	les	di,[bp+6h]
	xchg	bx,cx

l0800_3E4E:
	rep movsb

l0800_3E50:
	mov	cx,bx

l0800_3E52:
	rep stosb

l0800_3E54:
	pop	ds
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]
	pop	di
	pop	si
	pop	bp
	retf

;; fn0800_3E5F: 0800:3E5F
;;   Called from:
;;     0800:10DA (in fn0800_10B1)
fn0800_3E5F proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	nop
	push	cs
	call	418Dh
	mov	ax,[9B9Eh]
	mov	dx,[9B9Ch]
	add	dx,0A600h
	adc	ax,12CEh
	mov	[bp-2h],ax
	mov	[bp-4h],dx
	les	bx,[bp+6h]
	mov	si,es:[bx]
	add	si,0F844h
	mov	ax,si
	mov	cl,2h
	sar	ax,cl
	cwd
	push	ax
	push	dx
	mov	dx,786h
	mov	ax,1F80h
	pop	cx
	pop	bx
	call	07F6h
	add	[bp-4h],ax
	adc	[bp-2h],dx
	mov	ax,si
	and	ax,3h
	cwd
	push	ax
	push	dx
	mov	dx,1E1h
	mov	ax,3380h
	pop	cx
	pop	bx
	call	07F6h
	add	[bp-4h],ax
	adc	[bp-2h],dx
	test	si,3h
	jz	3ECBh

l0800_3EC2:
	add	word ptr [bp-4h],5180h
	adc	word ptr [bp-2h],1h

l0800_3ECB:
	xor	cx,cx
	les	bx,[bp+6h]
	mov	al,es:[bx+3h]
	cbw
	dec	ax
	mov	si,ax
	jmp	3EE2h

l0800_3EDA:
	dec	si
	mov	al,[si+9B6Eh]
	cbw
	add	cx,ax

l0800_3EE2:
	or	si,si
	jg	3EDAh

l0800_3EE6:
	les	bx,[bp+6h]
	mov	al,es:[bx+2h]
	cbw
	dec	ax
	add	cx,ax
	cmp	byte ptr es:[bx+3h],2h
	jle	3F00h

l0800_3EF8:
	test	word ptr es:[bx],3h
	jnz	3F00h

l0800_3EFF:
	inc	cx

l0800_3F00:
	les	bx,[bp+0Ah]
	mov	al,es:[bx+1h]
	mov	ah,0h
	push	ax
	mov	ax,cx
	mov	dx,18h
	imul	dx
	pop	dx
	add	ax,dx
	mov	si,ax
	cmp	word ptr [9BA0h],0h
	jz	3F3Ah

l0800_3F1D:
	mov	al,es:[bx+1h]
	mov	ah,0h
	push	ax
	push	cx
	xor	ax,ax
	push	ax
	les	bx,[bp+6h]
	mov	ax,es:[bx]
	add	ax,0F84Eh
	push	ax
	call	437Bh
	or	ax,ax
	jz	3F3Ah

l0800_3F39:
	dec	si

l0800_3F3A:
	mov	ax,si
	cwd
	push	ax
	push	dx
	xor	dx,dx
	mov	ax,0E10h
	pop	cx
	pop	bx
	call	07F6h
	add	[bp-4h],ax
	adc	[bp-2h],dx
	les	bx,[bp+0Ah]
	mov	al,es:[bx]
	mov	ah,0h
	cwd
	push	ax
	push	dx
	xor	dx,dx
	mov	ax,3Ch
	pop	cx
	pop	bx
	call	07F6h
	les	bx,[bp+0Ah]
	mov	bl,es:[bx+3h]
	mov	bh,0h
	push	ax
	mov	ax,bx
	push	dx
	cwd
	pop	bx
	pop	cx
	add	cx,ax
	adc	bx,dx
	add	[bp-4h],cx
	adc	[bp-2h],bx
	mov	dx,[bp-2h]
	mov	ax,[bp-4h]
	pop	si
	mov	sp,bp
	pop	bp
	retf
0800:3F89                            55 8B EC 90 0E E8 FC          U......
0800:3F90 01 A1 9E 9B 8B 16 9C 9B 81 C2 00 A6 15 CE 12 29 ...............)
0800:3FA0 56 06 19 46 08 C4 5E 0E 26 C6 47 02 00 33 C0 BA V..F..^.&.G..3..
0800:3FB0 3C 00 50 52 FF 76 08 FF 76 06 E8 A8 C4 C4 5E 0E <.PR.v..v.....^.
0800:3FC0 26 88 47 03 33 C0 BA 3C 00 50 52 FF 76 08 FF 76 &.G.3..<.PR.v..v
0800:3FD0 06 E8 82 C4 89 56 08 89 46 06 33 C0 BA 3C 00 50 .....V..F.3..<.P
0800:3FE0 52 FF 76 08 FF 76 06 E8 7B C4 C4 5E 0E 26 88 07 R.v..v..{..^.&..
0800:3FF0 33 C0 BA 3C 00 50 52 FF 76 08 FF 76 06 E8 56 C4 3..<.PR.v..v..V.
0800:4000 89 56 08 89 46 06 33 C0 BA F8 88 50 52 FF 76 08 .V..F.3....PR.v.
0800:4010 FF 76 06 E8 40 C4 B1 02 D3 E0 05 BC 07 C4 5E 0A .v..@.........^.
0800:4020 26 89 07 33 C0 BA F8 88 50 52 FF 76 08 FF 76 06 &..3....PR.v..v.
0800:4030 E8 32 C4 89 56 08 89 46 06 83 7E 08 00 7C 44 75 .2..V..F..~..|Du
0800:4040 07 81 7E 06 50 22 72 3B 81 6E 06 50 22 83 5E 08 ..~.P"r;.n.P".^.
0800:4050 00 C4 5E 0A 26 FF 07 33 C0 BA 38 22 50 52 FF 76 ..^.&..3..8"PR.v
0800:4060 08 FF 76 06 E8 EF C3 C4 5E 0A 26 01 07 33 C0 BA ..v.....^.&..3..
0800:4070 38 22 50 52 FF 76 08 FF 76 06 E8 E8 C3 89 56 08 8"PR.v..v.....V.
0800:4080 89 46 06 83 3E A0 9B 00 74 3E 33 C0 BA 18 00 50 .F..>...t>3....P
0800:4090 52 FF 76 08 FF 76 06 E8 CB C3 50 33 C0 BA 18 00 R.v..v....P3....
0800:40A0 50 52 FF 76 08 FF 76 06 E8 AB C3 50 33 C0 50 C4 PR.v..v....P3.P.
0800:40B0 5E 0A 26 8B 07 05 4E F8 50 E8 BF 02 0B C0 74 08 ^.&...N.P.....t.
0800:40C0 83 46 06 01 83 56 08 00 33 C0 BA 18 00 50 52 FF .F...V..3....PR.
0800:40D0 76 08 FF 76 06 E8 8D C3 C4 5E 0E 26 88 47 01 33 v..v.....^.&.G.3
0800:40E0 C0 BA 18 00 50 52 FF 76 08 FF 76 06 E8 67 C3 89 ....PR.v..v..g..
0800:40F0 56 08 89 46 06 83 46 06 01 83 56 08 00 C4 5E 0A V..F..F...V...^.
0800:4100 26 F7 07 03 00 75 33 83 7E 08 00 7C 12 7F 06 83 &....u3.~..|....
0800:4110 7E 06 3C 76 0A 83 6E 06 01 83 5E 08 00 EB 1B 83 ~.<v..n...^.....
0800:4120 7E 08 00 75 15 83 7E 06 3C 75 0F C4 5E 0A 26 C6 ~..u..~.<u..^.&.
0800:4130 47 03 02 26 C6 47 02 1D EB 51 C4 5E 0A 26 C6 47 G..&.G...Q.^.&.G
0800:4140 03 00 EB 1D C4 5E 0A 26 8A 47 03 98 8B D8 8A 87 .....^.&.G......
0800:4150 6E 9B 98 99 29 46 06 19 56 08 8B 5E 0A 26 FE 47 n...)F..V..^.&.G
0800:4160 03 C4 5E 0A 26 8A 47 03 98 8B D8 8A 87 6E 9B 98 ..^.&.G......n..
0800:4170 99 3B 56 08 7C CE 75 05 3B 46 06 72 C7 C4 5E 0A .;V.|.u.;F.r..^.
0800:4180 26 FE 47 03 8A 46 06 26 88 47 02 5D CB          &.G..F.&.G.].  

;; fn0800_418D: 0800:418D
;;   Called from:
;;     0800:3E67 (in fn0800_3E5F)
fn0800_418D proc
	push	bp
	mov	bp,sp
	sub	sp,4h
	push	si
	push	ds
	mov	ax,9BA2h
	push	ax
	nop
	push	cs
	call	342Eh
	pop	cx
	pop	cx
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	or	ax,dx
	jnz	41ADh

l0800_41AA:
	jmp	4242h

l0800_41AD:
	push	dx
	push	word ptr [bp-4h]
	nop
	push	cs
	call	3E0Fh
	pop	cx
	pop	cx
	cmp	ax,4h
	jnc	41C0h

l0800_41BD:
	jmp	4242h

l0800_41C0:
	les	bx,[bp-4h]
	mov	al,es:[bx]
	cbw
	mov	bx,ax
	mov	al,[bx+96E3h]
	cbw
	test	ax,0Ch
	jz	4242h

l0800_41D3:
	mov	bx,[bp-4h]
	mov	al,es:[bx+1h]
	cbw
	mov	bx,ax
	mov	al,[bx+96E3h]
	cbw
	test	ax,0Ch
	jz	4242h

l0800_41E7:
	mov	bx,[bp-4h]
	mov	al,es:[bx+2h]
	cbw
	mov	bx,ax
	mov	al,[bx+96E3h]
	cbw
	test	ax,0Ch
	jz	4242h

l0800_41FB:
	mov	bx,[bp-4h]
	cmp	byte ptr es:[bx+3h],2Dh
	jz	421Ah

l0800_4205:
	cmp	byte ptr es:[bx+3h],2Bh
	jz	421Ah

l0800_420C:
	mov	al,es:[bx+3h]
	cbw
	mov	bx,ax
	test	byte ptr [bx+96E3h],2h
	jz	4242h

l0800_421A:
	les	bx,[bp-4h]
	mov	al,es:[bx+3h]
	cbw
	mov	bx,ax
	mov	al,[bx+96E3h]
	cbw
	test	ax,2h
	jnz	4281h

l0800_422E:
	mov	bx,[bp-4h]
	mov	al,es:[bx+4h]
	cbw
	mov	bx,ax
	mov	al,[bx+96E3h]
	cbw
	test	ax,2h
	jnz	4281h

l0800_4242:
	mov	word ptr [9BA0h],1h
	mov	word ptr [9B9Eh],0h
	mov	word ptr [9B9Ch],4650h
	push	ds
	mov	ax,9BA5h
	push	ax
	push	word ptr [9B96h]
	push	word ptr [9B94h]
	nop
	push	cs
	call	3DE6h
	add	sp,8h
	push	ds
	mov	ax,9BA9h
	push	ax
	push	word ptr [9B9Ah]
	push	word ptr [9B98h]
	nop
	push	cs
	call	3DE6h
	add	sp,8h
	jmp	4376h

l0800_4281:
	mov	ax,4h
	push	ax
	xor	ax,ax
	push	ax
	push	word ptr [9B9Ah]
	push	word ptr [9B98h]
	nop
	push	cs
	call	3556h
	add	sp,8h
	mov	ax,3h
	push	ax
	push	word ptr [bp-2h]
	push	word ptr [bp-4h]
	push	word ptr [9B96h]
	push	word ptr [9B94h]
	nop
	push	cs
	call	3E2Eh
	add	sp,0Ah
	les	bx,[9B94h]
	mov	byte ptr es:[bx+3h],0h
	mov	ax,[bp-4h]
	add	ax,3h
	push	word ptr [bp-2h]
	push	ax
	nop
	push	cs
	call	29F0h
	pop	cx
	pop	cx
	push	ax
	push	dx
	xor	dx,dx
	mov	ax,0E10h
	pop	cx
	pop	bx
	call	07F6h
	mov	[9B9Eh],dx
	mov	[9B9Ch],ax
	mov	word ptr [9BA0h],0h
	mov	si,3h
	jmp	4368h

l0800_42EA:
	les	bx,[bp-4h]
	add	bx,si
	mov	al,es:[bx]
	cbw
	mov	bx,ax
	test	byte ptr [bx+96E3h],0Ch
	jz	4367h

l0800_42FC:
	mov	ax,[bp-4h]
	add	ax,si
	push	word ptr [bp-2h]
	push	ax
	nop
	push	cs
	call	3E0Fh
	pop	cx
	pop	cx
	cmp	ax,3h
	jc	4376h

l0800_4311:
	les	bx,[bp-4h]
	mov	al,es:[bx+si+1h]
	cbw
	mov	bx,ax
	mov	al,[bx+96E3h]
	cbw
	test	ax,0Ch
	jz	4376h

l0800_4325:
	mov	bx,[bp-4h]
	mov	al,es:[bx+si+2h]
	cbw
	mov	bx,ax
	mov	al,[bx+96E3h]
	cbw
	test	ax,0Ch
	jz	4376h

l0800_4339:
	mov	ax,3h
	push	ax
	mov	ax,[bp-4h]
	add	ax,si
	push	word ptr [bp-2h]
	push	ax
	push	word ptr [9B9Ah]
	push	word ptr [9B98h]
	nop
	push	cs
	call	3E2Eh
	add	sp,0Ah
	les	bx,[9B98h]
	mov	byte ptr es:[bx+3h],0h
	mov	word ptr [9BA0h],1h
	jmp	4376h

l0800_4367:
	inc	si

l0800_4368:
	les	bx,[bp-4h]
	add	bx,si
	cmp	byte ptr es:[bx],0h
	jz	4376h

l0800_4373:
	jmp	42EAh

l0800_4376:
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn0800_437B: 0800:437B
;;   Called from:
;;     0800:3F32 (in fn0800_3E5F)
fn0800_437B proc
	push	bp
	mov	bp,sp
	push	si
	cmp	word ptr [bp+6h],0h
	jnz	43B1h

l0800_4385:
	mov	si,[bp+8h]
	cmp	word ptr [bp+8h],3Bh
	jc	439Ah

l0800_438E:
	mov	ax,[bp+4h]
	add	ax,46h
	test	ax,3h
	jnz	439Ah

l0800_4399:
	dec	si

l0800_439A:
	mov	word ptr [bp+6h],0h
	jmp	43A4h

l0800_43A1:
	inc	word ptr [bp+6h]

l0800_43A4:
	mov	bx,[bp+6h]
	shl	bx,1h
	cmp	[bx+9B7Ah],si
	jbe	43A1h

l0800_43AF:
	jmp	43D2h

l0800_43B1:
	mov	bx,[bp+6h]
	dec	bx
	shl	bx,1h
	mov	ax,[bx+9B7Ah]
	add	[bp+8h],ax
	cmp	word ptr [bp+6h],3h
	jbe	43D2h

l0800_43C4:
	mov	ax,[bp+4h]
	add	ax,46h
	test	ax,3h
	jnz	43D2h

l0800_43CF:
	inc	word ptr [bp+8h]

l0800_43D2:
	cmp	word ptr [bp+6h],4h
	jc	4453h

l0800_43D8:
	jz	43E2h

l0800_43DA:
	cmp	word ptr [bp+6h],0Ah
	ja	4453h

l0800_43E0:
	jnz	444Eh

l0800_43E2:
	mov	bx,[bp+6h]
	shl	bx,1h
	cmp	word ptr [bp+4h],10h
	jle	43FCh

l0800_43ED:
	cmp	word ptr [bp+6h],4h
	jnz	43FCh

l0800_43F3:
	mov	cx,[bx+9B78h]
	add	cx,7h
	jmp	4400h

l0800_43FC:
	mov	cx,[bx+9B7Ah]

l0800_4400:
	mov	bx,[bp+4h]
	add	bx,7B2h
	test	bl,3h
	jz	440Dh

l0800_440C:
	dec	cx

l0800_440D:
	mov	bx,[bp+4h]
	inc	bx
	sar	bx,1h
	sar	bx,1h
	add	bx,cx
	mov	ax,16Dh
	mul	word ptr [bp+4h]
	add	ax,bx
	add	ax,4h
	xor	dx,dx
	mov	bx,7h
	div	bx
	sub	cx,dx
	mov	ax,[bp+8h]
	cmp	word ptr [bp+6h],4h
	jnz	4442h

l0800_4434:
	cmp	ax,cx
	ja	444Eh

l0800_4438:
	jnz	4453h

l0800_443A:
	cmp	byte ptr [bp+0Ah],2h
	jc	4453h

l0800_4440:
	jmp	444Eh

l0800_4442:
	cmp	ax,cx
	jc	444Eh

l0800_4446:
	jnz	4453h

l0800_4448:
	cmp	byte ptr [bp+0Ah],1h
	ja	4453h

l0800_444E:
	mov	ax,1h
	jmp	4455h

l0800_4453:
	xor	ax,ax

l0800_4455:
	pop	si
	pop	bp
	ret	8h
0800:445A                               58 0E 50 55 8B EC           X.PU..
0800:4460 8B 4E 06 83 F9 FF 74 5C C4 5E 08 26 83 3F 00 7D .N....t\.^.&.?.}
0800:4470 05 B8 FF FF EB 50 C4 5E 08 26 83 67 02 DF 26 FF .....P.^.&.g..&.
0800:4480 07 26 8B 07 3D 01 00 7E 1D 26 FF 4F 0C 53 06 26 .&..=..~.&.O.S.&
0800:4490 8E 47 0E 8C C0 07 5B 26 8B 5F 0C 8A D1 8E C0 26 .G....[&._.....&
0800:44A0 88 17 8A C2 EB 1A 8B 46 0A 8B 56 08 83 C2 05 C4 .......F..V.....
0800:44B0 5E 08 26 89 47 0E 26 89 57 0C 8A C1 26 88 47 05 ^.&.G.&.W...&.G.
0800:44C0 B4 00 EB 02 8B C1 5D CB                         ......].       

;; fn0800_44C8: 0800:44C8
;;   Called from:
;;     0800:2CB2 (in fn0800_2C08)
;;     0800:4655 (in fn0800_4655)
fn0800_44C8 proc
	push	bp
	mov	bp,sp
	sub	sp,8Eh
	push	si
	push	di
	mov	di,[bp+6h]
	cmp	di,[9980h]
	jc	44E4h

l0800_44DA:
	mov	ax,6h
	push	ax
	call	05ADh
	jmp	4613h

l0800_44E4:
	mov	ax,[bp+0Ch]
	inc	ax
	cmp	ax,2h
	jnc	44F2h

l0800_44ED:
	xor	ax,ax
	jmp	4613h

l0800_44F2:
	mov	bx,di
	shl	bx,1h
	test	word ptr [bx+9982h],800h
	jz	4511h

l0800_44FE:
	mov	ax,2h
	push	ax
	xor	ax,ax
	xor	dx,dx
	push	ax
	push	dx
	push	di
	nop
	push	cs
	call	06ABh
	add	sp,8h

l0800_4511:
	mov	bx,di
	shl	bx,1h
	test	word ptr [bx+9982h],4000h
	jnz	4532h

l0800_451D:
	push	word ptr [bp+0Ch]
	push	word ptr [bp+0Ah]
	push	word ptr [bp+8h]
	push	di
	nop
	push	cs
	call	4619h
	add	sp,8h
	jmp	4613h

l0800_4532:
	mov	bx,di
	shl	bx,1h
	and	word ptr [bx+9982h],0FDFFh
	mov	ax,[bp+0Ah]
	mov	dx,[bp+8h]
	mov	[bp-0Ah],ax
	mov	[bp-0Ch],dx
	mov	ax,[bp+0Ch]
	mov	[bp-6h],ax
	jmp	45C5h

l0800_4550:
	dec	word ptr [bp-6h]
	les	bx,[bp-0Ch]
	inc	word ptr [bp-0Ch]
	mov	al,es:[bx]
	mov	[bp-7h],al
	cmp	al,0Ah
	jnz	456Dh

l0800_4563:
	les	bx,[bp-4h]
	mov	byte ptr es:[bx],0Dh
	inc	word ptr [bp-4h]

l0800_456D:
	les	bx,[bp-4h]
	mov	al,[bp-7h]
	mov	es:[bx],al
	inc	word ptr [bp-4h]
	lea	ax,[bp+0FF72h]
	mov	dx,[bp-4h]
	xor	bx,bx
	sub	dx,ax
	sbb	bx,0h
	or	bx,bx
	jl	45CFh

l0800_458B:
	jnz	4593h

l0800_458D:
	cmp	dx,80h
	jc	45CFh

l0800_4593:
	lea	ax,[bp+0FF72h]
	mov	si,[bp-4h]
	xor	dx,dx
	sub	si,ax
	sbb	dx,0h
	push	si
	push	ss
	push	ax
	push	di
	nop
	push	cs
	call	4619h
	add	sp,8h
	mov	dx,ax
	cmp	ax,si
	jz	45C5h

l0800_45B3:
	cmp	dx,0FFh
	jnz	45BDh

l0800_45B8:
	mov	ax,0FFFFh
	jmp	460Eh

l0800_45BD:
	mov	ax,[bp+0Ch]
	sub	ax,[bp-6h]
	jmp	460Ah

l0800_45C5:
	lea	ax,[bp+0FF72h]
	mov	[bp-2h],ss
	mov	[bp-4h],ax

l0800_45CF:
	cmp	word ptr [bp-6h],0h
	jz	45D8h

l0800_45D5:
	jmp	4550h

l0800_45D8:
	lea	ax,[bp+0FF72h]
	mov	si,[bp-4h]
	xor	dx,dx
	sub	si,ax
	sbb	dx,0h
	mov	ax,si
	or	ax,ax
	jbe	4610h

l0800_45EC:
	push	si
	push	ss
	lea	ax,[bp+0FF72h]
	push	ax
	push	di
	nop
	push	cs
	call	4619h
	add	sp,8h
	mov	dx,ax
	cmp	ax,si
	jz	4610h

l0800_4602:
	cmp	dx,0FFh
	jz	45B8h

l0800_4607:
	mov	ax,[bp+0Ch]

l0800_460A:
	add	ax,dx
	sub	ax,si

l0800_460E:
	jmp	4613h

l0800_4610:
	mov	ax,[bp+0Ch]

l0800_4613:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf

;; fn0800_4619: 0800:4619
;;   Called from:
;;     0800:395E (in fn0800_380A)
;;     0800:397D (in fn0800_380A)
;;     0800:4528 (in fn0800_44C8)
;;     0800:45A6 (in fn0800_44C8)
;;     0800:45F5 (in fn0800_44C8)
fn0800_4619 proc
	push	bp
	mov	bp,sp
	mov	bx,[bp+6h]
	shl	bx,1h
	test	word ptr [bx+9982h],1h
	jz	462Fh

l0800_4629:
	mov	ax,5h
	push	ax
	jmp	4650h

l0800_462F:
	push	ds
	mov	ah,40h
	mov	bx,[bp+6h]
	mov	cx,[bp+0Ch]
	lds	dx,[bp+8h]
	int	21h
	pop	ds
	jc	464Fh

l0800_4640:
	push	ax
	mov	bx,[bp+6h]
	shl	bx,1h
	or	word ptr [bx+9982h],1000h
	pop	ax
	jmp	4653h

l0800_464F:
	push	ax

l0800_4650:
	call	05ADh

l0800_4653:
	pop	bp
	retf

;; fn0800_4655: 0800:4655
;;   Called from:
;;     0E31:0043 (in fn0E31_0002)
;;     0E31:0055 (in fn0E31_0002)
;;     0E31:0080 (in fn0E31_0002)
;;     0F2B:15A6 (in fn0F2B_153F)
;;     0F2B:15BD (in fn0F2B_153F)
;;     0F2B:15D7 (in fn0F2B_153F)
;;     0F2B:15F1 (in fn0F2B_153F)
;;     0F2B:160B (in fn0F2B_153F)
;;     0F2B:1625 (in fn0F2B_153F)
;;     0F2B:163F (in fn0F2B_153F)
;;     0F2B:1659 (in fn0F2B_153F)
;;     0F2B:1677 (in fn0F2B_153F)
fn0800_4655 proc
	jmp	44C8h
0800:4658                         55 8B EC 83 EC 04 56 33         U.....V3
0800:4660 F6 8C 5E FE C7 46 FC F0 97 3B 36 80 99 73 21 C4 ..^..F...;6..s!.
0800:4670 5E FC 26 F7 47 02 03 00 74 0B FF 76 FE 53 90 0E ^.&.G...t..v.S..
0800:4680 E8 CD E4 59 59 83 46 FC 14 46 3B 36 80 99 72 DF ...YY.F..F;6..r.
0800:4690 5E 8B E5 5D CB 55 8B EC 83 EC 04 56 BE 04 00 8C ^..].U.....V....
0800:46A0 5E FE C7 46 FC F0 97 EB 1B C4 5E FC 26 F7 47 02 ^..F......^.&.G.
0800:46B0 03 00 74 0B FF 76 FE 53 90 0E E8 4B E5 59 59 4E ..t..v.S...K.YYN
0800:46C0 83 46 FC 14 0B F6 75 E1 5E 8B E5 5D CB          .F....u.^..].  

;; fn0800_46CD: 0800:46CD
;;   Called from:
;;     2476:0590 (in fn2476_0568)
fn0800_46CD proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	mov	dx,ds
	les	di,[bp+6h]
	lds	si,[bp+0Ah]
	mov	cx,[bp+0Eh]
	shr	cx,1h
	cld

l0800_46E0:
	rep movsw

l0800_46E2:
	jnc	46E5h

l0800_46E4:
	movsb

l0800_46E5:
	mov	ds,dx
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]
	pop	di
	pop	si
	pop	bp
	retf
0800:46F1    55 8B EC 57 C4 7E 06 8B 4E 0A 8A 46 0C 8A E0  U..W.~..N..F...
0800:4700 FC F7 C7 01 00 74 04 E3 09 AA 49 D1 E9 F3 AB 73 .....t....I....s
0800:4710 01 AA 5F 5D CB 55 8B EC 8A 46 0A 50 FF 76 0C FF .._].U...F.P.v..
0800:4720 76 08 FF 76 06 0E E8 C8 FF 83 C4 08 8B 56 08 8B v..v.........V..
0800:4730 46 06 5D CB 55 8B EC 56 57 1E 8B 4E 0C 8B 5E 0A F.].U..VW..N..^.
0800:4740 8B 56 08 8B 46 06 E8 C4 C0 73 06 FD B8 01 00 EB .V..F....s......
0800:4750 03 FC 33 C0 C5 76 06 C4 7E 0A 8B 4E 0E 0B C0 74 ..3..v..~..N...t
0800:4760 06 03 F1 4E 03 F9 4F F7 C7 01 00 74 04 E3 11 A4 ...N..O....t....
0800:4770 49 2B F0 2B F8 D1 E9 F3 A5 73 05 03 F0 03 F8 A4 I+.+.....s......
0800:4780 FC 1F 5F 5E 5D CB 55 8B EC FF 76 0E FF 76 08 FF .._^].U...v..v..
0800:4790 76 06 FF 76 0C FF 76 0A 0E E8 98 FF 83 C4 0A 8B v..v..v.........
0800:47A0 56 08 8B 46 06 5D CB                            V..F.].        

;; fn0800_47A7: 0800:47A7
;;   Called from:
;;     268D:08BE (in fn268D_086A)
fn0800_47A7 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	mov	dx,ds
	cld
	xor	ax,ax
	mov	bx,ax
	les	di,[bp+0Ah]
	mov	si,di
	xor	al,al
	mov	cx,0FFFFh

l0800_47BD:
	repne scasb

l0800_47BF:
	not	cx
	mov	di,si
	lds	si,[bp+6h]

l0800_47C6:
	rep cmpsb

l0800_47C8:
	mov	al,[si-1h]
	mov	bl,es:[di-1h]
	sub	ax,bx
	mov	ds,dx
	pop	di
	pop	si
	pop	bp
	retf

;; fn0800_47D7: 0800:47D7
;;   Called from:
;;     268D:0877 (in fn268D_086A)
fn0800_47D7 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	cld
	les	di,[bp+0Ah]
	mov	si,di
	xor	al,al
	mov	cx,0FFFFh

l0800_47E7:
	repne scasb

l0800_47E9:
	not	cx
	push	ds
	mov	ax,es
	mov	ds,ax
	les	di,[bp+6h]

l0800_47F3:
	rep movsb

l0800_47F5:
	pop	ds
	mov	dx,[bp+8h]
	mov	ax,[bp+6h]
	pop	di
	pop	si
	pop	bp
	retf
