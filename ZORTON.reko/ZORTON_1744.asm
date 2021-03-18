;;; Segment 1744 (1744:0000)
1744:0000 5A 66 59 0F A1 0F A9 5D C9 CB                   ZfY....]..     

;; fn1744_000A: 1744:000A
;;   Called from:
;;     0CE0:0A8B (in fn0CE0_08FC)
fn1744_000A proc
	enter	4h,0h
	push	52h
	call	far 0800h:07B4h
	pop	cx
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	cmp	dword ptr [bp-4h],0h
	jz	0053h

l1744_0023:
	les	bx,[bp-4h]
	xor	eax,eax
	mov	es:[bx+4h],eax
	mov	es:[bx],eax
	mov	dword ptr es:[bx+8h],0h
	mov	word ptr es:[bx+10h],0h
	mov	eax,[bp+6h]
	mov	es:[bx+0Ch],eax
	mov	dword ptr es:[bx+8h],0h

l1744_0053:
	mov	dx,[bp-2h]
	mov	ax,[bp-4h]
	leave
	retf

;; fn1744_005B: 1744:005B
;;   Called from:
;;     0CE0:0C07 (in fn0CE0_08FC)
fn1744_005B proc
	enter	6h,0h
	les	bx,[bp+0Ah]
	cmp	dword ptr es:[bx],0h
	jnz	0099h

l1744_0069:
	mov	eax,[bp+6h]
	mov	es:[bx],eax
	jmp	007Fh

l1744_0073:
	les	bx,[bp+6h]
	mov	eax,es:[bx+24h]
	mov	[bp+6h],eax

l1744_007F:
	les	bx,[bp+6h]
	cmp	dword ptr es:[bx+24h],0h
	jnz	0073h

l1744_008A:
	les	bx,[bp+0Ah]
	mov	eax,[bp+6h]
	mov	es:[bx+4h],eax
	jmp	016Fh

l1744_0099:
	les	bx,[bp+0Ah]
	mov	eax,es:[bx]
	mov	[bp-4h],eax
	mov	byte ptr [bp-5h],0h

l1744_00A8:
	les	bx,[bp-4h]
	mov	ax,es:[bx+8h]
	les	bx,[bp+6h]
	cmp	ax,es:[bx+8h]
	jle	010Ch

l1744_00B8:
	les	bx,[bp-4h]
	mov	eax,es:[bx+28h]
	les	bx,[bp+6h]
	mov	es:[bx+28h],eax
	mov	eax,[bp-4h]
	mov	es:[bx+24h],eax
	les	bx,[bp-4h]
	cmp	dword ptr es:[bx+28h],0h
	jnz	00E9h

l1744_00DC:
	les	bx,[bp+0Ah]
	mov	eax,[bp+6h]
	mov	es:[bx],eax
	jmp	00FEh

l1744_00E9:
	les	bx,[bp-4h]
	les	bx,es:[bx+28h]
	mov	ax,[bp+8h]
	mov	dx,[bp+6h]
	mov	es:[bx+26h],ax
	mov	es:[bx+24h],dx

l1744_00FE:
	les	bx,[bp-4h]
	mov	eax,[bp+6h]
	mov	es:[bx+28h],eax
	jmp	015Fh

l1744_010C:
	les	bx,[bp-4h]
	cmp	dword ptr es:[bx+24h],0h
	jz	0122h

l1744_0117:
	mov	eax,es:[bx+24h]
	mov	[bp-4h],eax
	jmp	0163h

l1744_0122:
	les	bx,[bp+6h]
	mov	eax,[bp-4h]
	mov	es:[bx+28h],eax
	les	bx,[bp-4h]
	mov	eax,[bp+6h]
	mov	es:[bx+24h],eax
	jmp	0148h

l1744_013C:
	les	bx,[bp+6h]
	mov	eax,es:[bx+24h]
	mov	[bp+6h],eax

l1744_0148:
	les	bx,[bp+6h]
	cmp	dword ptr es:[bx+24h],0h
	jnz	013Ch

