#!/bin/bash
# A simple Bash script

# Colors Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White
NC='\033[0m' # No Color

y="--noconfirm"

echo -e "${BCyan} ++++++++++++++++++++++++++++++++++++++++++++++"
echo -e "${BCyan} +++++ Excecuting the installation script +++++"
echo -e "${BCyan} ++++++++++++++++++++++++++++++++++++++++++++++"
echo -e "${BBlue}
                  ▟█▙
                 ▟███▙
                ▟█████▙
               ▟███████▙
              ▂▔▀▜██████▙
             ▟██▅▂▝▜█████▙
            ▟█████████████▙
           ▟███████████████▙
          ▟█████████████████▙
         ▟███████████████████▙
        ▟█████████▛▀▀▜████████▙
       ▟████████▛      ▜███████▙
      ▟█████████        ████████▙
     ▟██████████        █████▆▅▄▃▂
    ▟██████████▛        ▜█████████▙
   ▟██████▀▀▀              ▀▀██████▙
  ▟███▀▘                       ▝▀███▙
 ▟▛▀                               ▀▜▙
${NC}"
echo -e "${BCyan} + @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ +"
echo -e "${BCyan} + @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ +"
echo -e "${BCyan} + @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ +"
echo -e "${BCyan} + @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ +"
echo -e "${BCyan} ++++++++++++++++++++++++++++++++++++++++++++++"
echo -e "${BYellow}   ||||||||||||||||||||||||||||||||||||||||||"
echo ""

# ---> Install SPACESHIP
sudo rm -rf /themes/spaceship.zsh-theme
sudo rm -rf /themes/spaceship-prompt
echo -e "${BCyan}   S P A C E  S H I P${BYellow} <------------------ ${NC}"
sudo git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# ---> Install OH-MY-ZSH
rm -rf /home/ema/.oh-my-zsh
echo -e "${BCyan}   O H  M Y  Z S H ${BYellow} <------------------ ${NC}"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --noconfirm
# ---> Copy ZSH.CONF
echo -e "${BCyan}   C O P Y  ZSH.CONF ${BYellow} <------------------ ${NC}"
mv .zshrc ~/.zshrc
exit

# ---> Update the System
echo -e "${BCyan}   sudo pacman -Syyuu $y ${BYellow} <------------------ ${NC}"
sudo pacman -Syyuu $y
# ---> Install ZSH
echo -e "${BCyan}   sudo pacman -S zsh $y ${BYellow} <------------------ ${NC}"
sudo pacman -S zsh $y
# ---> Install ZSH-AUTOSUGGESTIONS
echo -e "${BCyan}   sudo pacman -S zsh-autosuggestions $y ${BYellow} <------------------ ${NC}"
sudo pacman -S zsh-autosuggestions $y
# ---> Install CURL
echo -e "${BCyan}   sudo pacman -S curl $y ${BYellow} <------------------ ${NC}"
sudo pacman -S curl $y
# ---> Install GIT
echo -e "${BCyan}   sudo pacman -S git $y ${BYellow} <------------------ ${NC}"
sudo pacman -S git $y
# ---> Install DOCKER
echo -e "${BCyan}   sudo pacman -S docker $y ${BYellow} <------------------ ${NC}"
sudo pacman -S docker $y
# ---> Install FIREFOX
echo -e "${BCyan}   sudo pacman -S firefox $y ${BYellow} <------------------ ${NC}"
sudo pacman -S firefox $y
# ---> Install VSCODE
echo -e "${BCyan}   sudo pacman -S code $y ${BYellow} <------------------ ${NC}"
sudo pacman -S code $y
# ---> Install GOLANG
echo -e "${BCyan}   sudo pacman -S go $y ${BYellow} <------------------ ${NC}"
sudo pacman -S go $y
# ---> Install GNOME-TWEAKS
echo -e "${BCyan}   sudo pacman -S gnome-tweaks $y ${BYellow} <------------------ ${NC}"
sudo pacman -S gnome-tweaks $y
# ---> Install PAPIRUS-ICONS
echo -e "${BCyan}   sudo pacman -S papirus-icon-theme $y ${BYellow} <------------------ ${NC}"
sudo pacman -S papirus-icon-theme $y
# ---> Install BASE-LEVEL
echo -e "${BCyan}   sudo pacman -S --needed base-devel ${BYellow} <------------------ ${NC}"
sudo pacman -S --needed base-devel

# ---> Install PARU
echo -e "${BCyan}   git clone https://aur.archlinux.org/paru.git /tmp/paru ${BYellow} <------------------ ${NC}"
git clone https://aur.archlinux.org/paru.git /tmp/paru
cd /tmp/paru
echo -e "${BCyan}   makepkg -si $y ${BYellow} <------------------ ${NC}"
makepkg -si $y
echo -e "${BCyan}   rm -rf /tmp/paru ${BYellow} <------------------ ${NC}"
rm -rf /tmp/paru
# ---> Update PARU
echo -e "${BCyan}   paru ${BYellow} <------------------ ${NC}"
paru
# ---> Install DBVISUALIZER
echo -e "${BCyan}   paru -S dbvisualizer $y ${BYellow} <------------------ ${NC}"
paru -S dbvis $y
# ---> Install SPOTIFY
echo -e "${BCyan}   paru -S spotify $y ${BYellow} <------------------ ${NC}"
paru -S spotify $y
