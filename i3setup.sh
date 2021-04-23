#!bin/bash
# Bootstrap a newly created manjaro i3 system
cd ~
sudo pacman -Rs epdfview palemoon-bin
sudo pacman -Syyu
sudo pacman -Syu rofi xclip fcitx fcitx-configtool fcitx-unikey pavucontrol pulseaudio okular fish alacritty ttf-fira-code noto-fonts-cjk nodejs npm unzip polybar 
pamac build visual-studio-code-bin google-chrome typora mongodb-bin
wget https://github.com/hovancik/stretchly/releases/download/v1.4.0/Stretchly-1.4.0.pacman
wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
sudo pacman -U ~/Stretchly-1.4.0.pacman
bash ./Anaconda3-2020.11-Linux-x86_64.sh
rm ~/Stretchly-1.4.0.pacman
rm ./Anaconda3-2020.11-Linux-x86_64.sh
sudo timedatectl set-timezone Asia/Ho_Chi_Minh
sudo timedatectl set-ntp true
code --install-extension ms-python.vscode-pylance
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension gruntfuggly.todo-tree
code --install-extension eamodio.gitlens
code --install-extension ms-vscode.cpptools
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension vscode-icons-team.vscode-icons
code --install-extension xabikos.javascriptsnippets
sudo systemctl enable mongodb.service
