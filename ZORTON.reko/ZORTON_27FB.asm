;;; Segment 27FB (27FB:0000)
27FB:0000 24 1C 00 08 83 C4 04 C9 CB 00                   $.........     

;; fn27FB_000A: 27FB:000A
;;   Called from:
;;     27FB:03CF (in fn27FB_039A)
fn27FB_000A proc
	push	bx
	push	cx
	mov	cl,4h
	rol	dx,cl
	mov	bx,dx
	and	dx,0Fh
	and	bx,0F0h
	add	ax,bx
	jnc	001Dh

l27FB_001C:
	inc	dx

l27FB_001D:
	pop	cx
	pop	bx
	ret

;; fn27FB_0020: 27FB:0020
;;   Called from:
;;     27FB:00C6 (in fn27FB_00AC)
;;     27FB:00FB (in fn27FB_00DC)
fn27FB_0020 proc
	push	ds
	push	ax
	mov	ax,28BAh
	mov	ds,ax
	pop	ax
	push	cx
	push	dx
	mov	dx,[96CEh]
	add	dl,0Eh
	mov	cx,200h

l27FB_0034:
	in	al,dx
	or	al,al
	js	003Eh

l27FB_0039:
	loop	0034h

l27FB_003B:
	stc
	jmp	0043h

l27FB_003E:
	sub	dl,4h
	in	al,dx
	clc

l27FB_0043:
	pop	dx
	pop	cx
	pop	ds
	ret

;; fn27FB_0047: 27FB:0047
;;   Called from:
;;     27FB:00EF (in fn27FB_00DC)
;;     27FB:00F6 (in fn27FB_00DC)
fn27FB_0047 proc
	push	ds
	push	ax
	mov	ax,28BAh
	mov	ds,ax
	pop	ax
	push	cx
	push	dx
	mov	dx,[96CEh]
	add	dl,0Ch
	mov	cx,200h
	mov	ah,al

l27FB_005D:
	in	al,dx
	or	al,al
	jns	0067h

l27FB_0062:
	loop	005Dh

l27FB_0064:
	stc
	jmp	006Bh

l27FB_0067:
	mov	al,ah
	out	dx,al
	clc

l27FB_006B:
	pop	dx
	pop	cx
	pop	ds
	ret
