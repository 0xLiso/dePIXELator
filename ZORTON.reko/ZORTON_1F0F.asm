;;; Segment 1F0F (1F0F:0000)
1F0F:0000 00 03 00 10 00 14 00 C5 02 9D 02 FA 02 FE 02    ...............

;; fn1F0F_000F: 1F0F:000F
;;   Called from:
;;     268D:0327 (in fn268D_0282)
fn1F0F_000F proc
	enter	8h,0h
	mov	ax,[bp+6h]
	mov	[bp-4h],ax
	mov	ax,2862h
	mov	es,ax
	mov	byte ptr es:[0000h],2h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[8586h],2h
	call	far 23F8h:0004h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[9BE0h],0FFFFh
	mov	word ptr [bp-2h],0h
	jmp	0059h

l1F0F_0048:
	mov	ax,28BAh
	mov	bx,[bp-2h]
	mov	es,ax
	mov	byte ptr es:[bx+9BDAh],0h
	inc	word ptr [bp-2h]

l1F0F_0059:
	cmp	word ptr [bp-2h],6h
	jl	0048h

l1F0F_005F:
	cmp	word ptr [bp+6h],0h
	jz	0068h

l1F0F_0065:
	jmp	011Ch

l1F0F_0068:
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A520h],3h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A17Dh],0h
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[3096h]
	mov	dx,28BAh
	mov	es,dx
	mov	es:[0A17Eh],eax
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A182h],19h
	mov	ax,28BAh
	mov	dl,6h
	mov	es,ax
	mov	es:[3035h],dl
	mov	al,dl
	mov	dx,28BAh
	mov	es,dx
	mov	es:[3034h],al
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[3036h],12h
	mov	es,ax
	mov	byte ptr es:[3038h],0h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[303Dh],4h
	mov	es,ax
	mov	byte ptr es:[303Eh],6h
	mov	es,ax
	mov	word ptr es:[303Fh],0h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[3046h],1h
	mov	es,ax
	mov	byte ptr es:[3047h],2h
	mov	es,ax
	mov	word ptr es:[3048h],1h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[3051h],28BAh
	mov	word ptr es:[304Fh],3034h
	mov	word ptr [bp-4h],0h
	jmp	023Ah

l1F0F_011C:
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[3051h],28BAh
	mov	word ptr es:[304Fh],3034h
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[3036h],6h
	jl	014Eh

l1F0F_013C:
	mov	es,ax
	mov	byte ptr es:[3034h],6h
	mov	es,ax
	sub	word ptr es:[3036h],6h
	jmp	016Ch

l1F0F_014E:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[3036h]
	mov	dx,28BAh
	mov	es,dx
	mov	es:[3034h],al
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[3036h],0h

l1F0F_016C:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[0A520h],4h
	jz	01C5h

l1F0F_017A:
	push	28BAh
	push	87ACh
	call	far 23F8h:0055h
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[3048h],2h
	jl	01A7h

l1F0F_0195:
	mov	es,ax
	mov	byte ptr es:[3046h],2h
	mov	es,ax
	sub	word ptr es:[3048h],2h
	jmp	01C5h

l1F0F_01A7:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[3048h]
	mov	dx,28BAh
	mov	es,dx
	mov	es:[3046h],al
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[3048h],0h

l1F0F_01C5:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[0A520h],8h
	jz	021Eh

l1F0F_01D3:
	push	28BAh
	push	87EEh
	call	far 23F8h:0055h
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[303Fh],6h
	jl	0200h

l1F0F_01EE:
	mov	es,ax
	mov	byte ptr es:[303Dh],6h
	mov	es,ax
	sub	word ptr es:[303Fh],6h
	jmp	021Eh

l1F0F_0200:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[303Fh]
	mov	dx,28BAh
	mov	es,dx
	mov	es:[303Dh],al
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[303Fh],0h

l1F0F_021E:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[0A520h],3F00h
	jz	023Ah

l1F0F_022C:
	push	28BAh
	push	8830h
	call	far 23F8h:0055h
	add	sp,4h

l1F0F_023A:
	call	far 226Dh:00F9h
	push	0h
	call	far 226Dh:0656h
	pop	cx
	call	far 23F8h:00A0h
	call	far 226Dh:057Fh
	jmp	043Ch

l1F0F_0254:
	call	far 2476h:000Ah
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[8402h],0h
	call	far 226Dh:00F9h
	cli
	call	far 2425h:01E8h
	sti
	push	0h
	call	far 226Dh:0656h
	pop	cx
	call	far 23F8h:00A0h
	call	far 226Dh:057Fh
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[0A184h],1h
	jz	029Ch

l1F0F_0291:
	mov	ax,28BAh
	mov	es,ax
	add	word ptr es:[2E1Ah],15h

l1F0F_029C:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[2E1Ah],2E1Ah
	jbe	02BAh

l1F0F_02AA:
	mov	es,ax
	mov	word ptr es:[2E1Ch],28BAh
	mov	word ptr es:[2E1Ah],2D72h

l1F0F_02BA:
	cmp	word ptr [bp-4h],1Bh
	jle	0321h

l1F0F_02C0:
	call	far 23F8h:00A0h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[3034h],0h
	mov	es,ax
	mov	word ptr es:[3036h],0h
	mov	es,ax
	mov	byte ptr es:[3038h],0h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[303Dh],0h
	mov	es,ax
	mov	word ptr es:[303Fh],0h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[3046h],0h
	mov	es,ax
	mov	word ptr es:[3048h],0h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[3051h],28BAh
	mov	word ptr es:[304Fh],3034h
	call	far 226Dh:00F9h

l1F0F_0321:
	cmp	word ptr [bp-4h],1Ch
	jle	0337h

