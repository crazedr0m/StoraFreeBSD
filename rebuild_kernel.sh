#! /bin/sh

cd /usr/src
make buildkernel KERNCONF=STORA-HDD
dd if=/dev/ad0p2 of=/dev/ad1p2 bs=4k conv=sync
dd if=/usr/obj/usr/src/sys/STORA-HDD/kernel.bin of=/dev/ad0p2 bs=4k conv=sync
make installkernel KERNCONF=STORA-HDD
