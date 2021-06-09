#!/bin/bash -e

wget https://raw.githubusercontent.com/pexcn/vps2arch/master/vps2arch
chmod +x vps2arch
./vps2arch -b grub -n systemd-networkd
#./vps2arch -b grub -n systemd-networkd -m "https://mirrors.163.com/archlinux"
#./vps2arch -b grub -n systemd-networkd -m "https://mirrors.kernel.org/archlinux"
