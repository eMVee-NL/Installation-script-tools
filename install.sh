#!/bin/bash
#Enter chmod +x install.sh in the terminal to make this script executable
#This script is written to install several tools

#Install vscodium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list 
sudo apt update && sudo apt install codium 

#Create directory for wordlist
cd ~
mkdir wordlist

#Clone wordlist - Seclists
git clone https://github.com/danielmiessler/SecLists.git

#mkdir tools
cd ~
mkdir tools

#Install ODAT
git clone https://github.com/quentinhardy/odat.git

#Install dirsearch
git clone https://github.com/maurosoria/dirsearch.git

#Install unicorn
git clone https://github.com/trustedsec/unicorn.git

#Install Evilgenix2
git clone https://github.com/kgretzky/evilginx2.git

#Install CredSniper
git clone https://github.com/ustayready/CredSniper.git

#Install Modlishka
git clone https://github.com/drk1wi/Modlishka.git

#Install Fireprox
git clone https://github.com/ustayready/fireprox.git

#Install BloodHound
git clone https://github.com/BloodHoundAD/BloodHound.git

#Install GVM - OpenVas
apt-get install gvm* -y
gvm-setup
#gvm-start


#Don't forget to install WAPPALYZER and FoxyProxy into Firefox
echo "Don't forget to install Wappalyzer and FoxyProxy as addons in Firefox."
