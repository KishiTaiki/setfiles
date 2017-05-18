#! /bin/bash

sudo pacman -S xorg-server xorg-server-utils xorg-xinit
sudo pacman -Ss xf86-video-intel
sudo pacman -S zsh xmonad xmonad-contrib terminator neovim nitrogen openssh xmobar alsa-utils compton
sudo pacman -S otf-ipafont fcitx-im fcitx-configtool fcitx-mozc
git clone https://github.com/b4b4r07/zplug ~/.zplug
git clone https://github.com/mzyy94/RictyDiminished-for-Powerline ~/.local/share/fonts

sudo pacman -S gnuplot viewnior xsel thunderbird xrandr thunar gvfs-smb
sudo pacman -S firefox scrot flashplugin thunderbird nautilus
sudo pacman -S texlive-langjapanese texlive-most ghostscript evince poppler-data


./vimrc/vimrclink.sh
./xinitrc/xinitrclink.sh
./xmodmap/xmodmaplink.sh
./xmonad/xmonadlink.sh
./zshrc/zshrclink.sh
./terminatorconflinck.sh
./urxvt/urxvtlink.sh
./tex/texlink.sh

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim

chsh -s /usr/local

amixer sset Master unmute

#tee /sys/class/backlight/acpi_video0/brightness <<< 5
sudo tee /sys/class/backlight/intel_backlight/brightness <<< 4000

sudo pacman -S libreoffice slack-desktop bmuxd libplist ifuse libimobiledevice choqok
