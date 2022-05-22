#!/bin/bash
red="\e[0;91m"
blue="\e[0;94m"
expand_bg="\e[K"
blue_bg="\e[0;104m${expand_bg}"
red_bg="\e[0;101m${expand_bg}"
green_bg="\e[0;102m${expand_bg}"
green="\e[0;92m"
white="\e[0;97m"
bold="\e[1m"
uline="\e[4m"
reset="\e[0m"
usage() {
    echo "~~~~~~~~~~~"
    echo " U S A G E"
    echo "~~~~~~~~~~~"
    echo "Usage: bash linux_update.sh "
    echo "  options:"
    echo "    	1  :  To update system  "
    echo "    	2  :  To upgrade system "
    echo "    	3  :  To autormove and clean all unused dependences "
    echo "    	4  :  To update GRUB Boot "
    echo "    	h  :  Help command "
    echo "    	0  :  To Exit script"
    echo ""

}
menu_option_one() {

    figlet -f slant "UPdate.... " | lolcat -a -d 5 -s 5 -F 2
    sudo apt update -y
    clear
}
menu_option_two() {
    figlet -f slant "UPGRADE.... " | lolcat -a -d 5 -s 5 -F 2
    sudo apt dist-upgrade -y
    sudo parrot-upgrade -y

}
menu_option_three() {
    figlet -f slant "CLEAN.... " | lolcat -a -d 5 -s 5 -F 2
    sudo apt autoremove -y
    sudo apt autoclean -y
}
menu_option_four() {
    figlet -f slant "GRUB UPDATE.... " | lolcat -a -d 5 -s 5 -F 2
    sudo update-grub

}
press_enter() {
    echo ""
    echo "Operation completed!"
    echo -n "	Press Enter to continue "
    echo -e "${red}Error...!"  
    read
    clear
}

incorrect_selection() {
    echo "Incorrect selection! Try again."
}

until [ "$selection" = "0" ]; do
    clear
    echo ""
    echo -e "${red}Linux System Menu Options${reset}"
    echo -e "${blue}"
    echo "    	    1  -  UPDATE "
    echo "    	    2  -  UPGRADE "
    echo "    	    3  -  CLEAN "
    echo "    	    4  -  GRUB UPDATE "
    echo "    	    h  -  Help "
    echo "    	    0  -  Exit"
    echo -e "${reset}"
    echo -n "  Enter selection: "
    read selection
    echo ""
    case $selection in
    1)
        clear
        menu_option_one
        press_enter
        ;;
    2)
        clear
        menu_option_two
        press_enter
        ;;
    3)
        clear
        menu_option_three
        press_enter
        ;;
    4)
        clear
        menu_option_four
        press_enter
        ;;
    h)
        clear
        usage
        press_enter
        ;;
    0)
        clear
        exit
        ;;
    *)
        clear
        incorrect_selection
        press_enter
        ;;
    esac
done
until [ "$selection" = "0" ]; do
    echo [ -n ] "  Enter selection: "
    read selection
    case $selection in
    1)
        clear
        menu_option_one
        press_enter
        ;;
    2)
        clear
        menu_option_two
        press_enter
        ;;
    3)
        clear
        menu_option_three
        press_enter
        ;;
    4)
        clear
        menu_option_four
        press_enter
        ;;
    h)
        clear
        usage
        press_enter
        ;;
    0)
        clear
        exit
        ;;
    *)
        clear
        incorrect_selection
        press_enter
        ;;
    esac
done
