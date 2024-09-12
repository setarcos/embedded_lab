#!/bin/bash

rm iso -rf
mkdir iso
cp ./images/aarch64-buildroot-linux-gnu_sdk-buildroot.tar.gz iso
cp ./images/sdcard.img iso
cp ./images/rootfs.tar.zst iso
cp ./images/Image.gz iso
cp ./images/fitImage iso
cp ./images/phytiumpi_firefly.dtb iso
cp ./dl/linux/linux-kernel-5.10_v2.1-git4.tar.gz iso

mkisofs -v -r -J -o embedded.iso iso
