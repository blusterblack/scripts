#!bin/bash
# Bootstrap a newly created manjaro i3 system

sudo pacman-mirrors --fasttrack
sudo pacman -Syyu
sudo pacman -Syu rofi xclip fcitx fcitx-configtool fcitx-unikey pavucontrol pulseaudio okular firefox fish guake ttf-fira-code noto-fonts-cjk
sudo pacman -Rs epdfview palemoon-bin

pamac build visual-studio-code-bin
code --install-extension ms-python.python
code --install-extension eamodio.gitlens
code --install-extension vscode-icons-team.vscode-icons
code --install-extension TabNine.tabnine-vscode
code --install-extension ms-python.python

wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
bash ./Anaconda3-2020.11-Linux-x86_64.sh
rm ./Anaconda3-2020.11-Linux-x86_64.sh
set -U fish_user_paths ~/anaconda3/bin $fish_user_paths
conda init fish

sudo timedatectl set-ntp true

git clone https://github.com/ltbinh3999/dotfiles.git
cd dotfiles
bash ./sync.sh