l1F0F_0327:
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[3034h],2h
	call	far 226Dh:00F9h

l1F0F_0337:
	call	far 209Fh:02A7h
	mov	ax,28BAh
	mov	dl,[bp-4h]
	mov	es,ax
	mov	es:[0A17Dh],dl
	mov	ax,[bp-4h]
	mov	[8062h],ax
	mov	bx,[bp-4h]
	imul	bx,bx,0Ch
	mov	eax,[bx+8070h]
	mov	[8064h],eax
	mov	bx,[bp-4h]
	shl	bx,2h
	mov	ax,[bx+7FECh]
	mov	dx,[bx+7FEAh]
	mov	[bp-6h],ax
	mov	[bp-8h],dx
	mov	ax,28BAh
	mov	edx,[bp-8h]
	mov	es,ax
	mov	es:[3026h],edx

l1F0F_0381:
	call	far 2331h:0167h
	or	ax,dx
	jnz	0381h

l1F0F_038A:
	call	far 2331h:0118h
	or	ax,dx
	jnz	038Ah

l1F0F_0393:
	cmp	word ptr [bp-4h],15h
	jle	0412h

l1F0F_0399:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A18Ch],0FFh
	jz	0412h

l1F0F_03A7:
	mov	es,ax
	cmp	word ptr es:[0A18Ch],8h
	jnz	03BBh

l1F0F_03B1:
	push	1h
	call	far 0CE0h:08FCh
	pop	cx
	jmp	03C9h

l1F0F_03BB:
	push	28BAh
	push	28B8h
	call	far 1D10h:02AEh
	add	sp,4h

l1F0F_03C9:
	push	0h
	push	5h
	call	far 2331h:00BAh
	add	sp,6h
	mov	dword ptr [bp-8h],0h
	dec	word ptr [bp-4h]
	mov	ax,28BAh
	mov	dl,[bp-4h]
	mov	es,ax
	mov	es:[0A17Dh],dl
	mov	ax,[bp-4h]
	mov	[8062h],ax
	mov	bx,[bp-4h]
	imul	bx,bx,0Ch
	mov	eax,[bx+8070h]
	mov	[8064h],eax
	mov	ax,28BAh
	mov	es,ax
	mov	dword ptr es:[3026h],0h

l1F0F_0412:
	push	dword ptr [bp-8h]
	nop
	push	cs
	call	057Ah
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A182h]
	cbw
	or	ax,ax
	jz	0445h

l1F0F_042C:
	mov	ax,2862h
	mov	es,ax
	cmp	byte ptr es:[0000h],10h
	jz	0445h

l1F0F_0439:
	inc	word ptr [bp-4h]

l1F0F_043C:
	cmp	word ptr [bp-4h],1Eh
	jge	0445h

l1F0F_0442:
	jmp	0254h

l1F0F_0445:
	xor	ax,ax
	leave
	retf
