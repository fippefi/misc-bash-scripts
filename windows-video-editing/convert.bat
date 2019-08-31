@ECHO OFF
ECHO "%~1"

D:\Video\webm\Binaries\Win64\ffmpeg.exe -i "%~1" -c:v libx264 -pix_fmt yuv420p -threads 16 -slices 4 -lag-in-frames 16 -auto-alt-ref 1 -ac 2 -c:a libvo_aacenc -minrate:v 10M -b:v 10M -maxrate:v 10M -bufsize 6000k -rc_init_occupancy 40000k -qcomp 0 -b:a 128k "%~1.YT.mp4"