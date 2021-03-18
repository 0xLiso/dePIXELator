;;; Segment 2353 (2353:0000)
2353:0000 3B 85                                           ;.             

l2331_0222:
	leave
	retf

;; fn2353_0004: 2353:0004
;;   Called from:
;;     0CE0:1178 (in fn0CE0_08FC)
;;     1ED7:0248 (in fn1ED7_000E)
;;     1ED7:0340 (in fn1ED7_000E)
;;     1F0F:1033 (in fn1F0F_0BF7)
;;     1F0F:10E3 (in fn1F0F_0BF7)
;;     1F0F:11F6 (in fn1F0F_0BF7)
fn2353_0004 proc
	enter	4h,0h
	cli
	mov	ax,28BAh
	mov	es,ax
	mov	dword ptr es:[302Ch],0h
	mov	dword ptr [86C4h],0h
	mov	dword ptr [8724h],0h
	mov	dword ptr [8744h],0h
	mov	dword ptr [8784h],0h
	mov	dword ptr [87A8h],0h
	mov	dword ptr [8764h],0h
	cmp	byte ptr [bp+6h],0h
	jz	0076h

l2353_0054:
	mov	es,ax
	mov	es:[302Eh],ds
	mov	word ptr es:[302Ch],86E8h
	mov	[bp-2h],ds
	mov	word ptr [bp-4h],86A8h
	les	bx,[bp-4h]
	mov	dword ptr es:[bx+1Ch],0h

l2353_0076:
	cmp	byte ptr [bp+8h],0h
	jz	00BBh

l2353_007C:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[302Ch],0h
	jnz	009Ah

l2353_008A:
	mov	es,ax
	mov	es:[302Eh],ds
	mov	word ptr es:[302Ch],8688h
	jmp	00A7h

l2353_009A:
	les	bx,[bp-4h]
	mov	es:[bx+1Eh],ds
	mov	word ptr es:[bx+1Ch],8688h

l2353_00A7:
	mov	[bp-2h],ds
	mov	word ptr [bp-4h],8588h
	les	bx,[bp-4h]
	mov	dword ptr es:[bx+1Ch],0h

l2353_00BB:
	cmp	byte ptr [bp+0Ah],0h
	jz	010Dh

l2353_00C1:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[302Ch],0h
	jnz	00ECh

l2353_00CF:
	mov	dx,ds
	mov	bx,8748h
	mov	es,ax
	mov	es:[302Eh],dx
	mov	ax,dx
	mov	es:[302Ch],bx
	mov	dx,bx
	mov	[bp-2h],ax
	mov	[bp-4h],dx
	jmp	0101h

l2353_00EC:
	les	bx,[bp-4h]
	mov	es:[bx+1Eh],ds
	mov	word ptr es:[bx+1Ch],8748h
	mov	[bp-2h],ds
	mov	word ptr [bp-4h],8748h

l2353_0101:
	les	bx,[bp-4h]
	mov	dword ptr es:[bx+1Ch],0h

l2353_010D:
	cmp	byte ptr [bp+0Ch],0h
	jz	015Fh

l2353_0113:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[302Ch],0h
	jnz	013Eh

l2353_0121:
	mov	dx,ds
	mov	bx,8728h
	mov	es,ax
	mov	es:[302Eh],dx
	mov	ax,dx
	mov	es:[302Ch],bx
	mov	dx,bx
	mov	[bp-2h],ax
	mov	[bp-4h],dx
	jmp	0153h

l2353_013E:
	les	bx,[bp-4h]
	mov	es:[bx+1Eh],ds
	mov	word ptr es:[bx+1Ch],8728h
	mov	[bp-2h],ds
	mov	word ptr [bp-4h],8728h

l2353_0153:
	les	bx,[bp-4h]
	mov	dword ptr es:[bx+1Ch],0h

l2353_015F:
	cmp	byte ptr [bp+0Eh],0h
	jz	01B1h

l2353_0165:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[302Ch],0h
	jnz	0190h

