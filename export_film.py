import os
import struct
import subprocess
from copy import copy

import numpy as np
import matplotlib.pyplot as plt


class Chunk:
    __header_size = 8
    header = None
    data_position = -1
    fd = None

    def __init__(self, file):
        initial_pos = file.tell()
        self.header = file.read(self.__header_size)
        if not self.header:
            raise EOFError("EOF reached")
        if self.header[6] != 0x60 or self.header[7] != 0xC0:
            file.seek(initial_pos, 0)
            raise LookupError("Chunk Header should end with 0x60c0")
        self.data_size = (self.header[1] * 256) + self.header[0]
        self.nframe = self.header[5] * 0xFF + self.header[4]
        self.type = self.header[3]
        self.data_position = file.tell()
        file.seek(self.data_size, 1)
        self.fd = file

    def get_data(self):
        initial_pos = self.fd.tell()
        self.fd.seek(self.data_position, 0)
        result = self.fd.read(self.data_size)
        self.fd.seek(initial_pos, 0)
        return result

    def get_type(self):
        for i, b in enumerate(self.header):
            if i == 3:
                if b == 0:
                    return "💣" # ¿Es un clear?
                elif b == 2:
                    return "🎨" # Paleta
                elif b == 3:
                    return "🖼️" # Keyframe
                elif b == 4:
                    return "🗝️" # Frame diferencias tipo 1
                elif b == 5:
                    return "🎬" # Frame diferencias tipo 2
                elif b == 6:
                    return "🎞️" # ¿Frame diferencias tipo 3?
                elif b == 7:
                    return "🎵" # Audio
                elif b == 9:
                    return "🏂" # ¿Esto es un salto?
                elif b == 11:
                    return "📼" # ¿Frame diferencias tipo 4?
                elif b == 12:
                    return "❓" # Ni idea, no parece video
                elif b == 13:
                    return "❗" # Ni idea, no parece video
                elif b == 14:
                    return "💲" # Ni idea, no parece video
        return "💩"


