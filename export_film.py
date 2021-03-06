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
                if b == 4:
                    return "🗝️"
                elif b == 7:
                    return "🎵"
                elif b == 2:
                    return "🎨"
                elif b == 5:
                    return "🎬"
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
        self.iter_index = 0
        self.current_palette = None

    def __del__(self):
        if self.fd:
            self.fd.close()

    def analyze_vip_file(self):
        self.fd.seek(0, 0)
        self.fd.seek(self.initial_offset, 1)
        while True:
            try:
                tmp_chunk = Chunk(self.fd)
                self.chunks.append(tmp_chunk)
                if 0 < self.max_chunks < len(self.chunks):
                    break
            except EOFError as e:
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
            for i, b in enumerate(h):
                text += f"{b:02x} "
                if i == 3:
                    if b == 4:
                        endset = "🗝️"
                    elif b == 7:
                        endset = "🎵"
                    elif b == 2:
                        endset = "🎨"
                    elif b == 5:
                        endset = "🎬"
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

    def draw_keyframe(self, frame_id):
        res = []
        kdata = self.get_chunk(frame_id)
        for b in kdata:
            if b == 0:
                res += [0] * self.video_width
                continue
            current_val = b
            repetitions = current_val & 0x7F  ####+ 1
            try:
                col = next()
            except:
                col = [0]
            res += col * repetitions

        return np.array(res, dtype="uint").reshape(self.video_width, self.video_height)

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
                chunk = self.chunks[self.iter_index]
                chunk_type = chunk.get_type()
            if chunk_type == "🗝️":
                self.frame = self.draw_keyframe(self.iter_index)
            if chunk_type == "🎬":
                self.frame = self.draw_difference(
                    self.frame.reshape((self.video_height * self.video_width,)),
                    self.iter_index,
                )
            self.iter_index += 1
            return self.apply_palette(self.current_palette, self.frame)
        else:
            raise StopIteration


if __name__ == "__main__":
    v = VIPFile("SN00002.VIP", 0x0DF5B6A0, 10000)

    counter = 0
    for frame in v:
        plt.imsave(f"frames/frame{counter}.png", frame)
        if counter > 600:
            break
        counter += 1

    os.chdir("frames")
    subprocess.call(
        [
            "ffmpeg",
            "-i",
            "frame%d.png",
            "-r",
            "25",
            "video_name.mp4",
        ]
    )
