@echo off

start "" /min /d "C:\Program Files (x86)\VideoLAN\VLC" "vlc.exe" -vvv dshow:// --sout=#transcode{venc=ffmpeg,vcodec=mp2v,vb=8000,fps=30,acodec=mpga,ab=192,channels=2,samplerate=44100}:std{access=http,mux=ts,dst=:8085} --no-sout-rtp-sap --no-sout-standard-sap --ttl=1 --sout-keep :dshow-vdev=screen-capture-recorder :dshow-adev=virtual-audio-capturer :dshow-caching=2000