# commands:

#extract frames (1fps)

ffmpeg -i ../../data/hdwestern/Western\ Movies\ Full\ Length\ movies\ 2020\ full\ movie\ Hd\ 720p.mp4 -r 1 western-%08d.png

#downscale to 160:x
 ffmpeg -i ./western-%08d.png -vf scale=160:-1 -qscale:v 25 ../myLR/westernulow-%08d.png


 #upscaling to 320:x
 ffmpeg -i ../myLR/westernulow-%08d.png -vf scale=320:-1 ../myLR/westernlow-%08d.png

# frames to video

ffmpeg -framerate 14 -i depixelated_frames/%10d.png depixelated.avi


# ToDo:
Implement an "Enmierdador" ™️ Gracias @BaNenKy ;)
    - ultralow res
    - paleta 64colores por escena.
    