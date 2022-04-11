#!/bin/bash
echo "==============================================================="
figlet -f slant "UPdate.... "  | lolcat -a -d 5 -s 5 -8 -F 2
echo "==============================================================="
sudo apt update -y
echo "==============================================================="
figlet -f slant "UPGRADE.... "  | lolcat -a -d 5 -s 5 -8 -F 2
echo "==============================================================="
sudo apt dist-upgrade -y
sudo parrot-upgrade -y
echo "==============================================================="
figlet -f slant "CLEAN.... "  | lolcat -a -d 5 -s 5 -8 -F 2
echo "==============================================================="
sudo apt autoremove -y
sudo apt autoclean -y
figlet -f slant "GRUB UPDATE.... "  | lolcat -a -d 5 -s 5 -8 -F 2
echo "==============================================================="
sudo update-grub
