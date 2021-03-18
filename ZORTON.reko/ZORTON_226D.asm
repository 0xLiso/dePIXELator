;;; Segment 226D (226D:0000)
226D:0000 0F 85 B8 FE                                     ....           

l21CC_0A14:
	pop	di
	pop	si
	pop	es
	pop	ds
	pop	bp
	leave
	retf
21CC:0A1B                                  C8 04 00 00 B8            .....
21CC:0A20 BA 28 8E C0 66 26 83 3E 4F 30 00 75 03 E9 D7 00 .(..f&.>O0.u....
21CC:0A30 8E C0 26 C4 1E 4F 30 26 8A 07 98 0B C0 75 0E B8 ..&..O0&.....u..
21CC:0A40 BA 28 8E C0 26 C6 06 74 A1 01 E9 BA 00 B8 BA 28 .(..&..t.......(
21CC:0A50 8E C0 26 C4 1E 4F 30 26 FE 0F B8 BA 28 8E C0 26 ..&..O0&....(..&
21CC:0A60 F7 06 86 85 04 00 74 0D 9A 1F 05 76 24 90 0E E8 ......t....v$...
21CC:0A70 97 00 E9 92 00 90 0E E8 8F 00 B8 BA 28 8E C0 26 ............(..&
21CC:0A80 F7 06 86 85 08 00 74 1D B8 BA 28 8E C0 26 A1 24 ......t...(..&.$
21CC:0A90 A5 05 07 00 89 46 FC B8 BA 28 8E C0 26 A1 26 A5 .....F...(..&.&.
21CC:0AA0 05 FD FF EB 19 B8 BA 28 8E C0 26 A1 24 A5 48 89 .......(..&.$.H.
21CC:0AB0 46 FC B8 BA 28 8E C0 26 A1 26 A5 05 FE FF 89 46 F...(..&.&.....F
21CC:0AC0 FE 83 7E FC 0A 7E 40 81 7E FC E1 00 7D 39 83 7E ..~..~@.~...}9.~
21CC:0AD0 FE 11 7E 33 81 7E FE 92 00 7D 2C FA 9A E8 01 25 ..~3.~...},....%
21CC:0AE0 24 FB B8 BA 28 8E C0 66 26 FF 36 80 AA 66 FF 36 $...(..f&.6..f.6
21CC:0AF0 43 A4 FF 76 FE FF 76 FC 9A DC 01 6E 21 83 C4 0C C..v..v....n!...
21CC:0B00 FA 9A 86 02 25 24 FB C9 CB                      ....%$...      

;; fn226D_00F9: 226D:00F9
;;   Called from:
;;     1D10:06D3 (in fn1D10_02AE)
;;     1ED7:01F1 (in fn1ED7_000E)
;;     1F0F:023A (in fn1F0F_000F)
;;     1F0F:0265 (in fn1F0F_000F)
;;     1F0F:031C (in fn1F0F_000F)
;;     1F0F:0332 (in fn1F0F_000F)
;;     1F0F:0688 (in fn1F0F_057A)
;;     1F0F:0D82 (in fn1F0F_0BF7)
;;     1F0F:0DFD (in fn1F0F_0BF7)
;;     1F0F:0EE9 (in fn1F0F_0BF7)
fn226D_00F9 proc
	enter	5Eh,0h
	lea	ax,[bp-5Eh]
	push	ss
	push	ax
	push	ds
	push	843Eh
	mov	cx,43h
	call	far 0800h:03F4h
	cli
	call	far 2425h:01E8h
	sti
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[8586h]
	cmp	ax,[8402h]
	jz	015Dh

l226D_0124:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	52h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A8AAh]
	add	ax,4h
	push	word ptr es:[0A8ACh]
	push	ax
	push	690036h
	push	23001Bh
	push	730124h
	call	far 216Eh:04C9h
	add	sp,16h

l226D_015D:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[8586h],2h
	jz	01E7h

l226D_016B:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8D2h]
	push	730124h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	[bp-0Eh],ds
	mov	word ptr [bp-10h],8404h
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[0A8EAh]
	mov	[bp-0Ch],eax
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[8712h],28BAh
	mov	word ptr es:[8710h],0A946h
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[0A952h]
	mov	[0A443h],eax
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[0A892h]
	mov	dx,28BAh
	mov	es,dx
	mov	es:[0A88Ah],eax
	mov	word ptr [bp-18h],28BAh
	mov	word ptr [bp-1Ah],3034h
	jmp	044Bh

l226D_01E7:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[8586h],4h
	jz	0263h

l226D_01F5:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8DEh]
	push	780125h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	[bp-0Eh],ds
	mov	word ptr [bp-10h],8434h
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[0A8EEh]
	mov	[bp-0Ch],eax
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[8712h],28BAh
	mov	word ptr es:[8710h],0A94Eh
	mov	word ptr [bp-18h],28BAh
	mov	word ptr [bp-1Ah],3046h
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[0A89Ah]
	mov	dx,28BAh
	mov	es,dx
	mov	es:[0A88Ah],eax
	jmp	044Bh

l226D_0263:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[8586h],8h
	jz	02EDh

l226D_0271:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8E2h]
	push	730128h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	[bp-0Eh],ds
	mov	word ptr [bp-10h],841Ch
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[0A8E6h]
	mov	[bp-0Ch],eax
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[8712h],28BAh
	mov	word ptr es:[8710h],0A94Ah
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[0A956h]
	mov	[0A443h],eax
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[0A896h]
	mov	dx,28BAh
	mov	es,dx
	mov	es:[0A88Ah],eax
	mov	word ptr [bp-18h],28BAh
	mov	word ptr [bp-1Ah],303Dh
	jmp	044Bh

l226D_02ED:
	mov	ax,28BAh
	mov	es,ax
	test	word ptr es:[8586h],100h
	jnz	02FEh

l226D_02FB:
	jmp	056Ah

l226D_02FE:
	mov	ax,2862h
	mov	es,ax
	test	byte ptr es:[0000h],20h
	jnz	030Eh

l226D_030B:
	jmp	056Ah

l226D_030E:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A18Ch],0FFh
	jnz	031Fh

l226D_031C:
	jmp	056Ah

l226D_031F:
	mov	es,ax
	cmp	word ptr es:[0A18Ch],8h
	jnz	032Eh

l226D_0329:
	mov	ax,1h
	jmp	0330h

l226D_032E:
	xor	ax,ax

l226D_0330:
	mov	[bp-2h],ax
	push	300h
	call	far 0800h:1D38h
	add	sp,4h
	mov	[bp-6h],dx
	mov	[bp-8h],ax
	or	ax,dx
	jnz	035Dh

l226D_034B:
	push	300h
	push	ds
	push	84EEh
	call	far 263Fh:043Fh
	add	sp,8h

l226D_035D:
	mov	dx,3C7h
	mov	al,0h
	out	dx,al
	mov	word ptr [bp-4h],0h
	jmp	03A5h

l226D_036A:
	mov	dx,3C9h
	in	al,dx
	mov	dx,[bp-4h]
	imul	dx,dx,3h
	les	bx,[bp-8h]
	add	bx,dx
	mov	es:[bx],al
	mov	dx,3C9h
	in	al,dx
	mov	dx,[bp-4h]
	imul	dx,dx,3h
	mov	bx,[bp-8h]
	add	bx,dx
	mov	es:[bx+1h],al
	mov	dx,3C9h
	in	al,dx
	mov	dx,[bp-4h]
	imul	dx,dx,3h
	mov	bx,[bp-8h]
	add	bx,dx
	mov	es:[bx+2h],al
	inc	word ptr [bp-4h]

l226D_03A5:
	cmp	word ptr [bp-4h],100h
	jl	036Ah

l226D_03AC:
	push	8C00E4h
	push	0A000Ah
	push	ds
	push	84F7h
	call	far 0E31h:0002h
	add	sp,0Ch
	push	word ptr [bp-2h]
	call	far 0CE0h:08FCh
	pop	cx
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	8Ch
	push	0E4000Ah
	push	0Ah
	call	far 216Eh:03D8h
	add	sp,0Eh
	mov	dx,3C8h
	mov	al,0h
	out	dx,al
	mov	word ptr [bp-4h],0h
	jmp	040Bh

l226D_03FB:
	les	bx,[bp-8h]
	add	bx,[bp-4h]
	mov	al,es:[bx]
	mov	dx,3C9h
	out	dx,al
	inc	word ptr [bp-4h]

l226D_040B:
	cmp	word ptr [bp-4h],300h
	jl	03FBh

l226D_0412:
	push	ds
	push	84F7h
	push	0A000Ah
	call	far 2476h:0630h
	add	sp,8h
	push	ds
	push	84F7h
	call	far 0800h:0894h
	add	sp,4h
	push	dword ptr [bp-8h]
	call	far 0800h:1C24h
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[8586h],1h
	jmp	056Ah

l226D_044B:
	mov	word ptr [bp-12h],0h
	jmp	048Bh

l226D_0452:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	dword ptr [bp-0Ch]
	mov	ax,[bp-12h]
	shl	ax,1h
	inc	ax
	shl	ax,1h
	les	bx,[bp-10h]
	add	bx,ax
	push	word ptr es:[bx]
	mov	ax,[bp-12h]
	shl	ax,1h
	shl	ax,1h
	mov	bx,[bp-10h]
	add	bx,ax
	push	word ptr es:[bx]
	call	far 216Eh:01DCh
	add	sp,0Ch
	inc	word ptr [bp-12h]

l226D_048B:
	les	bx,[bp-1Ah]
	mov	al,es:[bx]
	cbw
	cmp	ax,[bp-12h]
	jg	0452h

l226D_0497:
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[8586h]
	cmp	ax,[8402h]
	jnz	04B6h

l226D_04A6:
	mov	es,[bp-18h]
	mov	ax,es:[bx+2h]
	cmp	ax,[843Ch]
	jnz	04B6h

l226D_04B3:
	jmp	056Ah

l226D_04B6:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	52h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A8AAh]
	add	ax,4h
	push	word ptr es:[0A8ACh]
	push	ax
	push	830036h
	push	9001Bh
	push	8D0124h
	call	far 216Eh:04C9h
	add	sp,16h
	les	bx,[bp-1Ah]
	mov	ax,es:[bx+2h]
	mov	[bp-12h],ax
	mov	[843Ch],ax
	mov	word ptr [bp-16h],14h

l226D_0501:
	mov	ax,[bp-12h]
	mov	bx,0Ah
	cwd
	idiv	bx
	mov	[bp-14h],dx
	mov	ax,[bp-12h]
	cwd
	idiv	bx
	mov	[bp-12h],ax
	push	3Fh
	mov	ax,[bp-14h]
	imul	ax,ax,3Fh
	mov	dx,28BAh
	mov	es,dx
	add	ax,es:[0A8FEh]
	add	ax,4h
	push	word ptr es:[0A900h]
	push	ax
	push	ss
	lea	ax,[bp-5Ah]
	push	ax
	call	far 0800h:350Eh
	add	sp,0Ah
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	ss
	lea	ax,[bp-5Eh]
	push	ax
	push	8Dh
	mov	ax,[bp-16h]
	add	ax,124h
	push	ax
	call	far 216Eh:01DCh
	add	sp,0Ch
	sub	word ptr [bp-16h],8h
	cmp	word ptr [bp-12h],0h
	jnz	0501h

l226D_056A:
	cli
	call	far 2425h:0286h
	sti
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[8586h]
	mov	[8402h],ax
	leave
	retf

;; fn226D_057F: 226D:057F
;;   Called from:
;;     1ED7:00A9 (in fn1ED7_000E)
;;     1F0F:024C (in fn1F0F_000F)
;;     1F0F:027E (in fn1F0F_000F)
;;     1F0F:1016 (in fn1F0F_0BF7)
fn226D_057F proc
	enter	4Ch,0h
	lea	ax,[bp-4Ch]
	push	ss
	push	ax
	push	ds
	push	8481h
	mov	cx,43h
	call	far 0800h:03F4h
	cli
	call	far 2425h:01E8h
	sti
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8BAh]
	push	5E0104h
	call	far 216Eh:0000h
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	mov	eax,es:[0A17Eh]
	mov	[bp-8h],eax
	mov	byte ptr [bp-1h],25h

l226D_05D1:
	mov	eax,[bp-8h]
	mov	ebx,0Ah
	xor	edx,edx
	div	ebx
	mov	[bp-4h],dx
	mov	eax,[bp-8h]
	xor	edx,edx
	div	ebx
	mov	[bp-8h],eax
	push	3Fh
	mov	ax,[bp-4h]
	imul	ax,ax,3Fh
	add	ax,4h
	mov	dx,28BAh
	mov	es,dx
	mov	dx,es:[0A8FEh]
	add	dx,ax
	push	word ptr es:[0A900h]
	push	dx
	push	ss
	lea	ax,[bp-48h]
	push	ax
	call	far 0800h:350Eh
	add	sp,0Ah
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	ss
	lea	ax,[bp-4Ch]
	push	ax
	push	64h
	mov	al,[bp-1h]
	cbw
	add	ax,104h
	push	ax
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	al,[bp-1h]
	add	al,0F8h
	mov	[bp-1h],al
	cmp	dword ptr [bp-8h],0h
	jnz	05D1h

l226D_064D:
	cli
	call	far 2425h:0286h
	sti
	leave
	retf

;; fn226D_0656: 226D:0656
;;   Called from:
;;     1ED7:0094 (in fn1ED7_000E)
;;     1F0F:0241 (in fn1F0F_000F)
;;     1F0F:0273 (in fn1F0F_000F)
;;     1F0F:0C44 (in fn1F0F_0BF7)
fn226D_0656 proc
	enter	2h,0h
	mov	ax,28BAh
	mov	es,ax
	les	bx,es:[0A93Ah]
	mov	word ptr es:[bx+2h],1h
	mov	al,[bp+6h]
	cbw
	or	ax,ax
	jz	0675h

l226D_0672:
	jmp	07A1h

l226D_0675:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A182h],19h
	jnz	06E3h

