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

# ---> Copy ZSH.CONF
echo -e "${BCyan}   C O P Y  ZSH.CONF ${BYellow} <------------------ ${NC}"
cp .zshrc ~/.zshrc