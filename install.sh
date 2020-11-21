#!/bin/bash
#Enter chmod +x install.sh in the terminal to make this script executable
#This script is written to install several tools

#Install vscodium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list 
sudo apt update && sudo apt install codium 

#mkdir tools
cd ~
mkdir tools

#Install ODAT
git clone https://github.com/quentinhardy/odat.git

#Install dirsearch
git clone https://github.com/maurosoria/dirsearch.git

#Install BloodHound
git clone https://github.com/BloodHoundAD/BloodHound.git

#Install GVM - OpenVas
apt-get install gvm* -y
gvm-setup
#gvm-start


#Don't forget to install WAPPALYZER and FoxyProxy into Firefox
echo "Don't forget to install Wappalyzer and FoxyProxy as addons in Firefox."