class VIPFile:
    fd = None
    filename = ""
    chunks = []
    initial_offset = 0x20

    def __init__(self, filename, initial_offset=0x20, max_chunks=-1):
        self.filename = filename
        self.fd = open(filename, "rb")
        self.initial_offset = initial_offset
        self.max_chunks = max_chunks
        self.video_height = 0x8C
        self.video_width = 0xE4
        self.analyze_vip_file()

    def __del__(self):
        if self.fd:
            self.fd.close()

    def analyze_vip_file(self):
        self.fd.seek(self.initial_offset, 0)
        while True:
            try:
                tmp_chunk = Chunk(self.fd)
                self.chunks.append(tmp_chunk)
                if 0 < self.max_chunks < len(self.chunks):
                    break
            except EOFError as e:
                print(f"EOF with {len(self.chunks)}")
                break
            except Exception as e:
                print(e)
                raise e

    def get_chunk(self, chunk_id):
        return list(self.chunks[chunk_id].get_data())

    def show_info(self, init=0, end=-1, filter_by=[]):
        if end < 0:
            end = len(self.chunks)
        for count, bh in enumerate(self.chunks[init:end]):
            h = bh.header
            endset = "💩💩💩💩💩💩💩💩💩💩💩"
            size = bh.data_size

            text = ""
            endset = bh.get_type()
            for i, b in enumerate(h):
                text += f"{b:02x} "
            if endset in filter_by or len(filter_by) == 0:
                print(f"{count + init:06}: [{size:>6}]", end=" ")
                print(f"{text} {endset}")

    def show_info_acc(self, init=0, end=-1, filter_by=[]):
        res = []
        if end < 0:
            end = len(self.chunks)
        for count, bh in enumerate(self.chunks[init:end]):
            h = bh.header
            for i, b in enumerate(h):
                if i == 3:
                    if b == 5:
                        res.append(count + init)
        return res

    def draw_palette(self, id):
        palette = self.get_palette(id)
        colors = [x for x in range(len(palette))]
        while len(colors) < 256:
            colors.append(0)
        palette_matrix = np.array(palette, dtype="uint8")
        indices = np.array(colors)
        plt.imshow(palette_matrix[indices].reshape((16, 16, 3)))

    def get_palette(self, palette_id):
        raw = self.get_chunk(palette_id)
        palette = [(0, 0, 0)]
        i = 2
        while True:
            try:
                r, g, b = raw[i : i + 3]  # leemos RGB
                i += 3
                palette.append((r * 4, g * 4, b * 4))
            except Exception as e:
                break
        return palette

    ''' Los frames de tipo 3 tienen todos 31920 pixeles, asi que se pintan y ya esta '''
    def draw_frame_type03(self, frame_id):
        res = []
        kdata = self.get_chunk(frame_id)
        for color in kdata:
            res += [color]

        return np.array(res, dtype="uint").reshape(self.video_width, self.video_height)  # 36480

    def draw_keyframe(self, frame_id, frame):
        last_frame = frame
        kdata = self.get_chunk(frame_id)
        next_line = 0xE4
        current_line = 0
        pos = 0
        num_commands = 140
        draw_address = current_line
        while num_commands != 0:
            draw_type = kdata[pos]
            pos += 1
            repetitions = draw_type & 0x7F
            repetitions += 1

            # print(f'\t\tS:{desp_linea} T:{cuantas_veces}')
            if draw_type <= 0x80:
                for _ in range(repetitions):
                    color = kdata[pos]
                    pos += 1
                    # print(f'\t\t\tPA:{hex(color)}')
                    last_frame[draw_address] = color
                    draw_address += 1
            else:
                color = kdata[pos]
                pos += 1
                # print(f'\t\t\tP:{hex(color)}')
                for _ in range(repetitions):
                    last_frame[draw_address] = color
                    draw_address += 1

            num_commands -= 1
        current_line += next_line
        return np.array(last_frame, dtype="uint8").reshape(self.video_width, self.video_height)  # 31920

    def go_to_line(self, byte_list, initial_position=0xC8A):
        """Se supone que son 4 bytes.
        en el ejemplo viene como 0x00040044 y nos da un
        salto a: 0x618a
        Nos llegaran como 44 00 04 00  hay que psarlo a LSB 0x00040044"""
        ax = struct.unpack("<H", bytearray(byte_list))
        return initial_position + ax[0] * 228

    # %%

    def draw_difference(self, last_frame, diff_id):
        next_line = 0xE4
        try:
            kdata = list(self.chunks[diff_id].get_data())
            # nos saltamos los 2 primeros bytes
            pos = 2
            num_parts = kdata[pos]
            pos += 2
            current_line = 0
            while num_parts != 0:
                current_line += self.go_to_line(
                    kdata[pos:pos + 2], 0
                )  # desplazamiento inicial
                pos += 2
                num_lines = kdata[pos]
                # print(f'L:{num_lineas}')
                pos += 2
                while num_lines != 0:
                    num_commands = kdata[pos]
                    # print(f'\tC:{num_commands}')
                    pos += 1
                    draw_address = current_line
                    while num_commands != 0:
                        draw_address += kdata[pos]
                        pos += 1
                        draw_type = kdata[pos]
                        pos += 1
                        repetitions = draw_type & 0x7F
                        repetitions += 1

                        # print(f'\t\tS:{desp_linea} T:{cuantas_veces}')
                        if draw_type <= 0x80:
                            for _ in range(repetitions):
                                color = kdata[pos]
                                pos += 1
                                # print(f'\t\t\tPA:{hex(color)}')
                                last_frame[draw_address] = color
                                draw_address += 1
                        else:
                            color = kdata[pos]
                            pos += 1
                            # print(f'\t\t\tP:{hex(color)}')
                            for _ in range(repetitions):
                                last_frame[draw_address] = color
                                draw_address += 1

                        num_commands -= 1
                    num_lines -= 1
                    current_line += next_line
                num_parts -= 1
        except Exception as e:
            print(f"Exception!!!!!! en frame id: {diff_id}")
            pass
        return last_frame

    def apply_palette(self, palette, img):
        pal = np.array(palette, dtype="uint8")
        indices = np.array(img, dtype="uint8")
        return pal[indices].reshape((self.video_height, self.video_width, 3))

    def __iter__(self):
        self.iter_index = 0
        self.current_palette = None
        self.frame = [0 for x in range(self.video_width * self.video_height)]
        return self

    def __next__(self):
        if self.iter_index <= self.max_chunks:
            chunk = self.chunks[self.iter_index]
            chunk_type = chunk.get_type()
            while chunk_type in ["🎵", "🎨"]:
                if chunk_type == "🎨":
                    self.current_palette = self.get_palette(self.iter_index)
                self.iter_index += 1
                if self.iter_index >= len(self.chunks):
                    raise StopIteration
                chunk = self.chunks[self.iter_index]
                chunk_type = chunk.get_type()

            if chunk_type == "💣": # 0x00
                self.frame = [0] * self.video_width * self.video_height
            elif chunk_type in ["🖼️"]: # 0x03
                self.frame = self.draw_frame_type03(self.iter_index)
            elif chunk_type in ["🗝️"]: # 0x04
                self.frame = self.draw_keyframe(self.iter_index, self.frame)
            elif chunk_type == "🎬": # 0x05
                self.frame = self.draw_difference(
                    np.array(self.frame, dtype="uint8").reshape((self.video_height * self.video_width,)),
                    self.iter_index,
                )
            elif chunk_type == "🎞️": # 0x06
                self.frame = [0] * self.video_width * self.video_height
            elif chunk_type == "🏂": # 0x09
                pass # Esto se supone que es salto y no hace nada
            elif chunk_type == "📼": # 0x11
                self.frame = [1] * self.video_width * self.video_height
            elif chunk_type == "❓": # 0x12
                pass # No se que es pero no creo que sea video
            elif chunk_type == "❗": # 0x13
                pass # No se que es pero no creo que sea video
            elif chunk_type == "💲": # 0x14
                pass # No se que es pero no creo que sea video

            self.iter_index += 1
            if chunk_type in ["🎞️", "📼"]: # Nos faltan 2 tipos de frame
                dirty_pal = [(255,0,0), (0,255,0), (0,0,255), (255,0,255)]
                return self.apply_palette(dirty_pal, self.frame)
            return self.apply_palette(self.current_palette, self.frame)
        else:
            raise StopIteration

    def __getitem__(self, item):
        items = []
        if isinstance(item, int):
            start, stop = item, item + 1
        else:
            start = item.start if item.start is not None else 0
        stop = item.stop if item.stop is not None else len(self.chunks)
        for i, frame in enumerate(self):
            if i == stop:
                break
            if i >= start:
                items.append(frame)
        return items


