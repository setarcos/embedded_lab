#!/bin/sh
# Put additional files to sdcard image from buildroot
# 1. the images directory is a soft link to the buildroot output/image
# 2. the labs directory is a soft link to lab code for test purpose

cp images/sdcard.img . -f
sudo mount sdcard.img -o offset=512 k
sudo cp u-boot.bin k
sudo cp u-bootp.bin k # for 3b+
sudo cp uboot.env k
sudo cp config.txt k
sudo umount k

if [ "$1" = "test" ]; then
    sudo mount sdcard.img -o offset=33554944 k
    sudo cp labs/guess/guess k/root/
    sudo cp labs/guess_qml/guess_qml k/root
    sudo cp labs/guess_qml/main.qml k/root
    #sudo cp rpi_tut/01/triangle.bin k/root/
    #sudo cp rpi_tut/01/*.glsl k/root/
    sudo umount k
fi