27FB:006F                                              1E                .
27FB:0070 50 B8 BA 28 8E D8 58 52 8B 16 CE 96 80 C2 0E EC P..(..XR........
27FB:0080 0A C0 78 02 EB F9 80 EA 04 EC 5A 1F C3          ..x.......Z..  

;; fn27FB_008D: 27FB:008D
;;   Called from:
;;     27FB:031E (in fn27FB_02C4)
;;     27FB:03E4 (in fn27FB_039A)
;;     27FB:03E9 (in fn27FB_039A)
;;     27FB:03EE (in fn27FB_039A)
;;     27FB:03F3 (in fn27FB_039A)
;;     27FB:03F8 (in fn27FB_039A)
fn27FB_008D proc
	push	ds
	push	ax
	mov	ax,28BAh
	mov	ds,ax
	pop	ax
	push	dx
	mov	dx,[96CEh]
	add	dx,0Ch
	mov	ah,al

l27FB_009F:
	in	al,dx
	or	al,al
	jns	00A6h

l27FB_00A4:
	jmp	009Fh

l27FB_00A6:
	mov	al,ah
	out	dx,al
	pop	dx
	pop	ds
	ret

;; fn27FB_00AC: 27FB:00AC
;;   Called from:
;;     27FB:00E7 (in fn27FB_00DC)
;;     27FB:042B (in fn27FB_039A)
fn27FB_00AC proc
	push	ds
	mov	ax,28BAh
	mov	ds,ax
	mov	dx,[96CEh]
	add	dl,6h
	mov	al,1h
	out	dx,al
	sub	al,al

l27FB_00BE:
	dec	al
	jnz	00BEh

l27FB_00C2:
	out	dx,al
	mov	cx,20h

l27FB_00C6:
	call	0020h
	jc	00D3h

l27FB_00CB:
	cmp	al,0AAh
	jnz	00D3h

l27FB_00CF:
	sub	ax,ax
	jmp	00D9h

l27FB_00D3:
	loop	00C6h

l27FB_00D5:
	stc
	mov	ax,1h

l27FB_00D9:
	pop	ds
	retf
27FB:00DB                                  00                        .   

;; fn27FB_00DC: 27FB:00DC
;;   Called from:
;;     209F:00F5 (in fn209F_00DD)
fn27FB_00DC proc
	push	ds
	push	ax
	mov	ax,28BAh
	mov	ds,ax
	pop	ax
	sub	bx,bx
	nop
	push	cs
	call	00ACh
	jc	0107h

l27FB_00ED:
	mov	al,0E0h
	call	0047h
	jc	0107h

l27FB_00F4:
	mov	al,0C6h
	call	0047h
	jc	0107h

l27FB_00FB:
	call	0020h
	jc	0107h

l27FB_0100:
	cmp	al,39h
	jnz	0107h

l27FB_0104:
	mov	bx,4h

l27FB_0107:
	mov	ax,100h
	call	0167h
	mov	ax,460h
	call	0167h
	mov	ax,480h
	call	0167h
	mov	al,0h
	call	0146h
	jc	0142h

l27FB_0120:
	mov	ax,2FFh
	call	0167h
	mov	ax,421h
	call	0167h
	mov	al,0C0h
	call	0146h
	jc	0142h

l27FB_0133:
	mov	ax,460h
	call	0167h
	mov	ax,480h
	call	0167h
	add	bx,2h

l27FB_0142:
	mov	ax,bx
	pop	ds
	retf

;; fn27FB_0146: 27FB:0146
;;   Called from:
;;     27FB:011B (in fn27FB_00DC)
;;     27FB:012E (in fn27FB_00DC)
fn27FB_0146 proc
	push	cx
	push	dx
	mov	cx,40h
	mov	ah,al
	and	ah,0E0h
	mov	dx,[96CEh]
	add	dl,8h

l27FB_0157:
	in	al,dx
	and	al,0E0h
	cmp	ah,al
	jz	0163h

l27FB_015E:
	loop	0157h

l27FB_0160:
	stc
	jmp	0164h

l27FB_0163:
	clc

l27FB_0164:
	pop	dx
	pop	cx
	ret

;; fn27FB_0167: 27FB:0167
;;   Called from:
;;     27FB:010A (in fn27FB_00DC)
;;     27FB:0110 (in fn27FB_00DC)
;;     27FB:0116 (in fn27FB_00DC)
;;     27FB:0123 (in fn27FB_00DC)
;;     27FB:0129 (in fn27FB_00DC)
;;     27FB:0136 (in fn27FB_00DC)
;;     27FB:013C (in fn27FB_00DC)
fn27FB_0167 proc
	push	ax
	push	cx
	push	dx
	mov	dx,[96CEh]
	add	dl,8h
	xchg	al,ah
	out	dx,al
	mov	cx,[96C8h]

l27FB_0178:
	nop
	dec	cx
	or	cx,cx
	jnz	0178h

l27FB_017E:
	inc	dx
	mov	al,ah
	out	dx,al
	mov	cx,[96CAh]

l27FB_0186:
	nop
	dec	cx
	or	cx,cx
	jnz	0186h

l27FB_018C:
	pop	dx
	pop	cx
	pop	ax
	ret

;; fn27FB_0190: 27FB:0190
;;   Called from:
;;     27FB:03A9 (in fn27FB_039A)
fn27FB_0190 proc
	push	ds
	push	ax
	mov	ax,28BAh
	mov	ds,ax
	pop	ax
	mov	[96D4h],ax
	and	al,3h
	shl	ax,1h
	mov	[96DCh],ax
	shr	ax,1h
	add	al,7Fh
	cmp	al,81h
	jnc	01B2h

l27FB_01AA:
	add	al,3h
	cmp	al,83h
	jnc	01B2h

l27FB_01B0:
	add	al,5h

l27FB_01B2:
	mov	[96DFh],al
	pop	ds
	ret

;; fn27FB_01B7: 27FB:01B7
;;   Called from:
;;     27FB:02D6 (in fn27FB_02C4)
fn27FB_01B7 proc
	push	cx
	push	ds
	push	ax
	mov	ax,28BAh
	mov	ds,ax
	pop	ax
	mov	[96D2h],ax
	and	al,0Fh
	mov	cx,ax
	and	cl,7h
	mov	ch,1h
	shl	ch,cl
	mov	[96DEh],ch
	mov	cl,al
	add	cl,8h
	cmp	cl,10h
	jc	01DFh

l27FB_01DC:
	add	cl,60h

l27FB_01DF:
	sub	ch,ch
	mov	[96DAh],cx
	and	al,8h
	cbw
	mov	cl,4h
	shl	ax,cl
	add	ax,21h
	mov	[96D8h],ax
	pop	ds
	pop	cx
	ret
27FB:01F5                00                                    .         

;; fn27FB_01F6: 27FB:01F6
;;   Called from:
;;     27FB:0518 (in fn27FB_050A)
fn27FB_01F6 proc
	push	ds
	push	es
	push	di
	push	si
	mov	es,dx
	mov	di,ax
	call	0247h
	or	ax,ax
	jz	023Eh

l27FB_0205:
	mov	ds,ax
	mov	bx,2Ch
	mov	ds,[bx]
	sub	si,si
	mov	bx,di

l27FB_0210:
	mov	di,bx
	mov	ah,es:[di]

l27FB_0215:
	lodsb
	cmp	ah,al
	jnz	0231h

l27FB_021A:
	inc	di
	mov	ah,es:[di]
	or	ah,ah
	jnz	0215h

l27FB_0222:
	lodsb
	cmp	al,20h
	jz	0222h

l27FB_0227:
	cmp	al,3Dh
	jnz	0235h

l27FB_022B:
	mov	dx,ds
	mov	ax,si
	jmp	0242h

l27FB_0231:
	or	al,al
	jz	023Ah

l27FB_0235:
	lodsb
	or	al,al
	jnz	0235h

l27FB_023A:
	cmp	al,[si]
	jnz	0210h

l27FB_023E:
	sub	dx,dx
	sub	ax,ax

l27FB_0242:
	pop	si
	pop	di
	pop	es
	pop	ds
	ret

;; fn27FB_0247: 27FB:0247
;;   Called from:
;;     27FB:01FE (in fn27FB_01F6)
fn27FB_0247 proc
	mov	ah,30h
	int	21h
	cmp	al,8h
	jnc	027Ch

l27FB_024F:
	push	es
	push	di
	mov	ah,52h
	int	21h
	mov	es,es:[bx-2h]
	sub	bx,bx
	sub	di,di
	mov	ax,es

l27FB_025F:
	inc	ax
	cmp	ax,es:[bx+1h]
	jnz	0268h

l27FB_0266:
	mov	di,ax

l27FB_0268:
	cmp	byte ptr es:[bx],5Ah
	jz	0276h

l27FB_026E:
	add	ax,es:[bx+3h]
	mov	es,ax
	jmp	025Fh

l27FB_0276:
	mov	ax,di
	pop	di
	pop	es
	jmp	0282h

l27FB_027C:
	mov	ah,62h
	int	21h
	mov	ax,bx

l27FB_0282:
	ret
27FB:0283          00                                        .           

;; fn27FB_0284: 27FB:0284
;;   Called from:
;;     27FB:03D6 (in fn27FB_039A)
fn27FB_0284 proc
	push	ds
	push	ax
	mov	ax,28BAh
	mov	ds,ax
	pop	ax
	push	ax
	mov	ah,[96D4h]
	mov	al,4h
	add	al,ah
	out	0Ah,al
	sub	al,al
	out	0Ch,al
	mov	al,dh
	and	al,0FCh
	or	al,ah
	out	0Bh,al
	mov	al,dl
	mov	dl,[96DFh]
	sub	dh,dh
	out	dx,al
	pop	ax
	mov	dx,[96DCh]
	out	dx,al
	mov	al,ah
	out	dx,al
	inc	dx
	mov	al,cl
	out	dx,al
	mov	al,ch
	out	dx,al
	mov	al,[96D4h]
	out	0Ah,al
	pop	ds
	ret
27FB:02C3          00                                        .           

;; fn27FB_02C4: 27FB:02C4
;;   Called from:
;;     209F:00FE (in fn209F_00DD)
fn27FB_02C4 proc
	push	ds
	push	ax
	mov	ax,28BAh
	mov	ds,ax
	pop	ax
	push	bp
	sub	sp,6h
	mov	bp,sp
	pushf
	mov	ax,[96D2h]
	call	01B7h
	neg	word ptr [96D2h]
	mov	bx,[96DAh]
	call	0497h
	mov	[bp+2h],ax
	mov	[bp+4h],dx
	cli
	mov	dx,[96CEh]
	add	dl,0Eh
	in	al,dx
	mov	bx,[96DAh]
	mov	ax,359h
	mov	dx,cs
	call	0482h
	mov	dx,[96D8h]
	in	al,dx
	mov	[96CCh],al
	mov	ah,[96DEh]
	not	ah
	and	al,ah
	out	dx,al
	sti
	call	037Eh
	test	word ptr [96D2h],8000h
	jz	0334h

l27FB_031C:
	mov	al,0F2h
	call	008Dh
	call	037Eh
	test	word ptr [96D2h],8000h
	jz	033Ah

l27FB_032C:
	mov	dx,[96CEh]
	add	dl,0Eh
	in	al,dx

l27FB_0334:
	mov	word ptr [96D2h],0h

l27FB_033A:
	mov	al,[96CCh]
	mov	dx,[96D8h]
	out	dx,al
	mov	bx,[96DAh]
	mov	ax,[bp+2h]
	mov	dx,[bp+4h]
	call	0482h
	mov	ax,[96D2h]
	popf
	add	sp,6h
	pop	bp
	pop	ds
	retf
27FB:0359                            1E 50 52 B8 BA 28 8E          .PR..(.
27FB:0360 D8 8B 16 CE 96 83 C2 0E EC F7 1E D2 96 B0 20 83 .............. .
27FB:0370 3E D2 96 08 72 02 E6 A0 E6 20 5A 58 1F CF       >...r.... ZX.. 

;; fn27FB_037E: 27FB:037E
;;   Called from:
;;     27FB:0311 (in fn27FB_02C4)
;;     27FB:0321 (in fn27FB_02C4)
fn27FB_037E proc
	push	ds
	mov	ax,40h
	mov	ds,ax
	mov	bx,6Ch
	mov	cx,[bx]

l27FB_0389:
	mov	ax,[bx]
	sub	ax,cx
	cwd
	xor	ax,dx
	sub	ax,dx
	cmp	ax,3h
	jc	0389h

l27FB_0397:
	pop	ds
	ret
27FB:0399                            00                            .     

;; fn27FB_039A: 27FB:039A
;;   Called from:
;;     209F:0107 (in fn209F_00DD)
fn27FB_039A proc
	push	bp
	sub	sp,6h
	mov	bp,sp
	push	ds
	mov	ax,28BAh
	mov	ds,ax
	mov	ax,[96D4h]
	call	0190h
	mov	bx,[96DAh]
	call	0497h
	mov	[bp+0h],ax
	mov	[bp+2h],dx
	mov	bx,[96DAh]
	mov	dx,cs
	mov	ax,438h
	call	0482h
	call	04AAh
	mov	ax,bp
	add	ax,4h
	mov	dx,ss
	call	000Ah
	sub	cx,cx
	mov	dh,45h
	call	0284h
	mov	byte ptr [bp+4h],1h
	and	byte ptr [96D5h],7Fh
	mov	al,40h
	call	008Dh
	mov	al,0A6h
	call	008Dh
	mov	al,24h
	call	008Dh
	sub	al,al
	call	008Dh
	sub	al,al
	call	008Dh
	call	045Eh
	call	04D7h
	mov	bx,[96DAh]
	mov	dx,[bp+2h]
	mov	ax,[bp+0h]
	call	0482h
	mov	ax,[96D4h]
	cwd
	cbw
	mov	[96D4h],ax
	add	al,4h
	out	0Ah,al
	or	dx,dx
	jz	0424h

l27FB_041E:
	cmp	byte ptr [bp+4h],1h
	jnz	042Fh

l27FB_0424:
	mov	word ptr [96D4h],0FFFFh
	nop
	push	cs
	call	00ACh

l27FB_042F:
	mov	ax,[96D4h]
	pop	ds
	add	sp,6h
	pop	bp
	retf
27FB:0438                         1E 50 52 B8 BA 28 8E D8         .PR..(..
27FB:0440 8B 16 CE 96 83 C2 0E EC 80 0E D5 96 80 B0 20 83 .............. .
27FB:0450 3E D2 96 08 72 02 E6 A0 E6 20 5A 58 1F CF       >...r.... ZX.. 

;; fn27FB_045E: 27FB:045E
;;   Called from:
;;     27FB:03FB (in fn27FB_039A)
fn27FB_045E proc
	push	ds
	push	bx
	push	cx
	push	dx
	mov	cx,ax
	mov	ax,40h
	mov	ds,ax
	mov	bx,6Ch
	mov	cx,[bx]

l27FB_046E:
	mov	ax,[bx]
	sub	ax,cx
	cwd
	xor	ax,dx
	sub	ax,dx
	cmp	ax,4h
	jc	046Eh

l27FB_047C:
	pop	dx
	pop	cx
	pop	bx
	pop	ds
	ret
27FB:0481    00                                            .             

;; fn27FB_0482: 27FB:0482
;;   Called from:
;;     27FB:02FC (in fn27FB_02C4)
;;     27FB:034C (in fn27FB_02C4)
;;     27FB:03C2 (in fn27FB_039A)
;;     27FB:040B (in fn27FB_039A)
fn27FB_0482 proc
	pushf
	push	ds
	shl	bx,1h
	shl	bx,1h
	cli
	push	ax
	sub	ax,ax
	mov	ds,ax
	pop	ax
	mov	[bx],ax
	mov	[bx+2h],dx
	pop	ds
	popf
	ret

;; fn27FB_0497: 27FB:0497
;;   Called from:
;;     27FB:02E1 (in fn27FB_02C4)
;;     27FB:03B0 (in fn27FB_039A)
fn27FB_0497 proc
	pushf
	push	ds
	shl	bx,1h
	shl	bx,1h
	cli
	sub	ax,ax
	mov	ds,ax
	mov	ax,[bx]
	mov	dx,[bx+2h]
	pop	ds
	popf
	ret

;; fn27FB_04AA: 27FB:04AA
;;   Called from:
;;     27FB:03C5 (in fn27FB_039A)
fn27FB_04AA proc
	push	ax
	push	cx
	push	dx
	push	ds
	mov	ax,28BAh
	mov	ds,ax
	mov	ax,[96D2h]
	mov	dx,ax
	and	dl,8h
	mov	cl,4h
	shl	dl,cl
	add	dx,21h
	mov	cl,al
	and	cl,7h
	mov	ah,0FEh
	rol	ah,cl
	pushf
	cli
	in	al,dx
	and	al,ah
	out	dx,al
	popf
	pop	ds
	pop	dx
	pop	cx
	pop	ax
	ret

;; fn27FB_04D7: 27FB:04D7
;;   Called from:
;;     27FB:03FE (in fn27FB_039A)
fn27FB_04D7 proc
	push	ax
	push	cx
	push	dx
	push	ds
	mov	ax,28BAh
	mov	ds,ax
	mov	ax,[96D2h]
	cmp	ax,2h
	jz	0504h

l27FB_04E8:
	mov	dx,ax
	and	dl,8h
	mov	cl,4h
	shl	dl,cl
	add	dx,21h
	mov	cl,al
	and	cl,7h
	mov	ah,1h
	rol	ah,cl
	pushf
	cli
	in	al,dx
	or	al,ah
	out	dx,al
	popf

l27FB_0504:
	pop	ds
	pop	dx
	pop	cx
	pop	ax
	ret
27FB:0509                            00                            .     

;; fn27FB_050A: 27FB:050A
;;   Called from:
;;     209F:00EC (in fn209F_00DD)
fn27FB_050A proc
	push	es
	push	di
	push	si
	push	ds
	mov	ax,28BAh
	mov	ds,ax
	mov	dx,cs
	mov	ax,5C5h
	call	01F6h
	mov	di,1h
	or	dx,dx
	jz	054Bh

l27FB_0522:
	mov	es,dx
	mov	si,ax
	mov	di,2h
	mov	al,41h
	call	05CDh
	jc	054Bh

l27FB_0530:
	mov	bx,ax
	call	05EFh
	jc	054Bh

l27FB_0537:
	cmp	ah,2h
	jnz	054Bh

l27FB_053C:
	and	al,0F0h
	cmp	al,60h
	ja	054Bh

l27FB_0542:
	cmp	al,10h
	jc	054Bh

l27FB_0546:
	mov	[96CEh],ax
	jmp	054Dh

l27FB_054B:
	jmp	05BEh

l27FB_054D:
	mov	di,3h
	mov	al,49h
	call	05CDh
	jc	05BEh

l27FB_0557:
	mov	bx,ax
	call	0637h
	jc	05BEh

l27FB_055E:
	cmp	ax,2h
	jc	05BEh

l27FB_0563:
	cmp	ax,0Fh
	ja	05BEh

l27FB_0568:
	mov	[96D2h],ax
	mov	di,4h
	mov	al,44h
	call	05CDh
	jc	05BEh

l27FB_0575:
	mov	bx,ax
	call	0637h
	jc	05BEh

l27FB_057C:
	cmp	ax,3h
	ja	05BEh

l27FB_0581:
	mov	[96D4h],ax
	sub	di,di
	mov	al,4Dh
	call	05CDh
	jc	05A3h

l27FB_058D:
	mov	bx,ax
	call	05EFh
	jc	05A3h

l27FB_0594:
	cmp	ah,2h
	jnz	05A3h

l27FB_0599:
	and	al,0F0h
	cmp	al,60h
	ja	05A3h

l27FB_059F:
	cmp	al,10h
	jnc	05A6h

l27FB_05A3:
	mov	ax,[96CEh]

l27FB_05A6:
	mov	[96D0h],ax
	mov	al,54h
	call	05CDh
	jc	05BEh

l27FB_05B0:
	mov	bx,ax
	call	0637h
	jc	05BEh

l27FB_05B7:
	or	ax,ax
	jz	05BEh

l27FB_05BB:
	mov	[96D6h],ax

l27FB_05BE:
	mov	ax,di
	pop	ds
	pop	si
	pop	di
	pop	es
	retf
27FB:05C5                42 4C 41 53 54 45 52 00               BLASTER.  

;; fn27FB_05CD: 27FB:05CD
;;   Called from:
;;     27FB:052B (in fn27FB_050A)
;;     27FB:0552 (in fn27FB_050A)
;;     27FB:0570 (in fn27FB_050A)
;;     27FB:0588 (in fn27FB_050A)
;;     27FB:05AB (in fn27FB_050A)
fn27FB_05CD proc
	push	ds
	push	si
	push	es
	pop	ds
	mov	ah,al

l27FB_05D3:
	lodsb
	or	al,al
	jz	05EBh

l27FB_05D8:
	cmp	al,61h
	jc	05E2h

l27FB_05DC:
	cmp	al,7Ah
	ja	05E2h

l27FB_05E0:
	sub	al,20h

l27FB_05E2:
	cmp	al,ah
	jnz	05D3h

l27FB_05E6:
	mov	ax,si
	clc
	jmp	05ECh

l27FB_05EB:
	stc

l27FB_05EC:
	pop	si
	pop	ds
	ret

;; fn27FB_05EF: 27FB:05EF
;;   Called from:
;;     27FB:0532 (in fn27FB_050A)
;;     27FB:058F (in fn27FB_050A)
fn27FB_05EF proc
	sub	dx,dx
	mov	al,es:[bx]
	inc	bx
	cmp	al,20h
	jz	0635h

l27FB_05F9:
	cmp	al,0h
	jz	0635h

l27FB_05FD:
	mov	cl,4h
	shl	dx,cl
	cmp	al,30h
	jc	060Fh

l27FB_0605:
	cmp	al,39h
	ja	060Fh

l27FB_0609:
	sub	al,30h
	or	dl,al
	jmp	0625h

l27FB_060F:
	cmp	al,61h
	jc	0619h

l27FB_0613:
	cmp	al,7Ah
	ja	0619h

l27FB_0617:
	sub	al,61h

l27FB_0619:
	cmp	al,41h
	jc	0635h

l27FB_061D:
	cmp	al,46h
	ja	0635h

l27FB_0621:
	sub	al,37h
	or	dl,al

l27FB_0625:
	mov	al,es:[bx]
	inc	bx
	cmp	al,20h
	jz	0631h

l27FB_062D:
	or	al,al
	jnz	05FDh

l27FB_0631:
	mov	ax,dx
	jmp	0636h

l27FB_0635:
	stc

l27FB_0636:
	ret

;; fn27FB_0637: 27FB:0637
;;   Called from:
;;     27FB:0559 (in fn27FB_050A)
;;     27FB:0577 (in fn27FB_050A)
;;     27FB:05B2 (in fn27FB_050A)
fn27FB_0637 proc
	sub	dx,dx
	mov	al,es:[bx]
	inc	bx
	cmp	al,20h
	jz	066Dh

l27FB_0641:
	cmp	al,0h
	jz	066Dh

l27FB_0645:
	shl	dx,1h
	mov	cx,dx
	shl	dx,1h
	shl	dx,1h
	add	dx,cx
	cmp	al,30h
	jc	066Dh

l27FB_0653:
	cmp	al,39h
	ja	066Dh

l27FB_0657:
	sub	al,30h
	sub	ah,ah
	add	dx,ax
	mov	al,es:[bx]
	inc	bx
	cmp	al,20h
	jz	0669h

l27FB_0665:
	or	al,al
	jnz	0645h

l27FB_0669:
	mov	ax,dx
	jmp	066Eh

l27FB_066D:
	stc

l27FB_066E:
	ret
27FB:066F                                              00                .