if __name__ == "__main__":
    #v = VIPFile("/home/liso/notebooks/DL/Zorton/data/game/iso/SN00002.VIP", 0x0DF5B6A0, 10000)
    v = VIPFile("/home/liso/notebooks/DL/Zorton/data/game/iso/SN00002.VIP", 0x20, 10000)

    for i, frame in enumerate(v[700:3700]):
        plt.imsave(f"frames/frame{i:04}.png", frame)

    os.chdir("frames")
    '''subprocess.call(
        [
            "ffmpeg",
            "-i",
            "frame%d.png",
            "-r",
            "25",
            "-c:v",
            "libx264",
            "video.mp4",
        ]
    )'''

    
    
    
def draw_frame_0b(chunk_id,last_frame):
    kdata = v.get_chunk(chunk_id)
    pos = 0
    vga_pos = 0
    if kdata[pos] == 0:
        print("es un 0!!!!")
        pos+=1
        while pos<len(kdata):
            colors = kdata[pos:pos+2]
            pos+=2
            maskara = kdata[pos] 
            pos+=1
            color = [ colors[i] for i in maskaras[maskara & 0x0f]]
            color2 = [ colors[i] for i in maskaras[(maskara & 0xf0)>>4]]
            last_frame[vga_pos:vga_pos+4]=color
            last_frame[vga_pos+228:vga_pos+228+4]=color2
            vga_pos+=4
            if vga_pos%228 == 0:
                vga_pos+=228
    else:
        print("es un 1!!!!")
        pos+=1
        while pos<len(kdata):
            colors = kdata[pos:pos+2]
            pos+=2
            maskara = kdata[pos] 
            pos+=1
            color = [ colors[i] for i in maskaras[maskara & 0x0f]]
            color2 = [ colors[i] for i in maskaras[(maskara & 0xf0)>>4]]
            last_frame[vga_pos:vga_pos+4]=color
            last_frame[vga_pos+228:vga_pos+228+4]=color2
            vga_pos+=4
            if vga_pos%228 == 0:
                vga_pos+=228
        
    
