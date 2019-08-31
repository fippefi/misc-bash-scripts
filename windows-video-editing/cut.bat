@ECHO OFF
ECHO "%~1"
set /p begtime="Enter start of clip in MM:SS:  "
set /p durtime="Enter duration of cut in MM:SS:  "

D:\Video\webm\Binaries\Win64\ffmpeg.exe -i "%~1" -c copy -ss "%begtime%" -t "%durtime%"  "%~1-copy.mp4"