l226D_0682:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	140h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A89Eh]
	add	ax,4h
	push	word ptr es:[0A8A0h]
	push	ax
	push	0D0101h
	push	230033h
	push	0A30101h
	call	far 216Eh:04C9h
	add	sp,16h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8BEh]
	push	0A30101h
	call	far 216Eh:01DCh
	add	sp,0Ch
	jmp	0BC4h

l226D_06E3:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	140h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A89Eh]
	add	ax,4h
	push	word ptr es:[0A8A0h]
	push	ax
	push	0D0101h
	push	230033h
	push	0A30101h
	call	far 216Eh:04C9h
	add	sp,16h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8CEh]
	push	0AD0107h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	word ptr [bp-2h],14h
	jmp	0785h

l226D_0748:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A93Ah]
	mov	bx,[bp-2h]
	shl	bx,1h
	mov	al,[bx+84C5h]
	cbw
	add	ax,0A3h
	push	ax
	mov	bx,[bp-2h]
	shl	bx,1h
	mov	al,[bx+84C4h]
	cbw
	add	ax,101h
	push	ax
	call	far 216Eh:01DCh
	add	sp,0Ch
	dec	word ptr [bp-2h]

l226D_0785:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A182h]
	cbw
	dec	ax
	cmp	ax,[bp-2h]
	jl	0798h

