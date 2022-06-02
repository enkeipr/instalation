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

# ---> Update the System
echo -e "${BCyan}   U P D A T I N G  T H E  S Y S T E M ${BYellow} <------------------ ${NC}"
sudo pacman -Syyuu $y

# ---> Install ZSH
echo -e "${BCyan}   I N S T A L L I N G  // zsh ${BYellow} <------------------ ${NC}"
sudo pacman -S zsh $y

# ---> Install ZSH-AUTOSUGGESTIONS
echo -e "${BCyan}   I N S T A L L I N G // zsh-autosuggestions ${BYellow} <------------------ ${NC}"
sudo pacman -S zsh-autosuggestions $y

# ---> Install CURL
echo -e "${BCyan}   I N S T A L L I N G // curl ${BYellow} <------------------ ${NC}"
sudo pacman -S curl $y

# ---> Install GIT
echo -e "${BCyan}   I N S T A L L I N G // git ${BYellow} <------------------ ${NC}"
sudo pacman -S git $y

# ---> Install DOCKER
echo -e "${BCyan}   I N S T A L L I N G // docker ${BYellow} <------------------ ${NC}"
sudo pacman -S docker $y

# ---> Install FIREFOX
echo -e "${BCyan}   I N S T A L L I N G // firefox ${BYellow} <------------------ ${NC}"
sudo pacman -S firefox $y

# ---> Install VSCODE
echo -e "${BCyan}   I N S T A L L I N G // code ${BYellow} <------------------ ${NC}"
sudo pacman -S code $y

# ---> Install GOLANG
echo -e "${BCyan}   I N S T A L L I N G // go ${BYellow} <------------------ ${NC}"
sudo pacman -S go $y

# ---> Install GNOME-TWEAKS
echo -e "${BCyan}   I N S T A L L I N G // gnome-tweaks ${BYellow} <------------------ ${NC}"
sudo pacman -S gnome-tweaks $y

# ---> Install PAPIRUS-ICONS
echo -e "${BCyan}   I N S T A L L I N G // papirus-icon-theme ${BYellow} <------------------ ${NC}"
sudo pacman -S papirus-icon-theme $y

# ---> Install BASE-LEVEL
echo -e "${BCyan}   I N S T A L L I N G // base-devel ${BYellow} <------------------ ${NC}"
sudo pacman -S --needed base-devel

# ---> Install PARU
echo -e "${BCyan}   I N S T A L L I N G // paru ${BYellow} <------------------ ${NC}"
git clone https://aur.archlinux.org/paru.git /tmp/paru
cd /tmp/paru
echo -e "${BCyan}   makepkg -si $y ${BYellow} <------------------ ${NC}"
makepkg -si $y
echo -e "${BCyan}   rm -rf /tmp/paru ${BYellow} <------------------ ${NC}"
rm -rf /tmp/paru

# ---> Update PARU
echo -e "${BCyan}   U P D A T E  paru // ${BYellow} <------------------ ${NC}"
paru

# ---> Install DBVISUALIZER
echo -e "${BCyan}   I N S T A L L I N G // dbvisualizer ${BYellow} <------------------ ${NC}"
paru -S dbvis $y

# ---> Install SPOTIFY
echo -e "${BCyan}   I N S T A L L I N G // spotify ${BYellow} <------------------ ${NC}"
paru -S spotify $y

# ---> Install SPACESHIP
sudo rm -rf /themes/spaceship.zsh-theme
sudo rm -rf /themes/spaceship-prompt
cd /home/ema/insalation
echo -e "${BCyan}   I N S T A L L I N G // spaceship ${BYellow} <------------------ ${NC}"
sudo git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# ---> Install OH-MY-ZSH
sudo rm -rf /home/ema/.oh-my-zsh
sudo rm -rf ~/.zshrc.pre-oh-my-zsh
sudo rm -rf /home/ema/.zshrc.pre-oh-my-zsh
echo -e "${BCyan}   I N S T A L L I N G // ohmyzsh ${BYellow} <------------------ ${NC}"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
