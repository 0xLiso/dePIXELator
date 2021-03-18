;;; Segment 2057 (2057:0000)

;; fn2057_0000: 2057:0000
;;   Called from:
;;     2057:007C (in fn2057_005C)
;;     2057:0083 (in fn2057_005C)
;;     2057:0092 (in fn2057_005C)
;;     2057:0329 (in fn2057_0283)
;;     2057:0334 (in fn2057_0283)
;;     2057:0347 (in fn2057_0283)
;;     2057:0352 (in fn2057_0283)
;;     2057:035D (in fn2057_0283)
;;     2057:036B (in fn2057_0283)
;;     2057:0372 (in fn2057_0283)
;;     2057:03A7 (in fn2057_0384)
;;     2057:0470 (in fn2057_0453)
fn2057_0000 proc
	enter	4h,0h
	mov	ax,[96CEh]
	add	ax,0Ch
	mov	[bp-2h],ax
	mov	word ptr [bp-4h],0FFFFh
	cli
	jmp	0026h

l2057_0015:
	mov	dx,[bp-2h]
	in	al,dx
	test	al,80h
	jnz	0023h

l2057_001D:
	mov	al,[bp+6h]
	out	dx,al
	jmp	002Ch

l2057_0023:
	dec	word ptr [bp-4h]

l2057_0026:
	cmp	word ptr [bp-4h],0h
	ja	0015h

l2057_002C:
	sti
	leave
	retf
2057:002F                                              C8                .
2057:0030 04 00 00 A1 CE 96 05 0C 00 89 46 FE C7 46 FC FF ..........F..F..
2057:0040 FF EB 11 8B 56 FE EC A8 80 75 06 8A 46 06 EE EB ....V....u..F...
2057:0050 09 FF 4E FC 83 7E FC 00 77 E9 C9 CB             ..N..~..w...   

;; fn2057_005C: 2057:005C
;;   Called from:
;;     268D:01BB (in main)
fn2057_005C proc
	enter	6h,0h
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jnz	0070h

l2057_006D:
	jmp	0111h

l2057_0070:
	mov	ax,[96D2h]
	sub	ax,2h
	mov	[bp-4h],ax
	push	0D1h
	push	cs
	call	0000h
	pop	cx
	push	40h
	push	cs
	call	0000h
	pop	cx
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[82E4h]
	push	ax
	push	cs
	call	0000h
	pop	cx
	cmp	word ptr [bp-4h],9h
	jnc	00C7h

l2057_009D:
	mov	bx,[bp-4h]
	mov	al,[bx+8281h]
	cbw
	mov	[bp-2h],ax
	cmp	word ptr [bp-2h],0h
	jnz	00CDh

l2057_00AE:
	push	ds
	push	8292h

l2057_00B2:
	call	far 0800h:37D3h
	add	sp,4h
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A183h],0h
	jmp	011Ch

l2057_00C7:
	push	ds
	push	82B5h
	jmp	00B2h

l2057_00CD:
	cli
	push	word ptr [bp-2h]
	call	far 0800h:0436h
	pop	cx
	mov	[0A418h],dx
	mov	[0A416h],ax
	push	2057h
	push	182h
	push	word ptr [bp-2h]
	call	far 0800h:0445h
	add	sp,6h
	mov	dx,21h
	in	al,dx
	mov	[bp-5h],al
	mov	bx,[bp-4h]
	and	al,[bx+8266h]
	out	dx,al
	cmp	word ptr [bp-4h],8h
	jnz	0110h

l2057_0104:
	mov	dx,0A1h
	in	al,dx
	mov	[bp-5h],al
	and	al,[bx+8266h]
	out	dx,al

l2057_0110:
	sti

l2057_0111:
	mov	ax,28BAh
	mov	es,ax
	or	word ptr es:[302Ah],10h

l2057_011C:
	leave
	retf

;; fn2057_011E: 2057:011E
;;   Called from:
;;     268D:05A1 (in fn268D_03E2)
fn2057_011E proc
	enter	4h,0h
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jz	0180h

l2057_012F:
	cli
	mov	ax,[96D2h]
	sub	ax,2h
	mov	[bp-2h],ax
	mov	bx,[bp-2h]
	mov	al,[bx+8281h]
	cbw
	mov	[bp-4h],ax
	push	dword ptr [0A416h]
	push	ax
	call	far 0800h:0445h
	add	sp,6h
	mov	bx,[bp-2h]
	mov	al,[bx+8266h]
	not	al
	mov	dx,21h
	push	ax
	in	al,dx
	pop	dx
	or	al,dl
	mov	dx,21h
	out	dx,al
	cmp	word ptr [bp-2h],8h
	jnz	017Fh

