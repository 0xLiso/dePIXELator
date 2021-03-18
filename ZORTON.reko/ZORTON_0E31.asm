;;; Segment 0E31 (0E31:0000)
0E31:0000 5D CB                                           ].             

;; fn0E31_0002: 0E31:0002
;;   Called from:
;;     226D:03BC (in fn226D_00F9)
fn0E31_0002 proc
	enter	8h,0h
	push	dword ptr [bp+6h]
	call	far 0800h:0894h
	add	sp,4h
	push	1808100h
	push	dword ptr [bp+6h]
	call	far 0800h:3615h
	add	sp,8h
	mov	[bp-2h],ax
	cmp	word ptr [bp-2h],0FFh
	jnz	0039h

l0E31_002D:
	push	ds
	push	5E6h
	call	far 263Fh:03F3h
	add	sp,4h

l0E31_0039:
	push	2h
	push	ss
	lea	ax,[bp+0Eh]
	push	ax
	push	word ptr [bp-2h]
	call	far 0800h:4655h
	add	sp,8h
	push	2h
	push	ss
	lea	ax,[bp+10h]
	push	ax
	push	word ptr [bp-2h]
	call	far 0800h:4655h
	add	sp,8h
	mov	ax,[bp+0Ch]
	imul	ax,ax,140h
	add	ax,[bp+0Ah]
	mov	word ptr [bp-4h],0A000h
	mov	[bp-6h],ax
	mov	word ptr [bp-8h],0h
	jmp	0090h

l0E31_0076:
	push	word ptr [bp+0Eh]
	push	dword ptr [bp-6h]
	push	word ptr [bp-2h]
	call	far 0800h:4655h
	add	sp,8h
	add	word ptr [bp-6h],140h
	inc	word ptr [bp-8h]

l0E31_0090:
	mov	ax,[bp-8h]
	cmp	ax,[bp+10h]
	jc	0076h

l0E31_0098:
	push	word ptr [bp-2h]
	call	far 0800h:2A93h
	pop	cx
	leave
	retf
