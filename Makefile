cast:
	ffmpeg -f avfoundation -i "1" -r 30 -s 1920x1200 -c:v libx264 -pix_fmt yuv444p -preset veryfast -tune zerolatency -bsf:v h264_mp4toannexb -b:v 5000k -bufsize 5000k -f mpegts udp://192.168.0.124:8888

show:
	ssh pi omxplayer --live udp://0.0.0.0:8888
