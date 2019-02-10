#!/bin/bash

# echo "> CPU"
# cat /proc/cpuinfo

# echo "> CPU"
# cat /proc/cpuinfo

echo "> CPU temp"
vcgencmd measure_temp

echo "> Clocks"
for src in arm core h264 isp v3d uart pwm emmc pixel vec hdmi dpi ; do \
echo -e "$src:\t$(vcgencmd measure_clock $src)" ; \
done

echo "> Voltages"
for id in core sdram_c sdram_i sdram_p ; do \
echo -e "$id:\t$(vcgencmd measure_volts $id)" ; \
done

echo "> Codecs"
for codec in H264 MPG2 WVC1 MPG4 MJPG WMV9 ; do \
echo -e "$codec:\t$(vcgencmd codec_enabled $codec)" ; \
done

echo "> Free memory"
free -o -h