0E31:00A3          C8 1C 00 00 C7 46 F6 00 00 C7 46 F4 00    .....F....F..
0E31:00B0 00 B8 62 28 8E C0 26 A0 00 00 88 46 E7 B8 62 28 ..b(..&....F..b(
0E31:00C0 8E C0 26 C6 06 00 00 20 68 01 80 66 FF 76 06 9A ..&.... h..f.v..
0E31:00D0 15 36 00 08 83 C4 06 89 46 E4 6A 02 16 8D 46 FE .6......F.j...F.
0E31:00E0 50 FF 76 E4 9A 87 3C 00 08 83 C4 08 6A 02 16 8D P.v...<.....j...
0E31:00F0 46 FC 50 FF 76 E4 9A 87 3C 00 08 83 C4 08 6A 00 F.P.v...<.....j.
0E31:0100 8B 46 FE F7 6E FC 05 04 00 66 0F BF C0 66 50 FF .F..n....f...fP.
0E31:0110 76 E4 9A AB 06 00 08 83 C4 08 6A 02 16 8D 46 FA v.........j...F.
0E31:0120 50 FF 76 E4 9A 87 3C 00 08 83 C4 08 6A 02 16 8D P.v...<.....j...
0E31:0130 46 F8 50 FF 76 E4 9A 87 3C 00 08 83 C4 08 8B 46 F.P.v...<......F
0E31:0140 FA F7 6E F8 05 04 00 66 0F BF C0 66 50 9A 38 1D ..n....f...fP.8.
0E31:0150 00 08 83 C4 04 89 56 F2 89 46 F0 8B 46 FA F7 6E ......V..F..F..n
0E31:0160 F8 05 04 00 66 0F BF C0 66 50 9A 38 1D 00 08 83 ....f...fP.8....
0E31:0170 C4 04 89 56 EE 89 46 EC 66 83 7E F0 00 74 07 66 ...V..F.f.~..t.f
0E31:0180 83 7E EC 00 75 0F 66 6A 00 1E 68 0B 06 9A 3F 04 .~..u.fj..h...?.
0E31:0190 3F 26 83 C4 08 6A 00 8B 46 FE F7 6E FC 05 04 00 ?&...j..F..n....
0E31:01A0 66 0F BF C0 66 50 FF 76 E4 9A AB 06 00 08 83 C4 f...fP.v........
0E31:01B0 08 8B 46 FA F7 6E F8 05 04 00 50 66 FF 76 F0 FF ..F..n....Pf.v..
0E31:01C0 76 E4 9A 87 3C 00 08 83 C4 08 8B 46 FA F7 6E F8 v...<......F..n.
0E31:01D0 05 04 00 50 66 FF 76 EC FF 76 E4 9A 87 3C 00 08 ...Pf.v..v...<..
0E31:01E0 83 C4 08 FF 76 E4 9A 93 2A 00 08 59 FA 9A E8 01 ....v...*..Y....
0E31:01F0 25 24 FB FF 76 FC FF 76 FE FF 76 0C FF 76 0A 1E %$..v..v..v..v..
0E31:0200 68 18 06 0E E8 FB FD 83 C4 0C 66 FF 76 06 FF 76 h.........f.v..v
0E31:0210 0C FF 76 0A 9A 11 07 76 24 83 C4 08 FA 9A 86 02 ..v....v$.......
0E31:0220 25 24 FB 8B 46 0A 03 46 0E A3 A6 05 8B 46 0C 03 %$..F..F.....F..
0E31:0230 46 10 A3 A8 05 8B 46 0A 03 46 0E 03 46 FA A3 AA F.....F..F..F...
0E31:0240 05 8B 46 0C 03 46 10 03 46 F8 A3 AC 05 8B 46 0A ..F..F..F.....F.
0E31:0250 03 46 12 A3 C6 05 8B 46 0C 03 46 14 A3 C8 05 8B .F.....F..F.....
0E31:0260 46 0A 03 46 12 03 46 FA A3 CA 05 8B 46 0C 03 46 F..F..F.....F..F
0E31:0270 14 03 46 F8 A3 CC 05 FA 9A E8 01 25 24 FB 66 6A ..F........%$.fj
0E31:0280 00 6A 00 1E 68 C6 05 6A 00 6A 00 6A 00 6A 00 6A .j..h..j.j.j.j.j
0E31:0290 00 9A 04 00 53 23 83 C4 14 FA 9A 86 02 25 24 FB ....S#.......%$.
0E31:02A0 E9 F7 00 9A 67 01 31 23 89 56 EA 89 46 E8 66 83 ....g.1#.V..F.f.
0E31:02B0 7E E8 00 75 03 E9 E2 00 C4 5E E8 26 8A 07 B4 00 ~..u.....^.&....
0E31:02C0 3D C8 00 74 08 3D C9 00 74 64 E9 B9 00 FA 9A E8 =..t.=..td......
0E31:02D0 01 25 24 FB B8 BA 28 8E C0 66 26 FF 36 80 AA 66 .%$...(..f&.6..f
0E31:02E0 FF 76 F0 8B 46 0C 03 46 10 50 8B 46 0A 03 46 0E .v..F..F.P.F..F.
0E31:02F0 50 9A 00 00 6E 21 83 C4 0C FA 9A 86 02 25 24 FB P...n!.......%$.
0E31:0300 C7 46 F4 01 00 C7 46 F6 01 00 B8 BA 28 8E C0 26 .F....F.....(..&
0E31:0310 C7 06 84 A1 28 00 9A 67 01 31 23 0B C2 75 F7 B8 ....(..g.1#..u..
0E31:0320 BA 28 8E C0 26 83 3E 84 A1 00 7F F3 EB 6C FA 9A .(..&.>......l..
0E31:0330 E8 01 25 24 FB B8 BA 28 8E C0 66 26 FF 36 80 AA ..%$...(..f&.6..
0E31:0340 66 FF 76 EC 8B 46 0C 03 46 14 50 8B 46 0A 03 46 f.v..F..F.P.F..F
0E31:0350 12 50 9A 00 00 6E 21 83 C4 0C FA 9A 86 02 25 24 .P...n!.......%$
0E31:0360 FB C7 46 F4 00 00 C7 46 F6 01 00 B8 BA 28 8E C0 ..F....F.....(..
0E31:0370 26 C7 06 84 A1 28 00 B8 BA 28 8E C0 26 83 3E 84 &....(...(..&.>.
0E31:0380 A1 00 7F F3 EB 14 C4 5E E8 66 26 FF 77 01 26 8A .......^.f&.w.&.
0E31:0390 07 50 9A BA 00 31 23 83 C4 06 83 7E F6 00 75 03 .P...1#....~..u.
0E31:03A0 E9 00 FF FA 9A E8 01 25 24 B8 BA 28 8E C0 66 26 .......%$..(..f&
0E31:03B0 C7 06 2C 30 00 00 00 00 FB 1E 68 18 06 FF 76 0C ..,0......h...v.
0E31:03C0 FF 76 0A 9A 30 06 76 24 83 C4 08 FA 9A 86 02 25 .v..0.v$.......%
0E31:03D0 24 FB 66 FF 76 F0 9A 24 1C 00 08 83 C4 04 66 FF $.f.v..$......f.
0E31:03E0 76 EC 9A 24 1C 00 08 83 C4 04 1E 68 18 06 9A 94 v..$.......h....
0E31:03F0 08 00 08 83 C4 04 B8 62 28 8A 56 E7 8E C0 26 88 .......b(.V...&.
0E31:0400 16 00 00 8B 46 F4 C9 CB 66 6A 00 6A C8 9A BA 00 ....F...fj.j....
0E31:0410 31 23 83 C4 06 CB 66 6A 00 6A C9 9A BA 00 31 23 1#....fj.j....1#
