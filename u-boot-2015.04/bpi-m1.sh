export ARCH=arm
KBUILD_OUTPUT=out/bpi-m1
export KBUILD_OUTPUT
mkdir -p $KBUILD_OUTPUT
export CROSS_COMPILE=arm-linux-gnueabihf-
make BananaPi_M1_defconfig
make -j8
