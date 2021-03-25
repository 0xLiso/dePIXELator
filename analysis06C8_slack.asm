
; Las mascaras empiezan en el offset 6. Los bytes 0-4 son el epilogo de otra funcion en segmento 0216E
21CC:0005                00 -- padding?

21CC:0006                   00 00 00 00 FF 00 00 00 00 FF      ...........
21CC:0010 00 00 FF FF 00 00 00 00 FF 00 FF 00 FF 00 00 FF ................
21CC:0020 FF 00 FF FF FF 00 00 00 00 FF FF 00 00 FF 00 FF ................
21CC:0030 00 FF FF FF 00 FF 00 00 FF FF FF 00 FF FF 00 FF ................
21CC:0040 FF FF FF FF FF FF 
; more vars
21CC:0046 00 00 == temp_DX
21CC:0048 00 00
21CC:004A 00 00 == temp_SI
21CC:004C 00 00
21CC:004E 00 00 == temp_AX
21CC:0050 00 00


;; fn21CC_06C8: 21CC:06C8
;;   Called from:
;;     1D10:128D (in fn1D10_1153)
fn21CC_06C8 proc
	push	bp
	mov	bp,sp             # prolog
	push	ds
	push	es
	push	esi
	push	edi
	mov	ax,cs:[07B3h]     # if cs:[07b3] != 1234 goto 06e3
	cmp	ax,4D2h
	jnz	06E3h

l21CC_06DA:                       # cs[07b3] == 1234
	mov	ax,cs:[07B9h]
	cmp	ax,10E1h
	jz	06F5h             # if cs:[07b3] == 1234 && cs:[07b9] == 4321 goto 06f5

l21CC_06E3:                       # cs:[07b3] != 1234 || cs:[07b9] != 4321, one of the flags doesn't match
	mov	ax,0A000h
	mov	es,ax
	mov	di,0h
	mov	ax,0FFFFh
	mov	cx,8000h

l21CC_06F1:
	rep stosw                 # fill 64K with 0xFF

l21CC_06F3:
	jmp	06F3h             # wait for interrupt?

l21CC_06F5:                       # both flags match
	lds	si,[bp+6h]        # ds:si = some pointer in the stack
	mov	bp,6h             # bp = offset of masks in this segment
	mov	ax,0A000h
	mov	es,ax
	mov	di,0C8Ah          # es:di = a000:0c8a (inicio de frame de video, pixel (10,10))
	mov	al,[si]
	inc	si
	test	al,1h             # look only at LSB
	jz	subtype0          # if LSB == 0 jump

l21CC_070A:
	jmp	subtype1

; ================ SUBTYPE 0 ======================
subtype0:
	mov	cx,46h            # 70 times (height / 2)

subtype0_outer_loop:
	mov	cs:[07B7h],cx     # save cx for outer loop
	mov	cx,39h            # 57 times (width / 4)

subtype0_inner_loop:
	mov	ax,[si]           # read 2 colors into [ah, al]
	mov	bl,[si+2h]        # bl = 1 more byte...
	and	ebx,0Fh           # ... but only the 4 LSBs
	shl	bl,2h             # bl *= mask_size
	add	bx,bp             # bx = pointer to mask number bl
	mov	edx,cs:[bx]       # edx = masks[bl]
	mov	bl,ah
	mov	bh,ah
	shl	ebx,10h
	mov	bl,ah
	mov	bh,ah             # ebx = [ah, ah, ah, ah]
	and	ebx,edx           # ebx &= mask
	mov	ah,al
	mov	cs:[07B5h],ax     # tmpVar = [al, al]
	shl	eax,10h
	mov	ax,cs:[07B5h]     # eax = [al, al, al, al]
	not	edx
	and	eax,edx           # eax &= ~mask
	or	eax,ebx           # eax = 4 bytes where mask byte FF is set to color in AH, mask byte 00 is set to color in AL
	mov	es:[di],eax       # copy to VRAM
	mov	ax,[si]           # read same 2 colors
	mov	bl,[si+2h]        # read same mask
	add	si,3h             # advance pointer
	and	ebx,0F0h          # do the same, but using the 4 MSBs this time as the mask index
	shr	bl,2h
	add	bx,bp
	mov	edx,cs:[bx]
	mov	bl,ah
	mov	bh,ah
	shl	ebx,10h
	mov	bl,ah
	mov	bh,ah
	and	ebx,edx
	mov	ah,al
	mov	cs:[07B5h],ax
	shl	eax,10h
	mov	ax,cs:[07B5h]
	not	edx
	and	eax,edx
	or	eax,ebx
	mov	es:[di+140h],eax # paint 4 pixels 1 line below
	add	di,4h            # advance dest. pointer 4 bytes
	dec	cx
	jnz	subtype0_inner_loop  # loop until whole row done

