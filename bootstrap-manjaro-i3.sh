#!bin/bash
# Bootstrap a newly created manjaro i3 system
cd ~
sudo pacman-mirrors -c Australia
sudo pacman -Syyu
sudo pacman -Syu rofi xclip fcitx fcitx-configtool fcitx-unikey pavucontrol pulseaudio okular firefox fish guake ttf-fira-code noto-fonts-cjk nodejs npm unzip
sudo pacman -Rs epdfview palemoon-bin

pamac build visual-studio-code-bin marktext
code --install-extension ms-python.python
code --install-extension eamodio.gitlens
code --install-extension vscode-icons-team.vscode-icons
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension gruntfuggly.todo-tree
code --install-extension ms-toolsai.jupyter
code --install-extension xabikos.javascriptsnippets
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.vscode-pylance

wget https://github.com/hovancik/stretchly/releases/download/v1.4.0/Stretchly-1.4.0.pacman
sudo pacman -U ~/Stretchly-1.4.0.pacman
rm  -rf ~/Stretchly-1.4.0.pacman

wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
bash ./Anaconda3-2020.11-Linux-x86_64.sh
rm ./Anaconda3-2020.11-Linux-x86_64.sh

sudo timedatectl set-timezone Asia/Ho_Chi_Minh
sudo timedatectl set-ntp true