l1744_0153:
	les	bx,[bp+0Ah]
	mov	eax,[bp+6h]
	mov	es:[bx+4h],eax

l1744_015F:
	mov	byte ptr [bp-5h],1h

l1744_0163:
	mov	al,[bp-5h]
	mov	ah,0h
	or	ax,ax
	jnz	016Fh

l1744_016C:
	jmp	00A8h

l1744_016F:
	leave
	retf
1744:0171    C8 D0 00 00 56 C4 5E 06 66 26 8B 07 66 89 46  ....V.^.f&..f.F
1744:0180 F0 C7 46 FE 00 00 EB 14 8B 5E FE 6B DB 06 8D 86 ..F......^.k....
1744:0190 34 FF 03 D8 36 C7 07 00 00 FF 46 FE 83 7E FE 20 4...6.....F..~. 
1744:01A0 7C E6 B8 10 00 89 46 F8 89 46 FA 8B 5E F8 6B DB |.....F..F..^.k.
1744:01B0 06 8D 86 34 FF 03 D8 C4 76 F0 26 8B 44 08 36 89 ...4....v.&.D.6.
1744:01C0 07 8B 5E F8 6B DB 06 8D 86 30 FF 03 D8 8B 46 F2 ..^.k....0....F.
1744:01D0 8B 56 F0 36 89 47 02 36 89 17 E9 1C 01 C4 5E F0 .V.6.G.6......^.
1744:01E0 26 F7 47 1A 18 00 74 03 E9 0E 01 8B 5E F8 6B DB &.G...t.....^.k.
1744:01F0 06 8D 86 34 FF 03 D8 36 8B 07 3B 46 FC 7C 14 FF ...4...6..;F.|..
1744:0200 4E F8 8B 5E F8 6B DB 06 8D 86 34 FF 03 D8 8B 46 N..^.k....4....F
1744:0210 FC EB AB 8B 5E FA 6B DB 06 8D 86 34 FF 03 D8 36 ....^.k....4...6
1744:0220 8B 07 3B 46 FC 7F 1A FF 46 FA 8B 5E FA 6B DB 06 ..;F....F..^.k..
1744:0230 8D 86 34 FF 03 D8 8B 46 FC 36 89 07 8B 5E FA EB ..4....F.6...^..
1744:0240 83 C7 46 FE 00 00 8B 46 FA 89 46 F6 FF 46 FE FF ..F....F..F..F..
1744:0250 4E F6 8B 5E F6 6B DB 06 8D 86 34 FF 03 D8 36 8B N..^.k....4...6.
1744:0260 07 3B 46 FC 7F E6 8B 46 FA 89 46 F6 8B 46 FE 89 .;F....F..F..F..
1744:0270 46 F4 8B 5E F6 6B DB 06 8D 86 34 FF 03 D8 36 8B F..^.k....4...6.
1744:0280 07 8B 5E FA 03 5E FE 6B DB 06 8D 96 34 FF 03 DA ..^..^.k....4...
1744:0290 36 89 07 8B 5E F6 6B DB 06 8D 86 30 FF 03 D8 36 6...^.k....0...6
1744:02A0 8B 47 02 36 8B 17 8B 5E FA 03 5E FE 6B DB 06 8D .G.6...^..^.k...
1744:02B0 8E 30 FF 03 D9 36 89 47 02 36 89 17 FF 4E FE FF .0...6.G.6...N..
1744:02C0 4E F6 83 7E FE 00 75 AA 8B 5E F6 6B DB 06 8D 86 N..~..u..^.k....
1744:02D0 3A FF 03 D8 8B 46 FC 36 89 07 8B 5E F6 6B DB 06 :....F.6...^.k..
1744:02E0 8D 86 36 FF 03 D8 8B 46 F2 8B 56 F0 36 89 47 02 ..6....F..V.6.G.
1744:02F0 36 89 17 8B 46 F4 01 46 FA C4 5E F0 26 8B 47 26 6...F..F..^.&.G&
1744:0300 26 8B 57 24 89 46 F2 8E C0 89 56 F0 8B DA 26 8B &.W$.F....V...&.
1744:0310 47 08 89 46 FC 66 83 7E F0 00 74 03 E9 BE FE 8B G..F.f.~..t.....
1744:0320 5E F8 6B DB 06 8D 86 30 FF 03 D8 36 8B 47 02 36 ^.k....0...6.G.6
1744:0330 8B 17 C4 5E 06 26 89 47 02 26 89 17 8B 5E F8 6B ...^.&.G.&...^.k
1744:0340 DB 06 8D 86 30 FF 03 D8 36 C4 1F 26 C7 47 2A 00 ....0...6..&.G*.
1744:0350 00 26 C7 47 28 00 00 8B 5E F8 6B DB 06 8D 86 36 .&.G(...^.k....6
1744:0360 FF 03 D8 36 8B 47 02 36 8B 17 8B 5E F8 6B DB 06 ...6.G.6...^.k..
1744:0370 8D 8E 30 FF 03 D9 36 8B 1F 26 89 47 26 26 89 57 ..0...6..&.G&&.W
1744:0380 24 8B 46 F8 40 89 46 FE EB 53 8B 5E FE 6B DB 06 $.F.@.F..S.^.k..
1744:0390 8D 86 2A FF 03 D8 36 8B 47 02 36 8B 17 8B 5E FE ..*...6.G.6...^.
1744:03A0 6B DB 06 8D 8E 30 FF 03 D9 36 C4 1F 26 89 47 2A k....0...6..&.G*
1744:03B0 26 89 57 28 8B 5E FE 6B DB 06 8D 86 36 FF 03 D8 &.W(.^.k....6...
1744:03C0 36 8B 47 02 36 8B 17 8B 5E FE 6B DB 06 03 D9 36 6.G.6...^.k....6
1744:03D0 8B 1F 26 89 47 26 26 89 57 24 FF 46 FE 8B 46 FE ..&.G&&.W$.F..F.
1744:03E0 3B 46 FA 7C A5 8B 5E FA 6B DB 06 8D 86 30 FF 03 ;F.|..^.k....0..
1744:03F0 D8 36 8B 47 02 36 8B 17 89 46 F2 89 56 F0 8B 5E .6.G.6...F..V..^
1744:0400 FA 6B DB 06 8D 86 2A FF 03 D8 36 8B 47 02 36 8B .k....*...6.G.6.
1744:0410 17 C4 5E F0 26 89 47 2A 26 89 57 28 66 26 C7 47 ..^.&.G*&.W(f&.G
1744:0420 24 00 00 00 00 EB 0C C4 5E F0 66 26 8B 47 24 66 $.......^.f&.G$f
1744:0430 89 46 F0 C4 5E F0 66 26 83 7F 24 00 75 E9 C4 5E .F..^.f&..$.u..^
1744:0440 06 66 8B 46 F0 66 26 89 47 04 5E C9 CB          .f.F.f&.G.^..  

;; fn1744_044D: 1744:044D
;;   Called from:
;;     0CE0:0210 (in fn0CE0_0170)
;;     0CE0:02DE (in fn0CE0_023E)
;;     0CE0:03A6 (in fn0CE0_030C)
;;     0CE0:046E (in fn0CE0_03D4)
;;     0CE0:0C65 (in fn0CE0_08FC)
fn1744_044D proc
	enter	8h,0h
	les	bx,[bp+6h]
	cmp	word ptr es:[bx+10h],0h
	jz	0467h

l1744_045B:
	push	word ptr [bp+8h]
	push	bx
	call	far 16CCh:02B2h
	add	sp,4h

l1744_0467:
	les	bx,[bp+6h]
	mov	eax,es:[bx]
	jmp	04FEh

l1744_0471:
	les	bx,[bp-4h]
	test	word ptr es:[bx+1Ah],18h
	jz	047Fh

l1744_047C:
	jmp	04F6h
1744:047E                                           90                  .

l1744_047F:
	cmp	dword ptr es:[bx+30h],0h
	jz	04B1h

l1744_0487:
	mov	eax,es:[bx+30h]
	jmp	04A6h

l1744_048E:
	push	dword ptr [bp+6h]
	push	dword ptr [bp-8h]
	call	far 16CCh:001Ch
	add	sp,8h
	les	bx,[bp-8h]
	mov	eax,es:[bx+24h]

l1744_04A6:
	mov	[bp-8h],eax
	cmp	dword ptr [bp-8h],0h
	jnz	048Eh

l1744_04B1:
	push	dword ptr [bp+6h]
	push	dword ptr [bp-4h]
	call	far 16CCh:001Ch
	add	sp,8h
	les	bx,[bp-4h]
	cmp	dword ptr es:[bx+2Ch],0h
	jz	04F6h

l1744_04CC:
	mov	eax,es:[bx+30h]
	jmp	04EBh

l1744_04D3:
	push	dword ptr [bp+6h]
	push	dword ptr [bp-8h]
	call	far 16CCh:001Ch
	add	sp,8h
	les	bx,[bp-8h]
	mov	eax,es:[bx+24h]

l1744_04EB:
	mov	[bp-8h],eax
	cmp	dword ptr [bp-8h],0h
	jnz	04D3h

l1744_04F6:
	les	bx,[bp-4h]
	mov	eax,es:[bx+24h]

l1744_04FE:
	mov	[bp-4h],eax
	cmp	dword ptr [bp-4h],0h
	jz	050Ch

l1744_0509:
	jmp	0471h

l1744_050C:
	leave
	retf
1744:050E                                           C8 02               ..
1744:0510 00 00 C4 5E 0C 66 26 83 7F 08 00 75 54 66 6A 40 ...^.f&....uTfj@
1744:0520 9A 38 1D 00 08 83 C4 04 C4 5E 0C 26 89 57 0A 26 .8.......^.&.W.&
1744:0530 89 47 08 66 26 83 7F 08 00 75 0C 1E 68 9A 23 9A .G.f&....u..h.#.
1744:0540 B6 04 3F 26 83 C4 04 C7 46 FE 00 00 EB 1D C4 5E ..?&....F......^
1744:0550 0C 26 C4 5F 08 8B 46 FE C1 E0 02 03 D8 26 C7 47 .&._..F......&.G
1744:0560 02 00 00 26 C7 07 00 00 FF 46 FE 83 7E FE 10 7C ...&.....F..~..|
1744:0570 DD C4 5E 0C 26 C4 5F 08 8B 46 06 C1 E0 02 03 D8 ..^.&._..F......
1744:0580 8B 46 0A 8B 56 08 26 89 47 02 26 89 17 C9 CB C8 .F..V.&.G.&.....
1744:0590 04 00 00 C7 46 FE FF FF C7 46 FC FF FF 8B 5E 10 ....F....F....^.
1744:05A0 0F BC C3 89 46 FE 8B 5E 0E 0F BC C3 89 46 FC C4 ....F..^.....F..
1744:05B0 5E 16 26 C4 5F 08 8B 46 FE C1 E0 02 03 D8 26 8B ^.&._..F......&.
1744:05C0 07 26 0B 47 02 74 1C FF 76 12 66 FF 76 06 C4 5E .&.G.t..v.f.v..^
1744:05D0 16 26 C4 5F 08 8B 46 FE C1 E0 02 03 D8 26 FF 1F .&._..F......&..
1744:05E0 83 C4 06 C4 5E 16 26 C4 5F 08 8B 46 FC C1 E0 02 ....^.&._..F....
1744:05F0 03 D8 26 8B 07 26 0B 47 02 74 1C FF 76 14 66 FF ..&..&.G.t..v.f.
1744:0600 76 0A C4 5E 16 26 C4 5F 08 8B 46 FC C1 E0 02 03 v..^.&._..F.....
1744:0610 D8 26 FF 1F 83 C4 06 C9 CB C8 06 00 00 C7 46 FE .&............F.
1744:0620 0F 00 C4 5E 06 26 8B 47 04 C4 5E 0A 26 3B 47 04 ...^.&.G..^.&;G.
1744:0630 7D 0D 83 66 FE FD 26 8B 47 04 C4 5E 06 EB 0E 83 }..f..&.G..^....
1744:0640 66 FE F7 C4 5E 06 26 8B 47 04 C4 5E 0A 26 2B 47 f...^.&.G..^.&+G
1744:0650 04 89 46 FA C4 5E 06 26 8B 47 06 C4 5E 0A 26 3B ..F..^.&.G..^.&;
1744:0660 47 06 7D 0D 83 66 FE FE 26 8B 47 06 C4 5E 06 EB G.}..f..&.G..^..
1744:0670 0E 83 66 FE FB C4 5E 06 26 8B 47 06 C4 5E 0A 26 ..f...^.&.G..^.&
1744:0680 2B 47 06 89 46 FC 8B 46 FC 3B 46 FA 7E 06 83 66 +G..F..F.;F.~..f
1744:0690 FE 05 EB 04 83 66 FE 0A 8B 46 FE C9 CB C8 14 00 .....f...F......
1744:06A0 00 C4 5E 06 66 26 8B 47 04 66 89 46 F4 33 C0 89 ..^.f&.G.f.F.3..
1744:06B0 46 F8 89 46 FE E9 AB 02 C4 5E F4 66 26 83 7F 30 F..F.....^.f&..0
1744:06C0 00 75 03 E9 D5 00 66 26 8B 47 30 E9 BF 00 C4 5E .u....f&.G0....^
1744:06D0 EC 26 F7 47 1A 08 00 74 03 E9 A9 00 26 83 7F 0A .&.G...t....&...
1744:06E0 00 75 03 E9 9F 00 B8 BA 28 8E C0 66 26 FF 36 86 .u......(..f&.6.
1744:06F0 A8 FF 76 EE 53 9A EB 05 CC 16 83 C4 08 09 46 FE ..v.S.........F.
1744:0700 83 7E FE 00 75 03 EB 7D 90 C4 5E EC EB 65 90 C4 .~..u..}..^..e..
1744:0710 5E F0 8B 46 FE 26 85 47 0C 74 55 FF 76 F2 53 66 ^..F.&.G.tU.v.Sf
1744:0720 FF 76 EC 0E E8 F2 FE 83 C4 08 89 46 FC 8B 46 FC .v.........F..F.
1744:0730 8B D8 8B C8 83 E3 0C 33 C0 C1 EB 02 0B C3 83 E1 .......3........
1744:0740 03 C1 E1 02 0B C1 89 46 FA 66 FF 76 06 FF 76 FA .......F.f.v..v.
1744:0750 FF 76 FC C4 5E F0 26 FF 77 0C C4 5E EC 26 FF 77 .v..^.&.w..^.&.w
1744:0760 0C 66 FF 76 F0 FF 76 EE 53 0E E8 22 FE 83 C4 14 .f.v..v.S.."....
1744:0770 C4 5E F0 66 26 8B 47 24 66 89 46 F0 66 83 7E F0 .^.f&.G$f.F.f.~.
1744:0780 00 74 02 EB 8A C4 5E EC 66 26 8B 47 24 66 89 46 .t....^.f&.G$f.F
1744:0790 EC 66 83 7E EC 00 74 03 E9 33 FF C4 5E F4 26 F7 .f.~..t..3..^.&.
1744:07A0 47 1A 08 00 74 03 E9 A9 00 26 83 7F 0A 00 75 03 G...t....&....u.
1744:07B0 E9 9F 00 B8 BA 28 8E C0 66 26 FF 36 86 A8 FF 76 .....(..f&.6...v
1744:07C0 F6 53 9A EB 05 CC 16 83 C4 08 09 46 FE 83 7E FE .S.........F..~.
1744:07D0 00 75 03 EB 7D 90 C4 5E F4 EB 65 90 C4 5E F0 8B .u..}..^..e..^..
1744:07E0 46 FE 26 85 47 0C 74 55 FF 76 F2 53 66 FF 76 F4 F.&.G.tU.v.Sf.v.
1744:07F0 0E E8 25 FE 83 C4 08 89 46 FC 8B 46 FC 8B D8 8B ..%.....F..F....
1744:0800 C8 83 E3 0C 33 C0 C1 EB 02 0B C3 83 E1 03 C1 E1 ....3...........
1744:0810 02 0B C1 89 46 FA 66 FF 76 06 FF 76 FA FF 76 FC ....F.f.v..v..v.
1744:0820 C4 5E F0 26 FF 77 0C C4 5E F4 26 FF 77 0C 66 FF .^.&.w..^.&.w.f.
1744:0830 76 F0 FF 76 F6 53 0E E8 55 FD 83 C4 14 C4 5E F0 v..v.S..U.....^.
1744:0840 66 26 8B 47 24 66 89 46 F0 66 83 7E F0 00 74 02 f&.G$f.F.f.~..t.
1744:0850 EB 8A C4 5E F4 66 26 83 7F 2C 00 75 03 E9 D5 00 ...^.f&..,.u....
1744:0860 66 26 8B 47 2C E9 BF 00 C4 5E EC 26 F7 47 1A 08 f&.G,....^.&.G..
1744:0870 00 74 03 E9 A9 00 26 83 7F 0A 00 75 03 E9 9F 00 .t....&....u....
1744:0880 B8 BA 28 8E C0 66 26 FF 36 86 A8 66 FF 76 F4 9A ..(..f&.6..f.v..
1744:0890 EB 05 CC 16 83 C4 08 09 46 FE 83 7E FE 00 75 03 ........F..~..u.
1744:08A0 EB 7D 90 C4 5E EC EB 65 90 C4 5E F0 8B 46 FE 26 .}..^..e..^..F.&
1744:08B0 85 47 0C 74 55 FF 76 F2 53 66 FF 76 EC 0E E8 58 .G.tU.v.Sf.v...X
1744:08C0 FD 83 C4 08 89 46 FC 8B 46 FC 8B D8 8B C8 83 E3 .....F..F.......
1744:08D0 0C 33 C0 C1 EB 02 0B C3 83 E1 03 C1 E1 02 0B C1 .3..............
1744:08E0 89 46 FA 66 FF 76 06 FF 76 FA FF 76 FC C4 5E F0 .F.f.v..v..v..^.
1744:08F0 26 FF 77 0C C4 5E EC 26 FF 77 0C 66 FF 76 F0 FF &.w..^.&.w.f.v..
1744:0900 76 EE 53 0E E8 88 FC 83 C4 14 C4 5E F0 66 26 8B v.S........^.f&.
1744:0910 47 24 66 89 46 F0 66 83 7E F0 00 74 02 EB 8A C4 G$f.F.f.~..t....
1744:0920 5E EC 66 26 8B 47 24 66 89 46 EC 66 83 7E EC 00 ^.f&.G$f.F.f.~..
1744:0930 74 03 E9 33 FF 8B 46 FE 09 46 F8 C7 46 FE 00 00 t..3..F..F..F...
1744:0940 B8 BA 28 8E C0 66 26 FF 36 86 A8 66 FF 76 F4 9A ..(..f&.6..f.v..
1744:0950 D6 06 CC 16 83 C4 08 C4 5E F4 66 26 8B 47 28 66 ........^.f&.G(f
1744:0960 89 46 F4 66 83 7E F4 00 74 03 E9 4B FD 8B 46 F8 .F.f.~..t..K..F.
1744:0970 C9 CB                                           ..             

;; fn1744_0972: 1744:0972
;;   Called from:
;;     0CE0:0B08 (in fn0CE0_08FC)
fn1744_0972 proc
	enter	4h,0h
	push	38h
	call	far 0800h:1D38h
	add	sp,4h
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	cmp	dword ptr [bp-4h],0h
	jnz	0995h

l1744_098E:
	xor	dx,dx
	xor	ax,ax
	jmp	0A6Dh

l1744_0995:
	cmp	word ptr [bp+12h],0h
	jz	09EBh

l1744_099B:
	cmp	word ptr [bp+14h],0h
	jz	09EBh

l1744_09A1:
	mov	ax,[bp+12h]
	imul	word ptr [bp+14h]
	add	ax,4h
	movsx	eax,ax
	push	eax
	call	far 0800h:1D38h
	add	sp,4h
	les	bx,[bp-4h]
	mov	es:[bx+14h],dx
	mov	es:[bx+12h],ax
	cmp	dword ptr es:[bx+12h],0h
	jnz	09F7h

l1744_09CB:
	push	word ptr [bp-2h]
	push	bx
	call	far 0800h:1C24h
	add	sp,4h
	push	0C8h
	push	ds
	push	23B7h
	call	far 263Fh:043Fh
	add	sp,8h
	jmp	09F7h

l1744_09EB:
	les	bx,[bp-4h]
	mov	dword ptr es:[bx+12h],0h

l1744_09F7:
	les	bx,[bp-4h]
	xor	ax,ax
	mov	es:[bx+2h],ax
	mov	es:[bx],ax
	mov	ax,[bp+6h]
	mov	es:[bx+4h],ax
	mov	ax,[bp+8h]
	mov	es:[bx+6h],ax
	mov	ax,[bp+0Ah]
	mov	es:[bx+8h],ax
	mov	ax,[bp+0Ch]
	mov	es:[bx+0Ah],ax
	mov	ax,[bp+0Eh]
	mov	es:[bx+0Ch],ax
	mov	dword ptr es:[bx+0Eh],0h
	mov	dword ptr es:[bx+16h],0h
	mov	ax,[bp+10h]
	mov	es:[bx+1Ah],ax
	mov	ax,[bp+12h]
	mov	es:[bx+1Ch],ax
	mov	ax,[bp+14h]
	mov	es:[bx+1Eh],ax
	xor	eax,eax
	mov	es:[bx+28h],eax
	mov	es:[bx+24h],eax
	xor	eax,eax
	mov	es:[bx+30h],eax
	mov	es:[bx+2Ch],eax
	mov	dx,[bp-2h]
	mov	ax,[bp-4h]

l1744_0A6D:
	leave
	retf

;; fn1744_0A6F: 1744:0A6F
;;   Called from:
;;     0CE0:12C7 (in fn0CE0_08FC)
fn1744_0A6F proc
	push	bp
	mov	bp,sp
	cmp	dword ptr [bp+6h],0h
	jz	0A9Dh

l1744_0A79:
	les	bx,[bp+6h]
	cmp	dword ptr es:[bx+12h],0h
	jz	0A91h

l1744_0A84:
	push	dword ptr es:[bx+12h]
	call	far 0800h:1C24h
	add	sp,4h

l1744_0A91:
	push	dword ptr [bp+6h]
	call	far 0800h:1C24h
	add	sp,4h

l1744_0A9D:
	pop	bp
	retf
1744:0A9F                                              C8                .
1744:0AA0 04 00 00 B8 BA 28 8E C0 66 26 FF 36 80 AA 66 68 .....(..f&.6..fh
1744:0AB0 C8 00 00 00 66 68 00 00 40 01 6A 00 9A D8 03 6E ....fh..@.j....n
1744:0AC0 21 83 C4 0E C6 46 FF 00 EB 72 90 C6 46 FE 00 EB !....F...r..F...
1744:0AD0 5D 8A 46 FF B4 00 69 C0 40 01 C4 5E 06 03 D8 8A ].F...i.@..^....
1744:0AE0 46 FE B4 00 D1 E0 03 D8 26 8A 07 88 46 FD 0A C0 F.......&...F...
1744:0AF0 74 34 B8 BA 28 8E C0 66 26 FF 36 80 AA 8A 46 FD t4..(..f&.6...F.
1744:0B00 B4 00 BA FF 00 2B D0 52 66 68 02 00 02 00 8A 46 .....+.Rfh.....F
1744:0B10 FF B4 00 D1 E0 50 8A 46 FE B4 00 D1 E0 50 9A D8 .....P.F.....P..
1744:0B20 03 6E 21 83 C4 0E 8A 46 FE FE C0 88 46 FE 80 7E .n!....F....F..~
1744:0B30 FE A0 72 9D 8A 46 FF FE C0 88 46 FF 80 7E FF 64 ..r..F....F..~.d
