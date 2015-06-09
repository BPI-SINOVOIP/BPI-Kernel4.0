export ARCH=arm
KBUILD_OUTPUT=out/bpi-m1-plus
export KBUILD_OUTPUT
mkdir -p $KBUILD_OUTPUT
export CROSS_COMPILE=arm-linux-gnueabihf-
make BananaPi_M1_Plus_defconfig
make -j8