l21CC_07A0:
	add	di,19Ch
	mov	cx,cs:[07B7h]
	loop	subtype0_outer_loop_trampoline  # restore cx, loop indirectly because offset too large for LOOP

l21CC_07AB:
	pop	edi
	pop	esi
	pop	es
	pop	ds
	pop	bp
	retf

# locals
21CC:07B3          D2 04  == 1234
21CC:07B5          00 00  == temp_lower_word_of_mask
21CC:07B7          00 00  == outer loop counter
21CC:07B9          E1 10  == 4321

subtype0_outer_loop_trampoline:
	jmp	subtype0_outer_loop

; ================ SUBTYPE 1 ======================
subtype1:
	mov	bx,si                        #
	add	bx,1F3h                      # bx = pixel_data at si + 499 (si still points to a 499-byte buffer which contains a bitmap)
	mov	al,[si]                      # al = bitmap[0]
	mov	cx,46h                       # cx = height / 2
	xor	edx,edx                      # bits_processed_in_current_byte = 0

subtype1_outer_loop_07CC:
	mov	cs:[07B7h],cx                # save outer loop counter
	mov	cx,39h                       # cx = width / 4

subtype1_inner_loop_07D4:
	inc	dl                           # ++bits_processed_in_current_byte;
	cmp	dl,9h                        # if >= 9
	jnc	advance_byte_and_reset_counter_07F7h                        

l21CC_07DB:
	shl	al,1h                        # shift left to "read" one bit in carry flag
	jc	actually_paint_stuff_07FF    # if bit == 1, paint some stuff

advance_dest_and_loop_07DF:
	add	di,4h                        # advance DI 4 bytes
	loop	subtype1_inner_loop_07D4     # do the whole line

l21CC_07E4:
	add	di,19Ch                      # advance DI until beginning of (current_line + 2)
	mov	cx,cs:[07B7h]
	loop	subtype1_outer_loop_07CC     # restore CX and loop (do all lines)

l21CC_07EF:
	pop	edi
	pop	esi
	pop	es
	pop	ds
	pop	bp
	retf

advance_byte_and_reset_counter_07F7:
	inc	si
	mov	al,[si]
	xor	edx,edx
	jmp	subtype1_inner_loop_07D4     # advance pointer, read a new byte and reset counter in edx

actually_paint_stuff_07FF:
	mov	cs:[temp_SI],si
	mov	cs:[temp_DX],dx
	mov	cs:[temp_AX],ax              # spill some registers to memory
	mov	si,bx                        # si = current position in pixel_data
	mov	ax,[si]                      # [ah, al] = 2 colors
	mov	bl,[si+2h]                   # bl = 1 more byte...
	and	ebx,0Fh                      # ... but only the 4 LSBs 
	shl	bl,2h
	add	bx,bp
	mov	edx,cs:[bx]                  # edx = masks[bl]
	mov	bl,ah
	mov	bh,ah
	shl	ebx,10h
	mov	bl,ah
	mov	bh,ah                        # ebx = [ah, ah, ah, ah]
	and	ebx,edx                      # apply mask
	mov	ah,al
	mov	cs:[temp_lower_word_of_mask],ax
	shl	eax,10h
	mov	ax,cs:[temp_lower_word_of_mask]  # eax = [al, al, al, al]
	not	edx
	and	eax,edx                      # apply ~mask
	or	eax,ebx                      # combine masks for the two colors
	mov	es:[di],eax                  # paint
	mov	ax,[si]
	mov	bl,[si+2h]
	add	si,3h
	and	ebx,0F0h                     # repeat for next line, using 4 MSBs for mask index
	shr	bl,2h
	add	bx,bp
	mov	edx,cs:[bx]
	mov	bl,ah
	mov	bh,ah
	shl	ebx,10h
	mov	bl,ah
	mov	bh,ah
	and	ebx,edx
	mov	ah,al
	mov	cs:[07B5h],ax
	shl	eax,10h
	mov	ax,cs:[07B5h]
	not	edx
	and	eax,edx
	or	eax,ebx
	mov	es:[di+140h],eax             # paint next line
	mov	bx,si
	mov	dx,cs:[0046h]
	mov	ax,cs:[004Eh]
	mov	si,cs:[004Ah]
	jmp	advance_dest_and_loop_07DF
