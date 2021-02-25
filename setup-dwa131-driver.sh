#!/bin/bash
# This script will install the driver of DWA-131 wifi USB for ManjaroOS.
# Arch based distro can use this too.

uname –r # Kernel version
sudo pacman -Syu linux-headers dkms # Choose header version corresponding to your kernel version. Need to reboot.
cd ~/
git clone https://github.com/Mange/rtl8192eu-linux-driver
cd ~/rtl8192eu-linux-driver
sudo dkms add .
sudo dkms install rtl8192eu/1.0
echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf
echo -e "8192eu\n\nloop" | sudo tee /etc/modules
sudo grub-mkconfig -o /boot/grub/grub.cfg
echo 'Set up is completed. Reboot and connect to a network'
