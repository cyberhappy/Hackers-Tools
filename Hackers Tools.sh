#!/bin/bash
##   Hackers Tools   :       Automated installing hacking tools
##   Author          :       AHMED SAHAL
##   Version         :       1.0
##   Github          :       https://github.com/cyberhappy/


##   THANKS TO :
##   Awil Mohammed - https://github.com/

##                   GNU GENERAL PUBLIC LICENSE

# Copyright (C) 2022  CYBER-HAPPY (https://github.com/cyberhappy/)


echo "Trying to install boxes ...."
sudo apt install boxes
clear
echo -e "[-] Tool Created by Ahmed Sahal \n https://github.com/cyberhappy " | boxes -d bear -a c

echo -e "\e[1;31m ------------------------------------------------------------------"
echo -e "\e[1;43m Press enter to reload the menu \e[0m"
echo -e "\e[0;32m"
PS3="[-] Select an option : "
select answer in Nmap Tor Metasploit Wireshark Burp-Suite Ettercap Aircrack Hashcat wpscan proxychains Terminator recon-ng brave-browser Medusa SQLMap SET-toolkit mac-changer Nikto Crunch Quit
do
case $answer in
    Nmap)
    echo "Trying to install Nmap..."
        sudo apt install nmap
        nmap
        ;;

    Tor)
    echo "Tryig to install Tor browser and services..."
        sudo apt install tor torbrowser-launcher
        tor
        ;;

    Metasploit)
    echo "Trying to update and install Metasploit Framework..."
        sudo apt-get update
        sudo apt install metasploit-framework
        msfconsole
        ;;

    Wireshark)
    echo "Trying to install Wireshark..."
        sudo apt-get install wireshark
        wireshark

        ;;
    
    Burp-Suite)
    echo "Trying to install openjdk and Burp Suite..."
        sudo apt-get install burpsuite
        burpsuite
        ;;

    Ettercap)
    echo "Trying to install Ettercap..."
    sudo apt-get install ettercap-graphical
    ettercap -G
    ;;

    Aircrack)
    echo "Trying to install Aircrack..."
        sudo apt-get update
    sudo apt-get install -y aircrack-ng
    aircrack-ng -–help
    ;;
    
    Hashcat)
    echo "Trying to install Hashcat..."
        sudo apt-get install hashcat
        man hashcat
        ;;

        wpscan)
        echo "Trying to update and install wpscan..."
        sudo apt update
        sudo apt install ruby-full
        sudo gem install wpscan
        ;;

        proxychains)
        echo "Trying to install proxychains"
        sudo apt update
        sudo apt-get install -y proxychains
        ;;

        Terminator)
        echo "Trying to install Terminator..."
        sudo apt update
        sudo apt install terminator
        terminator
        ;;

        recon-ng)
        echo "Trying to install recon ng..."
            sudo apt-get install recon-ng
            recon-ng
            ;;

            brave-browser)
            echo "Trying to install Brave browser..."
            sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser
echo "Opening the Brave Browser"
brave-browser
;;
    Medusa)
    echo "Trying to install Medusa..."
    sudo apt-get install medusa
    man medusa
    ;;

    SQLMap)
    echo "Trying to update and install SQLMap..."
        sudo apt-get update
        sudo apt-get -y install sqlmap
        man sqlmap
        ;;

        SET-toolkit)
        cd
        echo "Trying to install git and pip3..."
         sudo apt update
         sudo apt install git && sudo apt install pip3
         git clone https://github.com/trustedsec/social-engineer-toolkit setoolkit/
         cd setoolkit
         pip3 install -r requirements.txt
        python setup.py
         sudo setoolkit
        ;;

        mac-changer)
        echo "Trying to install Mac changer..."
        sudo apt-get install macchanger
        ;;

        Nikto)
        echo "Tryig to install Nikto..."
        sudo apt-get update
        sudo apt-get install nikto -y
        man nikto
        ;;

        Crunch)
        echo "Tryng to install Crunch..."
        sudo apt-get install crunch
        crunch
        ;;







# quit selected loop start

Quit)
break 
;;

# starting un assigned selection loop

    *)
                        echo "You need to enter something from the list! "
                        ;;
    esac
    done