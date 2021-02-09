#!/bin/bash
sudo pacman -Syu linux-headers dkms
git clone https://github.com/Mange/rtl8192eu-linux-driver
cd rtl8192eu-linux-driver
sudo dkms add .
