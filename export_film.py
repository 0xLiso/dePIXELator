import os
import struct
import subprocess
from copy import copy

import numpy as np
import matplotlib.pyplot as plt
from tqdm import tqdm


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
                    return "💣"  # ¿Es un clear?
                elif b == 2:
                    return "🎨"  # Paleta
                elif b == 3:
                    return "🖼️"  # Keyframe
                elif b == 4:
                    return "🗝️"  # Frame diferencias tipo 1
                elif b == 5:
                    return "🎬"  # Frame diferencias tipo 2
                elif b == 6:
                    return "🎞️"  # ¿Frame diferencias tipo 3?
                elif b == 7:
                    return "🎵"  # Audio
                elif b == 9:
                    return "🏂"  # ¿Esto es un salto?
                elif b == 11:
                    return "📼"  # ¿Frame diferencias tipo 4?
                elif b == 12:
                    return "❓"  # Ni idea, no parece video
                elif b == 13:
                    return "❗"  # Ni idea, no parece video
                elif b == 14:
                    return "💲"  # Ni idea, no parece video
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
        self.frame = [0] * self.video_width * self.video_height
        self.masks = (
            (0, 0, 0, 0),
            (1, 0, 0, 0),
            (0, 1, 0, 0),
            (1, 1, 0, 0),
            (0, 0, 1, 0),
            (1, 0, 1, 0),
            (0, 1, 1, 0),
            (1, 1, 1, 0),
            (0, 0, 0, 1),
            (1, 0, 0, 1),
            (0, 1, 0, 1),
            (1, 1, 0, 1),
            (0, 0, 1, 1),
            (1, 0, 1, 1),
            (0, 1, 1, 1),
            (1, 1, 1, 1),
        )

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
                print(f"{text} {endset}", end=" ")
                if endset == "📼":
                    r = self.get_chunk(count + init)
                    print(f"  ->{r[0]}", end=" ")
                print("")

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

    def go_to_line(self, byte_list, initial_position=0xC8A):
        """Se supone que son 4 bytes.
        en el ejemplo viene como 0x00040044 y nos da un
        salto a: 0x618a
        Nos llegaran como 44 00 04 00  hay que pasarlo a LSB 0x00040044"""
        ax = struct.unpack("<H", bytearray(byte_list))
        return initial_position + ax[0] * 228

    # %%

    def draw_frame_type03(self, frame_id):
        """ Los frames de tipo 3 tienen todos 31920 pixeles, asi que se pintan y ya esta """
        res = []
        kdata = self.get_chunk(frame_id)
        for color in kdata:
            res += [color]

        return res

    def draw_frame_type0b(self, frame_id, last_frameb):
        kdata = self.get_chunk(frame_id)
        last_frame = list(last_frameb)
        pos = 0
        vga_pos = 0
        if kdata[pos] == 0:
            pos += 1
            while pos < len(kdata):
                colors = kdata[pos : pos + 2]
                pos += 2
                mask = kdata[pos]
                pos += 1
                color = [colors[i] for i in self.masks[mask & 0x0F]]
                color2 = [colors[i] for i in self.masks[(mask & 0xF0) >> 4]]
                last_frame[vga_pos : vga_pos + 4] = color
                last_frame[vga_pos + 228 : vga_pos + 228 + 4] = color2
                vga_pos += 4
                if vga_pos % 228 == 0:
                    vga_pos += 228
        else:
            data_pos = 0x1F3 + 1
            bitmap_pos = 1
            vga_pos = 0
            nbits = 0
            while bitmap_pos < 0x1F3 + 1:
                current_bitmap = kdata[bitmap_pos]
                bitmap_pos += 1
                # print(hex(current_bitmap))
                for bit in format(current_bitmap, "#010b")[2:]:
                    if bit == "1":
                        nbits += 1
                        colors = kdata[data_pos : data_pos + 2]
                        data_pos += 2
                        mask = kdata[data_pos]
                        data_pos += 1
                        color = [colors[i] for i in self.masks[mask & 0x0F]]
                        color2 = [
                            colors[i] for i in self.masks[(mask & 0xF0) >> 4]
                        ]
                        last_frame[vga_pos : vga_pos + 4] = color
                        last_frame[vga_pos + 228 : vga_pos + 228 + 4] = color2
                    vga_pos += 4
                    if vga_pos % 228 == 0:
                        vga_pos += 228
                # print(hex(data_pos))
            # print(nbits)
        return last_frame

    def draw_frame_type04(self, frame_id, frame):
        last_frame = frame
        kdata = self.get_chunk(frame_id)
        next_line = 0xE4
        current_line = 0
        pos = 0
        draw_address = 0
        while pos < len(kdata):
            draw_type = kdata[pos]
            pos += 1
            repetitions = draw_type & 0x7F
            repetitions += 1

            # print(f'\t\tS:{desp_linea} T:{cuantas_veces}')
            if draw_type < 0x80:
                for _ in range(repetitions):
                    color = kdata[pos]
                    pos += 1
                    # print(f'\t\t\tPA:{hex(color)}')
                    last_frame[draw_address] = color
                    draw_address += 1
            else:
                #MSB == 1 o que es >=0x80
                color = kdata[pos]
                pos += 1
                # print(f'\t\t\tP:{hex(color)}')
                for _ in range(repetitions):
                    last_frame[draw_address] = color
                    draw_address += 1

        return last_frame  # 31920

    def draw_frame_type05(self, diff_id, last_frame):
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
                    kdata[pos : pos + 2], 0
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
                        if draw_type < 0x80:
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

        return last_frame

    def apply_palette(self, palette, img):
        try:
            pal = np.array(palette, dtype="uint8")
            indices = np.array(img, dtype="uint8")
            return pal[indices].reshape((self.video_height, self.video_width, 3))
        except Exception as e:
            print(f"Error {e}")

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

            if chunk_type == "💣":  # 0x00
                self.frame=[1]*228*140
                pass
            elif chunk_type in ["🖼️"]:  # 0x03
                self.frame = self.draw_frame_type03(self.iter_index)
            elif chunk_type in ["🗝️"]:  # 0x04
                self.frame = self.draw_frame_type04(self.iter_index, self.frame)
            elif chunk_type == "🎬":  # 0x05
                self.frame = self.draw_frame_type05(self.iter_index, self.frame)
            elif chunk_type == "🎞️":  # 0x06
                print(f"tipo 0x06 -> {self.iter_index}")
                self.frame = [0] * self.video_width * self.video_height
            elif chunk_type == "🏂":  # 0x09
                print(f"tipo 0x09 -> {self.iter_index}")
                pass  # Esto se supone que es salto y no hace nada
            elif chunk_type == "📼":  # 0x11
                self.frame = self.draw_frame_type0b(self.iter_index, self.frame)
            elif chunk_type == "❓":  # 0x12
                print(f"tipo 0x12 -> {self.iter_index}")
                pass  # No se que es pero no creo que sea video
            elif chunk_type == "❗":  # 0x13
                print(f"tipo 0x13 -> {self.iter_index}")
                pass  # No se que es pero no creo que sea video
            elif chunk_type == "💲":  # 0x14
                #print(f"tipo 0x14 -> {self.iter_index}")
                pass  # espera N frames que son para solo audio.
                #ToDo: hacer que devuelva N frames distintos.
            if self.frame is None:
                raise Exception(f"tipo {chunk_type}, {self.iter_index}")
            self.iter_index += 1
            if chunk_type in ["🎞️"]:  # Nos faltan 2 tipos de frame
                dirty_pal = [(255, 0, 0), (0, 255, 0), (0, 0, 255), (255, 0, 255)]
                return self.apply_palette(dirty_pal, self.frame), self.iter_index
            return self.apply_palette(self.current_palette, self.frame), self.iter_index
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
    # v = VIPFile("/home/liso/notebooks/DL/Zorton/data/game/iso/SN00002.VIP", 0x0DF5B6A0, 10000)
    v = VIPFile("./SN00002.VIP", 0x20, 100000)
    i = 0
    for  frame,nframe  in tqdm(v):
        plt.imsave(f"frames/frame{nframe:08}.png", frame)
        i+=1

    os.chdir("frames")
    """subprocess.call(
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
    )"""
