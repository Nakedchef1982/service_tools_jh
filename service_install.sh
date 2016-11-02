#!/bin/bash

# KG_Service Installscript 4 Linux
# by Markus Wendler

# install all needing packages
# install 32bit lib's for TK-Suite
sudo add-apt-repository "deb http://downloads.hipchat.com/linux/apt stable main"
sudo wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install python-pip wireshark lib32stdc++6 libx11-6:i386 libxrender1:i386 fontconfig:i386 libxext6:i386 libglib2.0-0:i386 libsm6:i386 ssh samba terminator keepassx rapidsvn geany chromium-browser unrar nmap zenmap nodejs android-tools-adb git ettercap-graphical vlc openjdk-7-jdk gparted gnuplot hipchat vncviewer x11vnc
sudo apt-get dist-upgrade
sudo pip install requests minimalmodbus requests_oauthlib urllib2 cookielib sqlite3 flask json csv pygal timeit netifaces cairosvg tinycss cssselect lxml python-can

# clear apt-*
sudo apt-get autoremove && sudo apt-get autoclean

# check out git stuff
cd ~/
git clone https://bitbucket.dev.kiwigrid.com/scm/ser/service_tools.git

# downloading important programs
cd ~/Downloads
mkdir install_tmp
cd install_tmp
echo -e "Loading Agfeo telephone suite:\n"
wget ftp://ftp.agfeo.de/pub/software/suite_client_linux-x86.tgz
#tar -zxvf suite_client_linux-x86.tgz
#cd tksuite_client_agfeo_*
#sudo cp tksuite_client /opt/
echo -e "Try to load ATOM.io Editor:\n"
wget https://atom.io/download/deb && mv deb atom.deb && echo "success"
echo -e "Install Atom.io"
sudo dpkg -i atom.io

exit 1