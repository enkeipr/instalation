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

y="noconfirm"

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
echo -e "${BCyan} sudo pacman -Syyuu --$y ${BYellow} <-- ${NC}"
sudo pacman -Syyuu --$y
exit
echo -e "${BCyan} sudo pacman -S zsh --$y ${BYellow} <-- ${NC}"
sudo pacman -S zsh --$y
echo -e "${BCyan} sudo pacman -S zsh-autosuggestions --$y ${BYellow} <-- ${NC}"
sudo pacman -S zsh-autosuggestions --$y
echo -e "${BCyan} sudo pacman -S curl --$y ${BYellow} <-- ${NC}"
sudo pacman -S curl --$y
echo -e "${BCyan} sudo pacman -S git --$y ${BYellow} <-- ${NC}"
sudo pacman -S git --$y
echo -e "${BCyan} sudo pacman -S docker --$y ${BYellow} <-- ${NC}"
sudo pacman -S docker --$y
echo -e "${BCyan} sudo pacman -S firefox --$y ${BYellow} <-- ${NC}"
sudo pacman -S firefox --$y
echo -e "${BCyan} sudo pacman -S code --$y ${BYellow} <-- ${NC}"
sudo pacman -S code --$y
echo -e "${BCyan} sudo pacman -S go --$y ${BYellow} <-- ${NC}"
sudo pacman -S go --$y
echo -e "${BCyan} sudo pacman -S --needed base-devel ${BYellow} <-- ${NC}"
sudo pacman -S --needed base-devel
cd $HOME
echo -e "${BCyan} git clone https://aur.archlinux.org/paru.git ${BYellow} <-- ${NC}"
git clone https://aur.archlinux.org/paru.git
cd paru
echo -e "${BCyan} makepkg -si --$y ${BYellow} <-- ${NC}"
makepkg -si --$y
echo -e "${BCyan} paru --$y ${BYellow} <-- ${NC}"
paru --$y
# paru dbvisualizer