l2057_016D:
	mov	al,[bx+8266h]
	not	al
	mov	dx,0A1h
	push	ax
	in	al,dx
	pop	dx
	or	al,dl
	mov	dx,0A1h
	out	dx,al

l2057_017F:
	sti

l2057_0180:
	leave
	retf
2057:0182       50 53 51 52 06 1E 56 57 55 BD BA 28 8E DD   PSQR..VWU..(..
2057:0190 8B EC 83 EC 08 8B 16 CE 96 83 C2 0E EC B8 BA 28 ...............(
2057:01A0 8E C0 26 80 3E 22 A4 01 74 03 E9 BB 00 B8 BA 28 ..&.>"..t......(
2057:01B0 8E C0 66 26 A1 23 A4 66 89 46 FC C4 5E FC 26 8B ..f&.#.f.F..^.&.
2057:01C0 47 0C 89 46 FA 81 7E FA B9 01 7D 3D 68 D0 00 0E G..F..~...}=h...
2057:01D0 E8 5C FE 59 83 7E FA 00 74 04 FF 06 1A A4 C4 5E .\.Y.~..t......^
2057:01E0 FC 26 C7 47 08 00 00 26 C7 47 0A 00 00 26 C7 47 .&.G...&.G...&.G
2057:01F0 0C 00 00 26 C7 07 00 00 B8 BA 28 8E C0 26 C6 06 ...&......(..&..
2057:0200 22 A4 00 FF 06 77 82 EB 5F FF 06 1A A4 C4 5E FC "....w.._.....^.
2057:0210 26 81 47 0A B9 01 26 81 6F 0C B9 01 26 8B 47 0A &.G...&.o...&.G.
2057:0220 26 3B 47 02 7C 06 26 C7 47 0A 00 00 B8 BA 28 8E &;G.|.&.G.....(.
2057:0230 C0 26 80 3E 27 A4 02 72 0A 8E C0 26 80 3E 27 A4 .&.>'..r...&.>'.
2057:0240 04 76 25 C7 46 F8 B8 01 6A 14 0E E8 B2 FD 59 8A .v%.F...j.....Y.
2057:0250 46 F8 24 FF 50 0E E8 A7 FD 59 8B 46 F8 C1 F8 08 F.$.P....Y.F....
2057:0260 24 FF 50 0E E8 99 FD 59 BA 20 00 B0 20 EE 83 3E $.P....Y. .. ..>
2057:0270 D2 96 0A 75 04 BA A0 00 EE C9 5F 5E 1F 07 5A 59 ...u......_^..ZY
2057:0280 5B 58 CF                                        [X.            

;; fn2057_0283: 2057:0283
;;   Called from:
;;     209F:04C2 (in fn209F_049A)
fn2057_0283 proc
	push	bp
	mov	bp,sp
	dec	word ptr [bp+0Ch]
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jnz	0299h

l2057_0296:
	jmp	0382h

l2057_0299:
	mov	dx,0Ah
	in	al,dx
	mov	ah,0h
	test	ax,4h
	jnz	02ABh

l2057_02A4:
	mov	al,4h
	or	al,[96D4h]
	out	dx,al

l2057_02AB:
	mov	dx,0Ch
	mov	al,0h
	out	dx,al
	mov	al,48h
	or	al,[96D4h]
	or	al,10h
	mov	dx,0Bh
	out	dx,al
	mov	bx,[96D4h]
	mov	al,[bx+828Ah]
	cbw
	push	ax
	mov	al,[bp+8h]
	pop	dx
	out	dx,al
	mov	al,[bx+828Ah]
	cbw
	push	ax
	mov	al,[bp+0Ah]
	pop	dx
	out	dx,al
	shl	bx,1h
	mov	dx,[bx+826Fh]
	mov	al,[bp+6h]
	and	al,0Fh
	out	dx,al
	mov	bx,[96D4h]
	mov	al,[bx+828Eh]
	cbw
	push	ax
	mov	al,[bp+0Ch]
	and	al,0FFh
	pop	dx
	out	dx,al
	mov	al,[bx+828Eh]
	cbw
	mov	dx,[bp+0Ch]
	sar	dx,8h
	and	dl,0FFh
	xchg	dx,ax
	out	dx,al
	mov	dx,0Ah
	mov	al,[96D4h]
	out	dx,al
	mov	word ptr [bp+0Ch],1B8h
	mov	ax,28BAh
	mov	es,ax
	mov	al,es:[0A427h]
	mov	ah,0h
	cmp	ax,1h
	jz	0327h

l2057_0320:
	cmp	ax,4h
	jz	0344h

l2057_0325:
	jmp	0350h

l2057_0327:
	push	14h

l2057_0329:
	push	cs
	call	0000h
	pop	cx
	mov	al,[bp+0Ch]
	and	al,0FFh
	push	ax
	push	cs
	call	0000h
	pop	cx
	mov	ax,[bp+0Ch]
	sar	ax,8h
	and	al,0FFh
	push	ax
	jmp	0372h

l2057_0344:
	push	0C6h
	push	cs
	call	0000h
	pop	cx
	push	0h
	jmp	0329h

l2057_0350:
	push	48h
	push	cs
	call	0000h
	pop	cx
	mov	al,[bp+0Ch]
	and	al,0FFh
	push	ax
	push	cs
	call	0000h
	pop	cx
	mov	ax,[bp+0Ch]
	sar	ax,8h
	and	al,0FFh
	push	ax
	push	cs
	call	0000h
	pop	cx
	push	1Ch

l2057_0372:
	push	cs
	call	0000h
	pop	cx
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A422h],1h

l2057_0382:
	pop	bp
	retf

;; fn2057_0384: 2057:0384
;;   Called from:
;;     0CE0:12E4 (in fn0CE0_08FC)
;;     1D10:0655 (in fn1D10_02AE)
;;     1D10:0E41 (in fn1D10_09C2)
fn2057_0384 proc
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jz	03B8h

l2057_0391:
	cli
	mov	dx,0Ah
	in	al,dx
	mov	ah,0h
	test	ax,4h
	jnz	03A4h

l2057_039D:
	mov	al,4h
	or	al,[96D4h]
	out	dx,al

l2057_03A4:
	push	0D0h
	push	cs
	call	0000h
	pop	cx
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A422h],2h
	sti

l2057_03B8:
	retf
2057:03B9                            C8 02 00 00 BA 0C 00          .......
2057:03C0 B0 00 EE 8B 1E D4 96 8A 87 8E 82 98 50 5A EC B4 ............PZ..
2057:03D0 00 89 46 FE 8A 87 8E 82 98 50 5A EC B4 00 C1 E0 ..F......PZ.....
2057:03E0 08 09 46 FE B8 BA 28 8E C0 26 C4 1E 23 A4 26 8B ..F...(..&..#.&.
2057:03F0 47 0F 3B 46 FE 76 04 33 C0 EB 21 B8 BA 28 8E C0 G.;F.v.3..!..(..
2057:0400 26 C4 1E 23 A4 26 8B 47 0F 29 46 FE 81 7E FE 74 &..#.&.G.)F..~.t
2057:0410 22 77 E4 B8 74 22 2B 46 FE 89 46 FE C9 CB       "w..t"+F..F... 

;; fn2057_041E: 2057:041E
;;   Called from:
;;     1D10:0A00 (in fn1D10_09C2)
;;     1D10:0BE8 (in fn1D10_09C2)
;;     209F:06F7 (in fn209F_06D8)
fn2057_041E proc
	enter	2h,0h
	cli
	mov	dx,0Ch
	mov	al,0h
	out	dx,al
	mov	bx,[96D4h]
	mov	al,[bx+828Ah]
	cbw
	push	ax
	pop	dx
	in	al,dx
	mov	ah,0h
	and	ax,0FFh
	mov	[bp-2h],ax
	mov	al,[bx+828Ah]
	cbw
	push	ax
	pop	dx
	in	al,dx
	mov	ah,0h
	shl	ax,8h
	or	[bp-2h],ax
	sti
	mov	ax,[bp-2h]
	leave
	retf

;; fn2057_0453: 2057:0453
;;   Called from:
;;     1D10:066F (in fn1D10_02AE)
fn2057_0453 proc
	mov	ax,28BAh
	mov	es,ax
	cmp	byte ptr es:[0A183h],0h
	jz	0481h

l2057_0460:
	cli
	mov	dx,0Ah
	in	al,dx
	test	al,4h
	jz	046Dh

l2057_0469:
	mov	al,[96D4h]
	out	dx,al

l2057_046D:
	push	0D4h
	push	cs
	call	0000h
	pop	cx
	mov	ax,28BAh
	mov	es,ax
	mov	byte ptr es:[0A422h],1h
