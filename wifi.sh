#!/bin/bash
# This script will install the driver of DWA-131 wifi USB for ManjaroOS.

sudo pacman -Syu linux-headers dkms
cd ~/
git clone https://github.com/Mange/rtl8192eu-linux-driver
cd ~/rtl8192eu-linux-driver
sudo dkms add .
sudo dkms install rtl8192eu/1.0
rm -rf ~/rtl8192eu-linux-driver
echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf
echo -e "8192eu\n\nloop" | sudo tee /etc/modules
sudo grub-mkconfig -o /boot/grub/grub.cfg