l2353_0173:
	mov	dx,ds
	mov	bx,8708h
	mov	es,ax
	mov	es:[302Eh],dx
	mov	ax,dx
	mov	es:[302Ch],bx
	mov	dx,bx
	mov	[bp-2h],ax
	mov	[bp-4h],dx
	jmp	01A5h

l2353_0190:
	les	bx,[bp-4h]
	mov	es:[bx+1Eh],ds
	mov	word ptr es:[bx+1Ch],8708h
	mov	[bp-2h],ds
	mov	word ptr [bp-4h],8708h

l2353_01A5:
	les	bx,[bp-4h]
	mov	dword ptr es:[bx+1Ch],0h

l2353_01B1:
	cmp	dword ptr [bp+10h],0h
	jz	01FCh

l2353_01B8:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[302Ch],0h
	jnz	01D7h

l2353_01C6:
	mov	edx,[bp+10h]
	mov	es,ax
	mov	es:[302Ch],edx
	mov	eax,edx
	jmp	01EDh

l2353_01D7:
	les	bx,[bp-4h]
	mov	eax,[bp+10h]
	mov	es:[bx+1Ch],eax
	jmp	01EDh

l2353_01E5:
	les	bx,[bp-4h]
	mov	eax,es:[bx+1Ch]

l2353_01ED:
	mov	[bp-4h],eax
	les	bx,[bp-4h]
	cmp	dword ptr es:[bx+1Ch],0h
	jnz	01E5h

l2353_01FC:
	cmp	byte ptr [bp+14h],0h
	jz	026Ch

l2353_0202:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[302Ch],0h
	jnz	022Dh

l2353_0210:
	mov	dx,ds
	mov	bx,8768h
	mov	es,ax
	mov	es:[302Eh],dx
	mov	ax,dx
	mov	es:[302Ch],bx
	mov	dx,bx
	mov	[bp-2h],ax
	mov	[bp-4h],dx
	jmp	0242h

l2353_022D:
	les	bx,[bp-4h]
	mov	es:[bx+1Eh],ds
	mov	word ptr es:[bx+1Ch],8768h
	mov	[bp-2h],ds
	mov	word ptr [bp-4h],8768h

l2353_0242:
	mov	[87AAh],ds
	mov	word ptr [87A8h],8768h
	les	bx,[bp-4h]
	mov	dword ptr es:[bx+1Ch],0h
	mov	ax,28BAh
	mov	edx,[bp-4h]
	mov	es,ax
	mov	es:[3030h],edx
	call	far 2504h:0283h

l2353_026C:
	cmp	dword ptr [bp+16h],0h
	jz	02AEh

l2353_0273:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[302Ch],0h
	jnz	0292h

l2353_0281:
	mov	edx,[bp+16h]
	mov	es,ax
	mov	es:[302Ch],edx
	mov	eax,edx
	jmp	029Eh

l2353_0292:
	les	bx,[bp-4h]
	mov	eax,[bp+16h]
	mov	es:[bx+1Ch],eax

l2353_029E:
	mov	[bp-4h],eax
	les	bx,[bp-4h]
	mov	dword ptr es:[bx+1Ch],0h

l2353_02AE:
	sti
	leave
	retf
