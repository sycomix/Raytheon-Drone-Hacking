# Force activation of the Genesys chip
gpio 30 -d ho 1
# Start capturing frames
yavta -c -f YUYV -s 640x480 /dev/video0

