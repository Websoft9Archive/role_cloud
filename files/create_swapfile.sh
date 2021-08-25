#!/bin/sh
if [ ! -f '/mnt/swapfile' ]; then
#fallocate --length 2GiB /mnt/swapfile
dd if=/dev/zero of=/mnt/swapfile bs=256M count=8
chmod 600 /mnt/swapfile
mkswap /mnt/swapfile
swapoff -a
swapon /mnt/swapfile
swapon -a 
else
swapon /mnt/swapfile; fi