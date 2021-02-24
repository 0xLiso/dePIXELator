int 21  -> 0x CD 21
mov AH XX -> 0x B4 XX



aqui peta !!!! : 2e8d:0207

202F:0207  9A831AA201          call 01A2:1A83                                  



202F:023A  9AB604E11F          call 1FE1:04B6   
0


NO casca 01A2:1A9F  E854ED              call 000007F6 ($-12ac)

01A2:1ACC  E879FF              call 00001A48 ($-87)


aqui hay un loop que parece que carga cosas.
202F:01FD  9A0704181E          call 1E18:0407
en el loop no falla.


202F:023A  9AB604E11F          call 1FE1:04B6 

202F:023A


Parece que esta es la que casca:
1FE1:04E7  9AE2032F20          call 202F:03E2                                  

202F:0541  9A241CA201          call 01A2:1C24                                  


202F:0578  9AF921A201          call 01A2:21F9

Ha cascado justo aqui NOS HEMOS QUEDADO AQUI
202F:05D1  9AB903A201          call 01A2:03B9 

Inicio funcion READ_BUFFER_OR_LINE_FUN_1000_3bb6
01A2:3BB6  55                  push bp        


Inicio F Open
01A2:3615  55                  push bp


Inicio funcion get_file_attr
01A2:2A76  55                  push bp


breakpoint Open File
bp 01A2:37AC


Parece el OPEN_VIP
202F:00F9  C8020000            enter 0002,00  

Memoria con fname?
2D12:1FA2 


Justo despues de cargar el sn00002.vip

202F:0225  83C408              add  sp,0008
bp 202F:0225 

despues del seek 0x20 bytes

08CD:153F  C81A0000            enter 001A,00

seek#2
1872:002A  66268B07            mov  eax,es:[bx]            es:[7F1B]=0DF5B6A0 
MEMORIA: 225C:7F1B     A0 B6 F5 0D
bp 1872:002A

lo que hace con SN00005.VIP
bp 16b2:02ae  <- función que lee el vip 
open -> seek 20h -> seek#2 (a 0DF5B6A0) -> read 8 bytes [11 02 00 02 f0 d2 60 c0]

-> hace cosas(_1368) 

-> read 211h bytes (2 primeros bytes de los 8 de antes) ->
...

->seek a 0df5b8b9 (hex(0x0DF5B6A0 + 0x211 +0x8))
-> read 0x8 bytes [30 02 02 04 F0 D2 60 C0]
-> read 0x0230 bytes
-> seek 0bytes ;)
-> read 0x8 bytes [B9 01 00 07 F0 D2 60 C0]
-> read 0x01b9h bytes
-> seek 0bytes ;)  [0X0DF5BCB2]
-> read 0x8 bytes [B9 01 00 07 F1 D2 60 C0]
-> read 0x01b9 bytes
-> read 0x8 bytes [3c 00 02 05 f2 d2 60 c0]
-> read 0x003c bytes
-> read 0x8 bytes [B9 01 00 07 f2 d2 60 c0]
-> read 0x01b9 bytes
-> read 0x8 bytes [b9 01 00 07 f3 d2 60 c0]
-> read 0x01b9 bytes
-> read 0x8 bytes [3a 00 02 05 f4 d2 60 c0]
-> read 0x003a
-> read 0x8 bytes [b9 01 00 07 f4 d2 60 c0]
-> read 0x01b9  **
-> read 0x8 bytes [2e 00 02 05 f6 d2 60 c0]
-> read 0x002e bytes
-> seek 0 bytes :) [0x0df5c633]
-> read 0x8 bytes [B9 01 00 07 F6 D2 60 C0]
-> read 0x01b9 bytes
-> seek 0 bytes :) [0x0df5c7f4]
-> read 0x8 bytes [B9 01 00 07 F7 D2 60 C0]
-> read 0x01b9 bytes
-> seek 0 bytes :) [0x0df5c9b5]
-> read 0x8 bytes [20 00 02 05 F8 D2 60 C0]
-> read 0x0020 bytes
-> read 0x8 bytes [B9 01 00 07 F8 D2 60 C0]
-> read 0x01b9 bytes
-> seek 0 bytes :) [0x0df5cb9e]
-> read 0x8 bytes [B9 01 00 07 F9 D2 60 C0]
-> read 0x01b9 bytes
-> seek 0 bytes :) [0x0df5cd5f]
-> read 0x8 bytes [22 00 02 05 FA D2 60 C0]
-> read 0x0022 bytes
-> read 0x8 bytes [B9 01 00 07 FA D2 60 C0]

2D12:1FC8  <- esto lo ha limpiado de memoria (a 0)



CHUNK HEADER
b0-1	b2	b3          b4-5		b6-7	
size	?	type	    frame 		60C0
		init,frame,sound?

value b3, kind
4	  inicio
7	  musica
2	  kaka
5	  imagen?



cabecera interesante, sospecha audio:
ea 8c 02 05 4a e0 60 c0
posibles cargas de offset

1872:0021  668946FC            mov  [bp-04],eax            ss:[1F96]=87681CF5

move a donde empieza a leer
01A2:06C1  8B4E0A              mov  cx,[bp+0A]             ss:[1F8E]=0DF5      
01A2:06C4  8B5608              mov  dx,[bp+08]             ss:[1F8C]=B680
01A2:06C7  CD21                int  21 


Poner Breakpint aqui!! bp 1872:0007
1872:000D  B85C22              mov  ax,225C     

bp 1872:000D  


lee desde el offset rarro 8 bytes aqui:
16B2:0FD0  668946F8            mov  [bp-08],eax            ss:[1F7C]=0DF5B6A0


Descubrimientos de VIP file: [EX_PIAN.VIP]

8 bytes cabezera.
struct header{
	int16 size_chunk;
	byte unk0; 
	byte unk1;
	byte unk2;
	byte unk3;
	byte unk4;
	byte unk5;
	byte unk6;
}

Tamaño chunk completo
sizeof(header) + size_chunk Datos


Fichero [SN00002.VIP]




