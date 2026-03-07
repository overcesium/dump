@echo off
for %%f in (*.wav) do (
    ffmpeg -i "%%f" -vn -c:a libmp3lame -b:a 128k "%%~nf.mp3"
)
pause