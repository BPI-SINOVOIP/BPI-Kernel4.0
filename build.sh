#!/bin/bash
# (c) 2015, Leo Xu <otakunekop@banana-pi.org.cn>
# Build script for BPI-Kernel4.0

echo "=========================================="
echo -e "\033[41;37m     BPI Image Build Tool  2015.06.10     \033[0m"
echo "=========================================="
echo
echo "This tool support following BPI board(s):"
echo "------------------------------------------"
echo "	1. BananaPi-M1"
echo "	2. BananaPi-M1-Plus"
echo "	3. BananaPi-M2"
echo "------------------------------------------"
if [ -z $1 ]; then read -p "Please choose a target(1-3): " choice; else choice=$1; fi
echo

echo -e "\033[31m Now building u-boot...\033[0m"
echo
cd ./u-boot-2015.04
case $choice in
	1) ./bpi-m1.sh;;
	2) ./bpi-m1-plus.sh;;
	3) ./bpi-m2.sh;;
esac
echo
echo -e "\033[31m Building u-boot success!\033[0m"
echo

echo
echo -e "\033[31m Now building linux...\033[0m"
echo
cd ../linux-4.0.2
./build.sh
echo -e "\033[31m Building linux success!\033[0m"

cd ./output/bpi
ls