l226D_0795:
	jmp	0BC4h

l226D_0798:
	cmp	word ptr [bp-2h],0h
	jge	0748h

l226D_079E:
	jmp	0BC4h

l226D_07A1:
	cmp	byte ptr [bp+6h],0h
	jl	07AAh

l226D_07A7:
	jmp	0A73h

l226D_07AA:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A182h],19h
	jz	07BAh

l226D_07B7:
	jmp	09A6h

l226D_07BA:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jz	07D5h

l226D_07C7:
	push	0h
	push	ds
	push	8504h
	call	far 209Fh:08D2h
	add	sp,6h

l226D_07D5:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	140h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A89Eh]
	add	ax,4h
	push	word ptr es:[0A8A0h]
	push	ax
	push	0D0101h
	push	230033h
	push	0A30101h
	call	far 216Eh:04C9h
	add	sp,16h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8C2h]
	push	0A50107h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A184h],4h

l226D_083F:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A184h],0h
	jg	083Fh

l226D_084C:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	140h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A89Eh]
	add	ax,4h
	push	word ptr es:[0A8A0h]
	push	ax
	push	0D0101h
	push	230033h
	push	0A30101h
	call	far 216Eh:04C9h
	add	sp,16h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8C6h]
	push	0A60107h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A184h],4h