1F0F:0449                            C8 08 00 00 C6 46 FF          .....F.
1F0F:0450 00 C6 46 FD 05 C6 46 FE 00 EB 10 8A 46 FE 98 8B ..F...F.....F...
1F0F:0460 D8 8A 87 D0 81 00 46 FF FE 46 FE 80 7E FE 04 7C ......F..F..~..|
1F0F:0470 EA 80 7E FF 04 75 1A C6 46 FE 00 EB 0E 8A 46 FE ..~..u..F.....F.
1F0F:0480 98 8B D8 C6 87 D0 81 00 FE 46 FE 80 7E FE 04 7C .........F..~..|
1F0F:0490 EC 66 81 3E 64 80 80 00 00 00 75 37 B8 BA 28 8E .f.>d.....u7..(.
1F0F:04A0 C0 26 81 3E 8C A1 FF 00 75 29 B8 BA 28 8E C0 66 .&.>....u)..(..f
1F0F:04B0 26 F7 06 D0 83 01 00 00 00 74 0C C7 46 FA BA 28 &........t..F..(
1F0F:04C0 C7 46 F8 74 36 EB 41 C7 46 FA BA 28 C7 46 F8 01 .F.t6.A.F..(.F..
1F0F:04D0 36 EB 35 9A 3F 08 00 08 BB 04 00 99 F7 FB 80 E2 6.5.?...........
1F0F:04E0 03 88 56 FD 8A 46 FD 98 8B D8 80 BF D0 81 00 75 ..V..F.........u
1F0F:04F0 E2 8A 46 FD 98 C1 E0 02 8B D8 8B 87 8C 7F 8B 97 ..F.............
1F0F:0500 8A 7F 89 46 FA 89 56 F8 B8 62 28 8E C0 26 C6 06 ...F..V..b(..&..
1F0F:0510 00 00 02 EB 3E 66 FF 76 F8 C4 5E F8 26 FF 5F 1B ....>f.v..^.&._.
1F0F:0520 83 C4 04 89 56 FA 89 46 F8 8C D8 39 46 FA 75 07 ....V..F...9F.u.
1F0F:0530 81 7E F8 D2 A3 74 0E 8C D8 39 46 FA 75 15 81 7E .~...t...9F.u..~
1F0F:0540 F8 F3 A3 75 0E 66 FF 76 F8 90 0E E8 A9 06 83 C4 ...u.f.v........
1F0F:0550 04 EB 25 66 83 7E F8 00 74 0D B8 BA 28 8E C0 26 ..%f.~..t...(..&
1F0F:0560 80 3E 82 A1 00 75 AE 80 7E FD 04 7D 0B 8A 46 FD .>...u..~..}..F.
1F0F:0570 98 8B D8 C6 87 D0 81 01 C9 CB                   ..........     

;; fn1F0F_057A: 1F0F:057A
;;   Called from:
;;     1F0F:0417 (in fn1F0F_000F)
fn1F0F_057A proc
	enter	6h,0h
	jmp	06ACh

l1F0F_0581:
	les	bx,[bp+6h]
	test	word ptr es:[bx+19h],1h
	jz	05B4h

l1F0F_058C:
	cmp	dword ptr es:[bx+15h],0h
	jz	05A5h

l1F0F_0594:
	mov	eax,es:[bx+15h]
	mov	dx,28BAh
	mov	es,dx
	mov	es:[3026h],eax
	jmp	05B4h

l1F0F_05A5:
	mov	ax,28BAh
	mov	edx,[bp+6h]
	mov	es,ax
	mov	es:[3026h],edx

l1F0F_05B4:
	mov	ax,28BAh
	mov	edx,[bp+6h]
	mov	es,ax
	mov	es:[0A179h],edx
	mov	ax,2862h
	mov	es,ax
	mov	byte ptr es:[0000h],2h
	push	dword ptr [bp+6h]
	les	bx,[bp+6h]
	call	dword ptr es:[bx+1Bh]
	add	sp,4h
	mov	[bp+8h],dx
	mov	[bp+6h],ax
	mov	ax,ds
	cmp	[bp+8h],ax
	jnz	05F0h

l1F0F_05E9:
	cmp	word ptr [bp+6h],0A3D2h
	jz	0604h

l1F0F_05F0:
	mov	ax,ds
	cmp	[bp+8h],ax
	jz	05FAh

l1F0F_05F7:
	jmp	06ACh

l1F0F_05FA:
	cmp	word ptr [bp+6h],0A3F3h
	jz	0604h

l1F0F_0601:
	jmp	06ACh

l1F0F_0604:
	push	dword ptr [bp+6h]
	nop
	push	cs
	call	0BF7h
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[3026h]
	mov	[bp+6h],eax
	cmp	word ptr [bp+8h],28BAh
	jnz	068Dh

l1F0F_0625:
	cmp	word ptr [bp+6h],2B3Ah
	jnz	068Dh

l1F0F_062C:
	call	far 23F8h:00A0h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[3034h],2h
	mov	es,ax
	mov	word ptr es:[3036h],0h
	mov	es,ax
	mov	byte ptr es:[3038h],0h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[303Dh],0h
	mov	es,ax
	mov	word ptr es:[303Fh],0h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[3046h],0h
	mov	es,ax
	mov	word ptr es:[3048h],0h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[3051h],28BAh
	mov	word ptr es:[304Fh],3034h
	call	far 226Dh:00F9h

l1F0F_068D:
	mov	bx,[8062h]
	imul	bx,bx,0Ch
	mov	eax,[bx+8070h]
	mov	[8064h],eax
	mov	ax,2862h
	mov	es,ax
	cmp	byte ptr es:[0000h],10h
	jnz	06ACh

l1F0F_06AA:
	jmp	06C3h

l1F0F_06AC:
	cmp	dword ptr [bp+6h],0h
	jz	06C3h

l1F0F_06B3:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A182h],0h
	jz	06C3h

l1F0F_06C0:
	jmp	0581h

l1F0F_06C3:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A182h]
	cbw
	or	ax,ax
	jnz	06D4h

l1F0F_06D1:
	jmp	077Eh

l1F0F_06D4:
	inc	word ptr [8062h]
	jmp	076Ch

l1F0F_06DB:
	les	bx,[bp-4h]
	mov	al,es:[bx]
	mov	ah,0h
	mov	[bp-6h],ax
	mov	cx,8h
	mov	bx,780h

l1F0F_06EC:
	mov	ax,cs:[bx]
	cmp	ax,[bp-6h]
	jz	06FBh

l1F0F_06F4:
	add	bx,2h
	loop	06ECh

l1F0F_06F9:
	jmp	076Ch

l1F0F_06FB:
	jmp	word ptr cs:[bx+10h]
1F0F:06FF                                              66                f
1F0F:0700 68 25 00 58 00 66 68 25 00 40 00 66 68 46 00 14 h%.X.fh%.@.fhF..
1F0F:0710 00 1E 68 D7 81 9A A3 00 31 0E 83 C4 10 0B C0 74 ..h.....1......t
1F0F:0720 4B B8 62 28 8E C0 26 C6 06 00 00 10 EB 50 9A 02 K.b(..&......P..
1F0F:0730 00 C3 1C EB 37 68 BA 28 68 65 2A 9A AE 02 10 1D ....7h.(he*.....
1F0F:0740 83 C4 04 EB 39 9A A0 00 F8 23 EB 20 9A F9 00 6D ....9....#. ...m
1F0F:0750 22 EB 19 C4 5E FC 26 C4 5F 01 66 26 FF 37 9A 0F "...^.&._.f&.7..
1F0F:0760 00 C1 1B 83 C4 04 EB 04 0E E8 DD FC             ............   

l1F0F_076C:
	call	far 2331h:0167h
	mov	[bp-2h],dx
	mov	[bp-4h],ax
	or	ax,dx
	jz	077Eh

l1F0F_077B:
	jmp	06DBh

l1F0F_077E:
	leave
	retf
1F0F:0780 03 00 04 00 05 00 14 00 15 00 16 00 17 00 E8 00 ................
1F0F:0790 FF 06 7E 07 2E 07 53 07 4C 07 45 07 68 07 35 07 ..~...S.L.E.h.5.
1F0F:07A0 55 8B EC C4 5E 06 26 F7 47 19 01 00 74 28 66 26 U...^.&.G...t(f&
1F0F:07B0 83 7F 15 00 74 11 66 26 8B 47 15 BA BA 28 8E C2 ....t.f&.G...(..
1F0F:07C0 66 26 A3 26 30 EB 0F B8 BA 28 66 8B 56 06 8E C0 f&.&0....(f.V...
1F0F:07D0 66 26 89 16 26 30 B8 BA 28 66 8B 56 06 8E C0 66 f&..&0..(f.V...f
1F0F:07E0 26 89 16 79 A1 FA 9A E8 01 25 24 66 6A 00 6A 01 &..y.....%$fj.j.
1F0F:07F0 66 6A 00 6A 01 6A 00 6A 00 6A 01 6A 00 9A 04 00 fj.j.j.j.j.j....
1F0F:0800 53 23 83 C4 14 9A 86 02 25 24 FB 66 FF 76 06 9A S#......%$.f.v..
1F0F:0810 AE 02 10 1D 83 C4 04 89 56 08 89 46 06 66 83 7E ........V..F.f.~
1F0F:0820 06 00 75 03 E9 A4 00 C4 5E 06 26 81 7F 1D 0F 1F ..u.....^.&.....
1F0F:0830 74 03 E9 96 00 26 81 7F 1B A0 07 74 03 E9 8B 00 t....&.....t....
1F0F:0840 8C D8 39 46 08 75 07 81 7E 06 D2 A3 74 7D 8C D8 ..9F.u..~...t}..
1F0F:0850 39 46 08 75 07 81 7E 06 F3 A3 74 6F C4 5E 06 26 9F.u..~...to.^.&
1F0F:0860 80 7F 10 00 74 44 26 C4 5F 11 66 26 8B 07 66 89 ....tD&._.f&..f.
1F0F:0870 46 06 66 83 7E 06 00 74 52 C4 5E 06 26 81 7F 1D F.f.~..tR.^.&...
1F0F:0880 0F 1F 75 47 26 81 7F 1B A0 07 75 3F 8C D8 39 46 ..uG&.....u?..9F
1F0F:0890 08 75 07 81 7E 06 D2 A3 74 31 8C D8 39 46 08 75 .u..~...t1..9F.u
1F0F:08A0 13 81 7E 06 F3 A3 75 0C EB 21 66 C7 46 06 00 00 ..~...u..!f.F...
1F0F:08B0 00 00 EB 17 66 83 7E 06 00 74 10 B8 BA 28 8E C0 ....f.~..t...(..
1F0F:08C0 26 80 3E 82 A1 00 74 03 E9 D8 FE FA 9A E8 01 25 &.>...t........%
1F0F:08D0 24 B8 BA 28 8E C0 66 26 C7 06 2C 30 00 00 00 00 $..(..f&..,0....
1F0F:08E0 FB 8B 56 08 8B 46 06 5D CB C8 14 00 00 B8 62 28 ..V..F.]......b(
1F0F:08F0 8E C0 26 80 3E 00 00 10 75 03 E9 FB 01 C7 46 F4 ..&.>...u.....F.
1F0F:0900 00 00 EB 0F 8D 46 F6 8B 5E F4 03 D8 36 C6 07 00 .....F..^...6...
1F0F:0910 FF 46 F4 C4 5E 06 26 8A 47 10 98 3B 46 F4 7F E4 .F..^.&.G..;F...
1F0F:0920 B8 BA 28 8E C0 26 A0 82 A1 A2 14 A4 8E 46 08 26 ..(..&.......F.&
1F0F:0930 8B 47 1F 89 46 F2 26 8A 47 10 88 46 F1 26 F7 47 .G..F.&.G..F.&.G
1F0F:0940 19 40 00 74 03 FE 4E F1 C4 5E 06 26 F7 47 19 01 .@.t..N..^.&.G..
1F0F:0950 00 74 28 66 26 83 7F 15 00 74 11 66 26 8B 47 15 .t(f&....t.f&.G.
1F0F:0960 BA BA 28 8E C2 66 26 A3 26 30 EB 0F B8 BA 28 66 ..(..f&.&0....(f
1F0F:0970 8B 56 06 8E C0 66 26 89 16 26 30 C6 46 F0 00 E9 .V...f&..&0.F...
1F0F:0980 39 01 9A 3F 08 00 08 50 8A 46 F1 98 8B D8 58 99 9..?...P.F....X.
1F0F:0990 F7 FB 89 56 F4 8A 46 F1 98 3B 46 F4 7E E4 8D 46 ...V..F..;F.~..F
1F0F:09A0 F6 8B 5E F4 03 D8 36 80 3F 00 75 D6 8D 46 F6 8B ..^...6.?.u..F..
1F0F:09B0 5E F4 03 D8 36 C6 07 01 C4 5E 06 26 C4 5F 11 8B ^...6....^.&._..
1F0F:09C0 46 F4 C1 E0 02 03 D8 26 8B 47 02 26 8B 17 89 46 F......&.G.&...F
1F0F:09D0 EE 89 56 EC 66 83 7E EC 00 74 74 50 52 C4 5E EC ..V.f.~..ttPR.^.
1F0F:09E0 26 FF 5F 1B 83 C4 04 89 56 EE 89 46 EC EB 60 8C &._.....V..F..`.
1F0F:09F0 D8 39 46 EE 75 07 81 7E EC D2 A3 74 0E 8C D8 39 .9F.u..~...t...9
1F0F:0A00 46 EE 75 1D 81 7E EC F3 A3 75 16 66 FF 76 EC 90 F.u..~...u.f.v..
1F0F:0A10 0E E8 E3 01 83 C4 04 66 C7 46 EC 00 00 00 00 EB .......f.F......
1F0F:0A20 14 66 FF 76 EC C4 5E EC 26 FF 5F 1B 83 C4 04 89 .f.v..^.&._.....
1F0F:0A30 56 EE 89 46 EC B8 62 28 8E C0 26 80 3E 00 00 10 V..F..b(..&.>...
1F0F:0A40 75 0D B8 BA 28 8E C0 26 C6 06 82 A1 00 EB 07 66 u...(..&.......f
1F0F:0A50 83 7E EC 00 75 99 B8 BA 28 8E C0 26 A0 82 A1 98 .~..u...(..&....
1F0F:0A60 0B C0 75 07 33 D2 33 C0 E9 93 00 C4 5E 06 26 F7 ..u.3.3.....^.&.
1F0F:0A70 47 19 80 00 74 42 B8 BA 28 8E C0 26 A0 82 A1 3A G...tB..(..&...:
1F0F:0A80 06 14 A4 74 33 C6 46 F0 FF C7 46 F4 00 00 EB 0F ...t3.F...F.....
1F0F:0A90 8D 46 F6 8B 5E F4 03 D8 36 C6 07 00 FF 46 F4 C4 .F..^...6....F..
1F0F:0AA0 5E 06 26 8A 47 10 98 3B 46 F4 7F E4 B8 BA 28 8E ^.&.G..;F.....(.
1F0F:0AB0 C0 26 A0 82 A1 A2 14 A4 FE 46 F0 8A 46 F0 98 3B .&.......F..F..;
1F0F:0AC0 46 F2 7D 03 E9 BB FE C4 5E 06 26 F7 47 19 40 00 F.}.....^.&.G.@.
1F0F:0AD0 74 1E 26 8A 47 10 98 48 C1 E0 02 26 C4 5F 11 03 t.&.G..H...&._..
1F0F:0AE0 D8 26 8B 47 02 26 8B 17 89 46 08 89 56 06 EB 08 .&.G.&...F..V...
1F0F:0AF0 66 C7 46 06 00 00 00 00 8B 56 08 8B 46 06 C9 CB f.F......V..F...
1F0F:0B00 55 8B EC B8 BA 28 8E C0 26 A0 34 30 98 BA BA 28 U....(..&.40...(
1F0F:0B10 8E C2 26 01 06 36 30 B8 BA 28 8E C0 26 C6 06 34 ..&..60..(..&..4
1F0F:0B20 30 00 B8 BA 28 8E C0 26 C7 06 51 30 BA 28 26 C7 0...(..&..Q0.(&.
1F0F:0B30 06 4F 30 34 30 B8 BA 28 8E C0 26 C7 06 86 85 02 .O040..(..&.....
1F0F:0B40 00 FA 9A E8 01 25 24 66 6A 00 6A 01 66 6A 00 6A .....%$fj.j.fj.j
1F0F:0B50 01 6A 00 6A 00 6A 00 6A 00 9A 04 00 53 23 83 C4 .j.j.j.j....S#..
1F0F:0B60 14 9A 86 02 25 24 FB 9A F9 00 6D 22 B8 BA 28 66 ....%$....m"..(f
1F0F:0B70 8B 56 06 8E C0 66 26 89 16 79 A1 66 FF 76 06 9A .V...f&..y.f.v..
1F0F:0B80 AE 02 10 1D 83 C4 04 89 56 08 89 46 06 C4 5E 06 ........V..F..^.
1F0F:0B90 26 81 7F 1D 0F 1F 75 08 26 81 7F 1B A0 07 74 13 &.....u.&.....t.
1F0F:0BA0 C4 5E 06 26 81 7F 1D 0F 1F 75 44 26 81 7F 1B 00 .^.&.....uD&....
1F0F:0BB0 0B 75 3C 8C D8 39 46 08 75 07 81 7E 06 D2 A3 74 .u<..9F.u..~...t
1F0F:0BC0 2E 8C D8 39 46 08 75 07 81 7E 06 F3 A3 74 20 C4 ...9F.u..~...t .
1F0F:0BD0 5E 06 26 80 7F 10 00 74 0E 26 C4 5F 11 66 26 8B ^.&....t.&._.f&.
1F0F:0BE0 07 66 89 46 06 EB 08 66 C7 46 06 00 00 00 00 8B .f.F...f.F......
1F0F:0BF0 56 08 8B 46 06 5D CB                            V..F.].        

;; fn1F0F_0BF7: 1F0F:0BF7
;;   Called from:
;;     1F0F:0609 (in fn1F0F_057A)
fn1F0F_0BF7 proc
	enter	2Ah,0h
	mov	bx,[81D4h]
	shl	bx,2h
	mov	ax,[bx+0A390h]
	mov	dx,[bx+0A38Eh]
	mov	[bp-0Ah],ax
	mov	[bp-0Ch],dx
	inc	word ptr [81D4h]
	cmp	word ptr [81D4h],10h
	jle	0C21h

l1F0F_0C1B:
	mov	word ptr [81D4h],0h

l1F0F_0C21:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[309Eh]
	cbw
	or	ax,ax
	jnz	0C57h

l1F0F_0C2F:
	mov	ax,2863h
	mov	es,ax
	mov	al,es:[0004h]
	mov	[bp-0Dh],al
	cli
	call	far 2425h:01E8h
	sti
	push	0FBh
	call	far 226Dh:0656h
	pop	cx
	cmp	byte ptr [bp-0Dh],0h
	jz	0C51h

l1F0F_0C50:
	cli

l1F0F_0C51:
	call	far 2425h:0286h
	sti

l1F0F_0C57:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A182h]
	cbw
	or	ax,ax
	jnz	0C76h

l1F0F_0C65:
	push	28BAh
	push	3A0Ch
	call	far 1D10h:02AEh
	add	sp,4h
	jmp	1215h

l1F0F_0C76:
	mov	ax,ds
	cmp	[bp+8h],ax
	jz	0C80h

l1F0F_0C7D:
	jmp	1016h

l1F0F_0C80:
	cmp	word ptr [bp+6h],0A3D2h
	jz	0C8Ah

l1F0F_0C87:
	jmp	1016h

l1F0F_0C8A:
	call	far 0800h:083Fh
	and	ax,7h
	mov	[bp-16h],ax
	cmp	word ptr [7F88h],0h
	jz	0CA1h

l1F0F_0C9C:
	mov	word ptr [bp-16h],1h

l1F0F_0CA1:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[30A1h],0h
	jz	0CB3h

l1F0F_0CAE:
	mov	word ptr [bp-16h],0h

l1F0F_0CB3:
	mov	bx,[bp-16h]
	dec	bx
	cmp	bx,5h
	jbe	0CBFh

l1F0F_0CBC:
	jmp	1016h

l1F0F_0CBF:
	shl	bx,1h
	jmp	word ptr cs:[bx+1237h]

l1F0F_0CC6:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[0A17Eh],0h
	jnz	0CD7h

l1F0F_0CD4:
	jmp	1016h

l1F0F_0CD7:
	push	0h
	push	ds
	push	81E0h
	call	far 209Fh:08D2h
	add	sp,6h
	cmp	word ptr [7F88h],0h
	jnz	0CFDh

l1F0F_0CEC:
	mov	ax,28BAh
	mov	es,ax
	mov	dword ptr es:[0A17Eh],0h
	jmp	0D0Ch

l1F0F_0CFD:
	mov	ax,28BAh
	mov	es,ax
	mov	dword ptr es:[0A17Eh],1h

l1F0F_0D0C:
	push	ds
	push	81EDh
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	call	far 0800h:3DE6h
	add	sp,8h
	push	40006h
	push	5h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	push	6E012Ch
	call	far 2504h:094Dh
	add	sp,0Eh

l1F0F_0D38:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A422h],1h
	jz	0D38h

l1F0F_0D45:
	jmp	1016h

l1F0F_0D48:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[3036h],0h
	jnz	0D58h

l1F0F_0D55:
	jmp	1016h

l1F0F_0D58:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[8586h],2h
	jz	0D68h

l1F0F_0D65:
	jmp	1016h

l1F0F_0D68:
	push	0h
	push	ds
	push	81F9h
	call	far 209Fh:08D2h
	add	sp,6h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[3036h],0h
	call	far 226Dh:00F9h
	push	ds
	push	8206h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	call	far 0800h:3DE6h
	add	sp,8h
	push	40005h
	push	5h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	push	87013Ah
	call	far 2504h:094Dh
	add	sp,0Eh

l1F0F_0DB3:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A422h],1h
	jz	0DB3h

l1F0F_0DC0:
	jmp	1016h

l1F0F_0DC3:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[0A520h],4h
	jnz	0DD4h

l1F0F_0DD1:
	jmp	1016h

l1F0F_0DD4:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[8586h],4h
	jnz	0E4Ch

l1F0F_0DE1:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[3048h],0h
	jnz	0DF1h

l1F0F_0DEE:
	jmp	1016h

l1F0F_0DF1:
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[3048h],0h
	call	far 226Dh:00F9h
	push	0h
	push	ds
	push	81F9h
	call	far 209Fh:08D2h
	add	sp,6h
	push	ds
	push	8206h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	call	far 0800h:3DE6h
	add	sp,8h
	push	40005h
	push	5h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	push	87013Ah
	call	far 2504h:094Dh
	add	sp,0Eh

l1F0F_0E3C:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A422h],1h
	jz	0E3Ch

l1F0F_0E49:
	jmp	1016h

l1F0F_0E4C:
	mov	ax,28BAh
	mov	es,ax
	and	word ptr es:[0A520h],0FBh
	push	28BAh
	push	87ACh
	call	far 23F8h:01EBh
	add	sp,4h
	push	0h
	push	ds
	push	8211h
	call	far 209Fh:08D2h
	add	sp,6h
	push	ds
	push	821Dh
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	call	far 0800h:3DE6h
	add	sp,8h
	push	40004h
	push	5h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	push	290127h
	call	far 2504h:094Dh
	add	sp,0Eh

l1F0F_0E9F:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A422h],1h
	jz	0E9Fh

l1F0F_0EAC:
	jmp	1016h

l1F0F_0EAF:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[0A520h],8h
	jnz	0EC0h

l1F0F_0EBD:
	jmp	1016h

l1F0F_0EC0:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[8586h],8h
	jnz	0F38h

l1F0F_0ECD:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[303Fh],0h
	jnz	0EDDh

l1F0F_0EDA:
	jmp	1016h

l1F0F_0EDD:
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[303Fh],0h
	call	far 226Dh:00F9h
	push	0h
	push	ds
	push	81F9h
	call	far 209Fh:08D2h
	add	sp,6h
	push	ds
	push	8206h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	call	far 0800h:3DE6h
	add	sp,8h
	push	40005h
	push	5h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	push	87013Ah
	call	far 2504h:094Dh
	add	sp,0Eh

l1F0F_0F28:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A422h],1h
	jz	0F28h

l1F0F_0F35:
	jmp	1016h

l1F0F_0F38:
	mov	ax,28BAh
	mov	es,ax
	and	word ptr es:[0A520h],0F7h
	push	28BAh
	push	87EEh
	call	far 23F8h:01EBh
	add	sp,4h
	push	0h
	push	ds
	push	8227h
	call	far 209Fh:08D2h
	add	sp,6h
	push	ds
	push	8234h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	call	far 0800h:3DE6h
	add	sp,8h
	push	40003h
	push	5h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	push	290127h
	call	far 2504h:094Dh
	add	sp,0Eh

l1F0F_0F8B:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A422h],1h
	jz	0F8Bh

l1F0F_0F98:
	jmp	1016h

l1F0F_0F9A:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A18Ch],0h
	jz	1016h

l1F0F_0FA7:
	mov	es,ax
	cmp	word ptr es:[0A18Ch],0FFh
	jz	1016h

l1F0F_0FB2:
	mov	es,ax
	dec	word ptr es:[0A18Ch]
	mov	ax,es:[0A18Ch]
	or	ax,ax
	jnz	0FCFh

l1F0F_0FC1:
	push	28BAh
	push	8830h
	call	far 23F8h:01EBh
	add	sp,4h

l1F0F_0FCF:
	push	0h
	push	ds
	push	823Dh
	call	far 209Fh:08D2h
	add	sp,6h
	push	ds
	push	8249h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	call	far 0800h:3DE6h
	add	sp,8h
	push	40004h
	push	5h
	push	ss
	lea	ax,[bp-2Ah]
	push	ax
	push	290127h
	call	far 2504h:094Dh
	add	sp,0Eh

l1F0F_1009:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A422h],1h
	jz	1009h

l1F0F_1016:
	call	far 226Dh:057Fh
	cli
	call	far 2425h:01E8h
	push	0h
	push	1h
	push	0h
	push	1h
	push	0h
	push	0h
	push	1h
	push	0h
	call	far 2353h:0004h
	add	sp,14h
	call	far 2425h:0286h
	sti
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[3095h]
	cbw
	or	ax,ax
	jnz	105Bh

l1F0F_104F:
	push	dword ptr [bp-0Ch]
	call	far 1D10h:02AEh
	add	sp,4h

l1F0F_105B:
	cmp	word ptr [7F88h],0h
	jz	1065h

l1F0F_1062:
	jmp	1215h

l1F0F_1065:
	cli
	call	far 2425h:01E8h
	sti
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	8Ch
	push	0E4000Ah
	push	0Ah
	call	far 216Eh:03D8h
	add	sp,0Eh
	push	ss
	lea	ax,[bp-8h]
	push	ax
	push	ds
	push	825Eh
	push	ss
	lea	ax,[bp-4h]
	push	ax
	push	ds
	push	8253h
	call	far 263Fh:033Eh
	add	sp,10h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	dword ptr [bp-4h]
	push	3C0024h
	call	far 216Eh:01DCh
	add	sp,0Ch
	push	dword ptr [bp-4h]
	call	far 0800h:1C24h
	add	sp,4h
	cli
	push	0h
	push	1h
	push	0h
	push	1h
	push	1h
	push	1h
	push	1h
	push	1h
	call	far 2353h:0004h
	add	sp,14h
	call	far 2425h:0286h
	sti
	cmp	word ptr [7F86h],0h
	jz	10FBh

l1F0F_10F8:
	jmp	1215h

l1F0F_10FB:
	mov	ax,2862h
	mov	es,ax
	or	byte ptr es:[0000h],20h
	jmp	1205h

l1F0F_1109:
	call	far 2331h:0167h
	mov	[bp-10h],dx
	mov	[bp-12h],ax
	or	ax,dx
	jnz	111Bh

l1F0F_1118:
	jmp	11D6h

l1F0F_111B:
	les	bx,[bp-12h]
	mov	al,es:[bx]
	mov	ah,0h
	mov	[bp-14h],ax
	mov	cx,8h
	mov	bx,1217h

l1F0F_112C:
	mov	ax,cs:[bx]
	cmp	ax,[bp-14h]
	jz	113Ch

l1F0F_1134:
	add	bx,2h
	loop	112Ch

l1F0F_1139:
	jmp	11CBh

l1F0F_113C:
	jmp	word ptr cs:[bx+10h]
1F0F:1140 EB 00 B8 62 28 8E C0 26 80 26 00 00 DF E9 C5 00 ...b(..&.&......
1F0F:1150 9A 02 00 C3 1C EB 74 66 68 25 00 58 00 66 68 25 ......tfh%.X.fh%
1F0F:1160 00 40 00 66 68 46 00 14 00 1E 68 D7 81 9A A3 00 .@.fhF....h.....
1F0F:1170 31 0E 83 C4 10 0B C0 74 52 B8 62 28 8E C0 26 C6 1......tR.b(..&.
1F0F:1180 06 00 00 10 66 6A 00 C4 5E EE 26 8A 07 50 9A BA ....fj..^.&..P..
1F0F:1190 00 31 23 83 C4 06 EB 7D 9A A0 00 F8 23 EB 2C 9A .1#....}....#.,.
1F0F:11A0 F9 00 6D 22 EB 25 C4 5E EE 26 C4 5F 01 66 26 FF ..m".%.^.&._.f&.
1F0F:11B0 37 9A 0F 00 C1 1B 83 C4 04 EB 10 C7 06 86 7F 01 7...............
1F0F:11C0 00 0E E8 84 F2 C7 06 86 7F 00 00                ...........    

l1F0F_11CB:
	mov	ax,2862h
	mov	es,ax
	or	byte ptr es:[0000h],20h

l1F0F_11D6:
	mov	ax,28BAh
	mov	es,ax
	cmp	dword ptr es:[302Ch],0h
	jnz	1205h

l1F0F_11E4:
	push	0h
	push	1h
	push	0h
	push	1h
	push	1h
	push	1h
	push	1h
	push	1h
	call	far 2353h:0004h
	add	sp,14h
	cli
	call	far 2425h:0286h
	sti

l1F0F_1205:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A182h],0h
	jz	1215h

l1F0F_1212:
	jmp	1109h

l1F0F_1215:
	leave
	retf
1F0F:1217                      03 00 04 00 05 00 14 00 15        .........
1F0F:1220 00 16 00 17 00 E8 00 57 11 42 11 50 11 A6 11 9F .......W.B.P....
1F0F:1230 11 98 11 BB 11 42 11                            .....B.        
l1F0F_1237	dw	0x0CC6
l1F0F_1239	dw	0x0D48
l1F0F_123B	dw	0x0DC3
l1F0F_123D	dw	0x1016
l1F0F_123F	dw	0x0EAF
l1F0F_1241	dw	0x0F9A
1F0F:1243          C8 06 00 00 C7 46 FA 01 00 C4 5E 06 66    .....F....^.f
1F0F:1250 26 8B 47 0C 66 89 46 FC 66 83 7E FC 00 75 06 B8 &.G.f.F.f.~..u..
1F0F:1260 01 00 E9 B5 01 B8 BA 28 8E C0 26 81 3E 51 30 BA .......(..&.>Q0.
1F0F:1270 28 74 03 E9 E1 00 26 81 3E 4F 30 46 30 74 03 E9 (t....&.>O0F0t..
1F0F:1280 D5 00 E9 DF 00 B8 BA 28 8E C0 26 F7 06 86 85 08 .......(..&.....
1F0F:1290 00 74 66 C4 5E FC 26 8B 47 04 05 FC FF BA BA 28 .tf.^.&.G......(
1F0F:12A0 8E C2 26 8B 16 24 A5 83 C2 0A 3B C2 7C 03 E9 97 ..&..$....;.|...
1F0F:12B0 00 8E 46 FE 26 8B 47 06 05 04 00 BA BA 28 8E C2 ..F.&.G......(..
1F0F:12C0 26 8B 16 24 A5 83 C2 0A 3B C2 7E 7C B8 BA 28 8E &..$....;.~|..(.
1F0F:12D0 46 FE 26 8B 17 83 C2 FC 8E C0 26 39 16 26 A5 7E F.&.......&9.&.~
1F0F:12E0 67 8E 46 FE 26 8B 47 02 05 04 00 BA BA 28 8E C2 g.F.&.G......(..
1F0F:12F0 26 3B 06 26 A5 7E 51 EB 6B C4 5E FC B8 BA 28 06 &;.&.~Q.k.^...(.
1F0F:1300 8E C0 26 A1 24 A5 05 06 00 07 26 39 47 04 7D 38 ..&.$.....&9G.}8
1F0F:1310 8E 46 FE B8 BA 28 06 8E C0 26 A1 24 A5 05 06 00 .F...(...&.$....
1F0F:1320 07 26 39 47 06 7E 21 B8 BA 28 8E C0 26 A1 26 A5 .&9G.~!..(..&.&.
1F0F:1330 8E 46 FE 26 3B 07 7E 10 26 8B 47 02 BA BA 28 8E .F.&;.~.&.G...(.
1F0F:1340 C2 26 3B 06 26 A5 7F 1C FF 46 FA C4 5E FC 66 26 .&;.&....F..^.f&
1F0F:1350 8B 47 08 66 89 46 FC 66 83 7E FC 00 74 03 E9 24 .G.f.F.f.~..t..$
1F0F:1360 FF E9 B4 00 C4 5E FC 66 26 0F B7 47 0C BA BA 28 .....^.f&..G...(
1F0F:1370 8E C2 66 26 01 06 7E A1 C4 5E 06 26 81 7F 1D 0F ..f&..~..^.&....
1F0F:1380 1F 75 08 26 81 7F 1B 1C 14 74 38 C4 5E 06 26 8A .u.&.....t8.^.&.
1F0F:1390 47 10 98 0B C0 75 03 E9 C5 FE 26 80 7F 10 02 7D G....u....&....}
1F0F:13A0 03 E9 BB FE C4 5E 06 26 F7 47 19 04 00 74 64 26 .....^.&.G...td&
1F0F:13B0 8A 47 10 98 3B 46 FA 7E 5A 8B 46 FA 40 EB 5B EB .G..;F.~Z.F.@.[.
1F0F:13C0 52 EB 50 B8 BA 28 8E C0 26 C4 1E 79 A1 26 C4 5F R.P..(..&..y.&._
1F0F:13D0 11 8B 46 FA C1 E0 02 03 D8 26 8B 47 02 26 8B 17 ..F......&.G.&..
1F0F:13E0 89 46 08 89 56 06 81 7E 08 BA 28 75 0C 81 7E 06 .F..V..~..(u..~.
1F0F:13F0 CC 2A 75 05 80 0E D6 81 02 81 7E 08 BA 28 75 0C .*u.......~..(u.
1F0F:1400 81 7E 06 AB 2A 75 05 80 0E D6 81 01 80 3E D6 81 .~..*u.......>..
1F0F:1410 03 75 05 B8 02 00 EB 02 33 C0 C9 CB 55 8B EC C6 .u......3...U...
1F0F:1420 06 D6 81 00 FA 9A E8 01 25 24 66 6A 00 6A 01 66 ........%$fj.j.f
1F0F:1430 6A 00 6A 01 6A 00 6A 00 6A 01 6A 00 9A 04 00 53 j.j.j.j.j.j....S
1F0F:1440 23 83 C4 14 9A 86 02 25 24 FB 66 FF 76 06 9A AE #......%$.f.v...
1F0F:1450 02 10 1D 83 C4 04 89 56 08 89 46 06 66 83 7E 06 .......V..F.f.~.
1F0F:1460 00 74 17 B8 BA 28 8E C0 26 C4 1E 79 A1 26 C4 5F .t...(..&..y.&._
1F0F:1470 11 26 8B 57 02 26 8B 07 EB 04 33 D2 33 C0 5D CB .&.W.&....3.3.].
