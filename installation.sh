#!/bin/bash
# A simple Bash script

y="noconfirm"

echo ++++++++++++++++++++++++++++++++++++++++++++++
echo +++++ Excecuting the installation script +++++
echo ++++++++++++++++++++++++++++++++++++++++++++++
echo +
echo +
echo +
echo +

sudo pacman -Syyuu
sudo pacman -S zsh --$y
sudo pacman -S curl --$y
sudo pacman -S git --$y
sudo pacman -S docker --$y
sudo pacman -S firefox --$y
sudo pacman -S code --$y
sudo pacman -S go --$y
sudo pacman -S --needed base-devel
cd $HOME
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --$y
paru --$y
paru dbvisualizer
cd $HOME
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --$y
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
cd $HOME
git clone https://github.com/enkeipr/instalation.git
cd instalation
mv .zshrc $HOME