l226D_08B6:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A184h],0h
	jg	08B6h

l226D_08C3:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	140h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A89Eh]
	add	ax,4h
	push	word ptr es:[0A8A0h]
	push	ax
	push	0D0101h
	push	230033h
	push	0A30101h
	call	far 216Eh:04C9h
	add	sp,16h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8CAh]
	push	0AA0107h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A184h],4h

l226D_092D:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A184h],0h
	jg	092Dh

l226D_093A:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	140h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A89Eh]
	add	ax,4h
	push	word ptr es:[0A8A0h]
	push	ax
	push	0D0101h
	push	230033h
	push	0A30101h
	call	far 216Eh:04C9h
	add	sp,16h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8CEh]
	push	0AD0107h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A182h],15h
	jmp	0BC4h

l226D_09A6:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A182h]
	cbw
	dec	ax
	mov	[bp-2h],ax
	jmp	0A29h

l226D_09B6:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jz	09D1h

l226D_09C3:
	push	1h
	push	ds
	push	850Eh
	call	far 209Fh:08D2h
	add	sp,6h

l226D_09D1:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A93Ah]
	mov	bx,[bp-2h]
	shl	bx,1h
	mov	al,[bx+84C5h]
	cbw
	add	ax,0A3h
	push	ax
	mov	bx,[bp-2h]
	shl	bx,1h
	mov	al,[bx+84C4h]
	cbw
	add	ax,101h
	push	ax
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jz	0A26h

