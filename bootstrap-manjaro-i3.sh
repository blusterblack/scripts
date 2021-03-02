#!bin/bash
# Bootstrap a newly created manjaro i3 system

sudo pacman -Syyu
sudo pacman -Syu rofi xclip fcitx fcitx-configtool fcitx-unikey pavucontrol pulseaudio okular firefox fish guake ttf-fira-code noto-fonts-cjk nodejs npm
sudo pacman -Rs epdfview palemoon-bin

wget https://github.com/hovancik/stretchly/releases/download/v1.4.0/Stretchly-1.4.0.pacman
sudo pacman -U ./Stretchly-1.4.0.pacman
rm ./Stretchly-1.4.0.pacman

wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
bash ./Anaconda3-2020.11-Linux-x86_64.sh
rm ./Anaconda3-2020.11-Linux-x86_64.sh
conda init fish

sudo timedatectl set-timezone Asia/Ho_Chi_Minh
sudo timedatectl set-ntp true

git clone https://github.com/ltbinh3999/dotfiles.git
cd dotfiles
bash ./sync.sh