2353:02B1    C8 04 00 00 B8 BA 28 8E C0 66 26 A1 2C 30 66  ......(..f&.,0f
2353:02C0 89 46 FC 66 3B 46 06 75 50 66 83 7E 0A 00 74 22 .F.f;F.uPf.~..t"
2353:02D0 C4 5E FC 66 26 8B 47 1C C4 5E 0A 66 26 89 47 1C .^.f&.G..^.f&.G.
2353:02E0 B8 BA 28 66 8B 56 0A 8E C0 66 26 89 16 2C 30 E9 ..(f.V...f&..,0.
2353:02F0 84 00 B8 BA 28 8E C0 26 C4 1E 2C 30 66 26 8B 47 ....(..&..,0f&.G
2353:0300 1C BA BA 28 8E C2 66 26 A3 2C 30 EB 69 C4 5E FC ...(..f&.,0.i.^.
2353:0310 66 26 8B 47 1C 66 89 46 FC C4 5E FC 66 26 8B 47 f&.G.f.F..^.f&.G
2353:0320 1C 66 3B 46 06 75 E6 66 3B 46 06 75 49 66 83 7E .f;F.u.f;F.uIf.~
2353:0330 0A 00 74 28 C4 5E FC 26 C4 5F 1C 26 8B 47 1E 26 ..t(.^.&._.&.G.&
2353:0340 8B 57 1C C4 5E 0A 26 89 47 1E 26 89 57 1C C4 5E .W..^.&.G.&.W..^
2353:0350 FC 66 8B 46 0A 66 26 89 47 1C EB 1A C4 5E FC 26 .f.F.f&.G....^.&
2353:0360 C4 5F 1C 26 8B 47 1E 26 8B 57 1C C4 5E FC 26 89 ._.&.G.&.W..^.&.
2353:0370 47 1E 26 89 57 1C C9 CB C8 08 00 00 B8 BA 28 8E G.&.W.........(.
2353:0380 C0 66 26 A1 30 30 66 89 46 FC C4 5E FC 26 8B 47 .f&.00f.F..^.&.G
2353:0390 18 89 46 FA A1 20 A5 85 46 FA 75 03 E9 73 01 A1 ..F.. ..F.u..s..
2353:03A0 86 85 3B 46 FA 75 03 E9 68 01 8B 46 FA 89 46 F8 ..;F.u..h..F..F.
2353:03B0 B9 07 00 BB 14 05 2E 8B 07 3B 46 F8 74 08 83 C3 .........;F.t...
2353:03C0 02 E2 F3 E9 16 01 2E FF 67 0E 66 83 3E A8 87 00 ........g.f.>...
2353:03D0 74 10 C4 1E A8 87 26 C7 47 0A BA 28 26 C7 47 08 t.....&.G..(&.G.
2353:03E0 0E 88 B8 BA 28 8E C0 66 26 C7 06 4F 30 00 00 00 ....(..f&..O0...
2353:03F0 00 E9 E8 00 66 83 3E A8 87 00 74 E6 C4 1E A8 87 ....f.>...t.....
2353:0400 26 C7 47 0A BA 28 26 C7 47 08 CC 87 EB D4 EB D2 &.G..(&.G.......
2353:0410 66 83 3E A8 87 00 74 CA C4 1E A8 87 26 C7 47 0A f.>...t.....&.G.
2353:0420 BA 28 26 C7 47 08 3A 88 EB B8 EB B6 66 83 3E A8 .(&.G.:.....f.>.
2353:0430 87 00 74 AE C4 1E A8 87 26 C7 47 0A BA 28 26 C7 ..t.....&.G..(&.
2353:0440 47 08 24 88 EB 9C EB 9A 66 83 3E A8 87 00 74 15 G.$.....f.>...t.
2353:0450 C4 1E A8 87 B8 BA 28 06 8E C0 66 26 A1 39 30 07 ......(...f&.90.
2353:0460 66 26 89 47 08 B8 BA 28 8E C0 26 C7 06 51 30 BA f&.G...(..&..Q0.
2353:0470 28 26 C7 06 4F 30 34 30 EB 62 66 83 3E A8 87 00 (&..O040.bf.>...
2353:0480 74 15 C4 1E A8 87 B8 BA 28 06 8E C0 66 26 A1 42 t.......(...f&.B
2353:0490 30 07 66 26 89 47 08 B8 BA 28 8E C0 26 C7 06 51 0.f&.G...(..&..Q
2353:04A0 30 BA 28 26 C7 06 4F 30 3D 30 EB 30 66 83 3E A8 0.(&..O0=0.0f.>.
2353:04B0 87 00 74 15 C4 1E A8 87 B8 BA 28 06 8E C0 66 26 ..t.......(...f&
2353:04C0 A1 4B 30 07 66 26 89 47 08 B8 BA 28 8E C0 26 C7 .K0.f&.G...(..&.
2353:04D0 06 51 30 BA 28 26 C7 06 4F 30 46 30 8B 46 FA A3 .Q0.(&..O0F0.F..
2353:04E0 86 85 B8 62 28 8E C0 26 80 3E 00 00 02 74 0A 8E ...b(..&.>...t..
2353:04F0 C0 26 80 3E 00 00 01 75 0C 66 6A 00 6A 15 9A 00 .&.>...u.fj.j...
2353:0500 00 31 23 EB 0A 66 6A 00 6A 15 9A BA 00 31 23 83 .1#..fj.j....1#.
2353:0510 C4 06 C9 CB 01 00 02 00 04 00 08 00 10 00 20 00 .............. .
2353:0520 00 01 F4 03 48 04 AC 04 7A 04 CA 03 2C 04 10 04 ....H...z...,...
2353:0530 C8 02 00 00 B8 BA 28 8E C0 66 26 83 3E 4F 30 00 ......(..f&.>O0.
2353:0540 75 03 E9 15 02 B8 BA 28 8E C0 26 C4 1E 4F 30 26 u......(..&..O0&
2353:0550 8A 07 98 0B C0 75 1F B8 62 28 8E C0 26 F6 06 00 .....u..b(..&...
2353:0560 00 20 75 12 8E C0 26 F6 06 00 00 40 75 08 66 6A . u...&....@u.fj
2353:0570 00 6A 21 E9 DC 01 B8 62 28 8E C0 26 F6 06 00 00 .j!....b(..&....
2353:0580 20 74 03 E9 D4 01 8E C0 26 F6 06 00 00 40 74 03  t......&....@t.
2353:0590 E9 C7 01 66 6A 00 6A 12 9A 00 00 31 23 83 C4 06 ...fj.j....1#...
2353:05A0 B8 62 28 8E C0 26 80 3E 00 00 01 75 03 E9 9D 01 .b(..&.>...u....
2353:05B0 B8 62 28 8E C0 26 80 3E 00 00 02 74 03 E9 9A 01 .b(..&.>...t....
2353:05C0 B8 BA 28 8E C0 26 80 3E 72 A1 00 75 03 E9 7D 01 ..(..&.>r..u..}.
2353:05D0 B8 BA 28 8E C0 66 26 83 3E 79 A1 00 75 03 E9 6C ..(..f&.>y..u..l
2353:05E0 01 8E C0 26 C4 1E 79 A1 66 26 83 7F 0C 00 74 03 ...&..y.f&....t.
2353:05F0 E9 9A 00 8E C0 26 8E 06 7B A1 26 80 7F 10 00 74 .....&..{.&....t
2353:0600 62 8E C0 26 8E 06 7B A1 26 C4 5F 11 66 26 8B 07 b..&..{.&._.f&..
2353:0610 BA BA 28 8E C2 66 26 A3 79 A1 B8 BA 28 8E C0 26 ..(..f&.y...(..&
2353:0620 C4 1E 79 A1 26 81 7F 1D 0F 1F 75 14 26 81 7F 1B ..y.&.....u.&...
2353:0630 A0 07 75 0C 8E C0 26 FF 36 7B A1 53 6A 06 EB 0D ..u...&.6{.Sj...
2353:0640 B8 BA 28 8E C0 66 26 FF 36 79 A1 6A 0E 9A 00 00 ..(..f&.6y.j....
2353:0650 31 23 83 C4 06 B8 BA 28 8E C0 26 C6 06 73 A1 01 1#.....(..&..s..
2353:0660 E9 F7 00 66 6A 00 6A 0E 9A 00 00 31 23 83 C4 06 ...fj.j....1#...
2353:0670 B8 BA 28 8E C0 26 C6 06 73 A1 01 B8 BA 28 8E C0 ..(..&..s....(..
2353:0680 66 26 C7 06 79 A1 00 00 00 00 E9 CD 00 B8 BA 28 f&..y..........(
2353:0690 8E C0 66 26 83 3E 79 A1 00 75 03 E9 BC 00 8E C0 ..f&.>y..u......
2353:06A0 66 26 FF 36 79 A1 9A 43 12 0F 1F 83 C4 04 89 46 f&.6y..C.......F
2353:06B0 FE 83 7E FE 00 75 03 E9 93 00 B8 BA 28 8E C0 26 ..~..u......(..&
2353:06C0 C4 1E 79 A1 26 8A 47 10 98 3B 46 FE 7C 6A FF 4E ..y.&.G..;F.|j.N
2353:06D0 FE B8 BA 28 8E C0 26 8E 06 7B A1 26 C4 5F 11 8B ...(..&..{.&._..
2353:06E0 46 FE C1 E0 02 03 D8 26 8B 47 02 26 8B 17 BB BA F......&.G.&....
2353:06F0 28 8E C3 26 A3 7B A1 26 89 16 79 A1 B8 BA 28 8E (..&.{.&..y...(.
2353:0700 C0 66 26 83 3E 79 A1 00 74 3D 8E C0 26 C4 1E 79 .f&.>y..t=..&..y
2353:0710 A1 26 81 7F 1D 0F 1F 74 03 E9 24 FF 26 81 7F 1B .&.....t..$.&...
2353:0720 A0 07 74 03 E9 19 FF 8E C0 26 FF 36 7B A1 53 6A ..t......&.6{.Sj
2353:0730 06 EB 1F E9 0A FF EB 0F B8 BA 28 8E C0 66 26 C7 ..........(..f&.
2353:0740 06 79 A1 00 00 00 00 66 6A 00 E9 FE FE 66 6A 00 .y.....fj....fj.
2353:0750 6A 0B 9A 00 00 31 23 83 C4 06 C9 CB             j....1#.....   

;; fn2353_075C: 2353:075C
;;   Called from:
;;     1D10:06CE (in fn1D10_02AE)
fn2353_075C proc
	enter	2h,0h
	push	si
	mov	ax,2862h
	mov	es,ax
	mov	al,es:[0000h]
	mov	ah,0h
	test	ax,1h
	jz	0774h

l2353_0771:
	jmp	0902h

l2353_0774:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[304Fh],0h
	jnz	0785h

l2353_0782:
	jmp	08DDh

l2353_0785:
	test	word ptr [8586h],2h
	jz	07C9h

l2353_078D:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[309Dh],0h
	jz	07C9h

l2353_079A:
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[304Fh]
	mov	al,es:[bx+1h]
	cbw
	mov	dx,28BAh
	mov	es,dx
	mov	es,es:[3051h]
	push	ax
	mov	al,es:[bx]
	cbw
	pop	dx
	sub	dx,ax
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[3051h]
	add	es:[bx+2h],dx

l2353_07C9:
	test	word ptr [8586h],8h
	jz	080Dh

l2353_07D1:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[309Ch],0h
	jz	080Dh

l2353_07DE:
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[304Fh]
	mov	al,es:[bx+1h]
	cbw
	mov	dx,28BAh
	mov	es,dx
	mov	es,es:[3051h]
	push	ax
	mov	al,es:[bx]
	cbw
	pop	dx
	sub	dx,ax
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[3051h]
	add	es:[bx+2h],dx

l2353_080D:
	test	word ptr [8586h],4h
	jz	0851h

l2353_0815:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[309Bh],0h
	jz	0851h

l2353_0822:
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[304Fh]
	mov	al,es:[bx+1h]
	cbw
	mov	dx,28BAh
	mov	es,dx
	mov	es,es:[3051h]
	push	ax
	mov	al,es:[bx]
	cbw
	pop	dx
	sub	dx,ax
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[3051h]
	add	es:[bx+2h],dx

l2353_0851:
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[304Fh]
	mov	al,es:[bx+1h]
	mov	dx,28BAh
	mov	es,dx
	mov	es,es:[3051h]
	sub	al,es:[bx]
	mov	[bp-1h],al
	cbw
	mov	es,dx
	mov	es,es:[3051h]
	cmp	ax,es:[bx+2h]
	jg	08A6h

l2353_087D:
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[3051h]
	mov	al,es:[bx+1h]
	mov	es,dx
	mov	es,es:[3051h]
	mov	es:[bx],al
	mov	al,[bp-1h]
	cbw
	mov	es,dx
	mov	es,es:[3051h]
	sub	es:[bx+2h],ax
	jmp	08DDh

l2353_08A6:
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[304Fh]
	push	es
	mov	es,ax
	les	si,es:[304Fh]
	mov	al,es:[si]
	pop	es
	add	al,es:[bx+2h]
	mov	dx,28BAh
	mov	es,dx
	mov	es,es:[3051h]
	mov	es:[bx],al
	mov	ax,28BAh
	mov	es,ax
	mov	es,es:[3051h]
	mov	word ptr es:[bx+2h],0h

l2353_08DD:
	mov	ax,2862h
	mov	es,ax
	cmp	byte ptr es:[0000h],2h
	jz	08F4h

l2353_08EA:
	mov	es,ax
	cmp	byte ptr es:[0000h],1h
	jnz	0934h

l2353_08F4:
	push	0h
	push	15h
	call	far 2331h:0000h
	jmp	093Eh
2353:0900 EB 32                                           .2             

l2353_0902:
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[304Fh]
	mov	al,es:[bx+1h]
	mov	dx,28BAh
	mov	es,dx
	mov	es,es:[3051h]
	mov	es:[bx],al
	mov	ax,2862h
	mov	es,ax
	cmp	byte ptr es:[0000h],2h
	jz	08F4h

l2353_092A:
	mov	es,ax
	cmp	byte ptr es:[0000h],1h
	jz	08F4h

l2353_0934:
	push	0h
	push	15h
	call	far 2331h:00BAh

l2353_093E:
	add	sp,6h
	pop	si
	leave
	retf
2353:0944             B8 62 28 8E C0 26 F6 06 00 00 20 75     .b(..&.... u
2353:0950 0A 8E C0 26 F6 06 00 00 40 74 0E 66 6A 00 6A 03 ...&....@t.fj.j.
2353:0960 9A BA 00 31 23 EB 19 8E C0 66 6A 00 6A 03 9A BA ...1#....fj.j...
2353:0970 00 31 23 83 C4 06 66 6A 00 6A 0E 9A 00 00 31 23 .1#...fj.j....1#
2353:0980 83 C4 06 CB B8 62 28 8E C0 26 80 3E 00 00 01 75 .....b(..&.>...u
2353:0990 0F 66 6A 00 6A 0E 9A 00 00 31 23 83 C4 06 EB 0D .fj.j....1#.....
2353:09A0 B8 62 28 8E C0 26 F6 06 00 00 01 74 0D 66 6A 00 .b(..&.....t.fj.
2353:09B0 6A 10 9A BA 00 31 23 83 C4 06 CB B8 62 28 8E C0 j....1#.....b(..
2353:09C0 26 F6 06 00 00 20 75 0A 8E C0 26 F6 06 00 00 40 &.... u...&....@
2353:09D0 74 0D 66 6A 00 6A 04 9A BA 00 31 23 83 C4 06 CB t.fj.j....1#....
2353:09E0 B8 62 28 8E C0 26 F6 06 00 00 40 75 31 8E C0 26 .b(..&....@u1..&
2353:09F0 80 3E 00 00 02 74 27 B8 62 28 8E C0 26 80 3E 00 .>...t'.b(..&.>.
2353:0A00 00 01 75 0D 66 6A 00 6A 0E 9A 00 00 31 23 83 C4 ..u.fj.j....1#..
2353:0A10 06 66 6A 00 6A 05 9A BA 00 31 23 83 C4 06 CB B8 .fj.j....1#.....
2353:0A20 62 28 8E C0 26 F6 06 00 00 02 75 27 B8 62 28 8E b(..&.....u'.b(.
2353:0A30 C0 26 80 3E 00 00 01 75 0D 66 6A 00 6A 0E 9A 00 .&.>...u.fj.j...
2353:0A40 00 31 23 83 C4 06 66 6A 00 6A 01 9A BA 00 31 23 .1#...fj.j....1#