l226D_0A18:
	push	1h
	push	ds
	push	850Eh
	call	far 209Fh:08D2h
	add	sp,6h

l226D_0A26:
	dec	word ptr [bp-2h]

l226D_0A29:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A182h]
	cbw
	add	ax,0FFFAh
	cmp	ax,[bp-2h]
	jge	0A44h

l226D_0A3B:
	cmp	word ptr [bp-2h],0h
	jl	0A44h

l226D_0A41:
	jmp	09B6h

l226D_0A44:
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A182h]
	add	al,0FBh
	mov	dx,28BAh
	mov	es,dx
	mov	es:[0A182h],al
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A182h],0h
	jl	0A68h

l226D_0A65:
	jmp	0BC4h

l226D_0A68:
	mov	es,ax
	mov	byte ptr es:[0A182h],0h
	jmp	0BC4h

l226D_0A73:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A182h],15h
	jl	0A83h

l226D_0A80:
	jmp	0B27h

l226D_0A83:
	jmp	0B07h

l226D_0A86:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jz	0AA1h

l226D_0A93:
	push	1h
	push	ds
	push	8519h
	call	far 209Fh:08D2h
	add	sp,6h

l226D_0AA1:
	push	0F6h
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A182h]
	cbw
	shl	ax,1h
	mov	bx,ax
	mov	al,[bx+84C4h]
	cbw
	mov	dx,28BAh
	mov	es,dx
	push	ax
	mov	al,es:[0A182h]
	cbw
	shl	ax,1h
	mov	bx,ax
	mov	al,[bx+84C5h]
	cbw
	add	ax,0A3h
	imul	ax,ax,140h
	pop	dx
	add	dx,ax
	add	dx,102h
	push	dx
	push	0A000h
	nop
	push	cs
	call	0C2Fh
	add	sp,6h
	mov	ax,28BAh
	mov	es,ax
	mov	word ptr es:[0A184h],3h

