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

echo sudo pacman -Syyuu --$y
sudo pacman -Syyuu --$y
echo sudo pacman -S zsh --$y
sudo pacman -S zsh --$y
echo sudo pacman -S curl --$y
sudo pacman -S curl --$y
echo sudo pacman -S git --$y
sudo pacman -S git --$y
echo sudo pacman -S docker --$y
sudo pacman -S docker --$y
echo sudo pacman -S firefox --$y
sudo pacman -S firefox --$y
echo sudo pacman -S code --$y
sudo pacman -S code --$y
echo sudo pacman -S go --$y
sudo pacman -S go --$y
echo sudo pacman -S --needed base-devel
sudo pacman -S --needed base-devel
cd $HOME
echo git clone https://aur.archlinux.org/paru.git
git clone https://aur.archlinux.org/paru.git
cd paru
echo makepkg -si --$y
makepkg -si --$y
echo paru --$y
paru --$y
paru dbvisualizer
cd $HOME
echo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --$y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --$y
echo git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
echo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
cd $HOME
git clone https://github.com/enkeipr/instalation.git
cd instalation
mv .zshrc $HOME
