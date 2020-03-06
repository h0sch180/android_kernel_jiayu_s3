#!/bin/bash
CURRENT_DIR=$PWD
export ARCH=arm64
export SUBARCH=arm
#export CROSS_COMPILE=/home/sandstranger/Android/utility/gcc-linaro-7.2.1-2017.11-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
export CROSS_COMPILE=/home/angel/LineageJS3/aarch64-linux-android-opt-gnu-8.x/bin/aarch64-opt-linux-android-
make clean
make mrproper
make h560_defconfig
make xconfig
make -j7 &> results.txt
#abootimg --create boot.img -f bootimg.cfg -k $IMAGEGZ_DTB -r initrd.img
