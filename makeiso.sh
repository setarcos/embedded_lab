#!/bin/bash

rm iso -rf
mkdir iso
cp images/aarch64-buildroot-linux-gnu_sdk-buildroot.tar.gz iso
cp sdcard.img iso
cp images/rootfs.tar.bz2 iso
cp images/Image iso
cp dl/linux/* iso
mkisofs -v -r -J -o pi.iso iso