l226D_0AF0:
	mov	ax,28BAh
	mov	es,ax
	cmp	word ptr es:[0A184h],0h
	jg	0AF0h

l226D_0AFD:
	mov	ax,28BAh
	mov	es,ax
	inc	byte ptr es:[0A182h]

l226D_0B07:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A182h],15h
	jl	0B17h

l226D_0B14:
	jmp	0BC4h

l226D_0B17:
	mov	al,[bp+6h]
	dec	byte ptr [bp+6h]
	or	al,al
	jz	0B24h

l226D_0B21:
	jmp	0A86h

l226D_0B24:
	jmp	0BC4h

l226D_0B27:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A182h],15h
	jz	0B37h

l226D_0B34:
	jmp	0BC4h

l226D_0B37:
	cmp	byte ptr [bp+6h],5h
	jge	0B40h

l226D_0B3D:
	jmp	0BC4h

l226D_0B40:
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jz	0B5Bh

l226D_0B4D:
	push	1h
	push	ds
	push	8522h
	call	far 209Fh:08D2h
	add	sp,6h

l226D_0B5B:
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	push	140h
	mov	ax,28BAh
	mov	es,ax
	mov	ax,es:[0A89Eh]
	add	ax,4h
	push	word ptr es:[0A8A0h]
	push	ax
	push	0D0101h
	push	230033h
	push	0A30101h
	call	far 216Eh:04C9h
	add	sp,16h
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0AA80h]
	mov	ax,28BAh
	mov	es,ax
	push	dword ptr es:[0A8BEh]
	push	0A30101h
	call	far 216Eh:01DCh
	add	sp,0Ch
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A182h],19h

l226D_0BC4:
	leave
	retf

;; fn226D_0BC6: 226D:0BC6
;;   Called from:
;;     1D10:19BB (in fn1D10_155B)
fn226D_0BC6 proc
	enter	4h,0h
	cmp	dword ptr [bp+6h],0h
	jz	0C2Dh

l226D_0BD1:
	les	bx,[bp+6h]
	cmp	dword ptr es:[bx+0Ch],0h
	jz	0C2Dh

l226D_0BDC:
	cli
	call	far 2425h:01E8h
	sti
	les	bx,[bp+6h]
	mov	eax,es:[bx+0Ch]
	jmp	0C1Bh

l226D_0BED:
	push	word ptr [bp+0Ah]
	les	bx,[bp-4h]
	mov	ax,es:[bx+2h]
	sub	ax,es:[bx]
	push	ax
	mov	ax,es:[bx+6h]
	sub	ax,es:[bx+4h]
	push	ax
	push	word ptr es:[bx]
	push	word ptr es:[bx+4h]
	call	far 216Eh:0584h
	add	sp,0Ah
	les	bx,[bp-4h]
	mov	eax,es:[bx+8h]

l226D_0C1B:
	mov	[bp-4h],eax
	cmp	dword ptr [bp-4h],0h
	jnz	0BEDh

l226D_0C26:
	cli
	call	far 2425h:0286h
	sti

l226D_0C2D:
	leave
	retf

;; fn226D_0C2F: 226D:0C2F
;;   Called from:
;;     226D:0ADD (in fn226D_0656)
fn226D_0C2F proc
	push	bp
	mov	bp,sp
	mov	es,[bp+6h]
	mov	bx,[bp+8h]
	mov	al,[bp+0Ah]
	mov	es:[bx],al
	pop	bp
	retf
