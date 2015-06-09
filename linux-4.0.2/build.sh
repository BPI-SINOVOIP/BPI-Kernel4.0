#!/bin/bash
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export KBUILD_OUTPUT=output/bpi
mkdir -p $KBUILD_OUTPUT
make bpi_defconfig
LOADADDR=0x40008000 make -j8 uImage dtbs
make -j8 modules
make -j8 INSTALL_MOD_PATH=out modules_install

