#!/bin/bash
echo " "
jeshile='\e[40;38;5;82m' #jeshile
jo='\e[0m' # pa ngjyra
os=$(exec uname -m|grep 64)
if [ "$os" = "" ]
then os="x86"
else os="x64"
fi
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │  Checking System Version  │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Detected a $os System   │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Installing Web Server   │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
echo " "
apt-get update && apt-get upgrade -y && apt-get install htop -y
apt-get install lsb-release nscd curl php5 php5-mysql php5-cli php5-curl unzip curl libcurl3 libcurl3-dev php5-curl -y
sudo apt-get update && sudo apt-get install vlc vlc-plugin-* -y && sudo apt-get install vlc browser-plugin-vlc -y
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl && chmod a+rx /usr/local/bin/youtube-dl
sudo updatedb
sudo apt-get update
sudo apt-get install php5-dev php5-gd -y
apt-get install php5-geoip php5-fpm mcrypt php5-mcrypt php5enmod mcrypt -y
apt-get install apache2 apache2-mpm-prefork apache2-utils libapache2-mod-php5 libapr1 libaprutil1 libdbd-mysql-perl libdbi-perl libnet-daemon-perl libplrpc-perl libpq5 mysql-client-5.5 mysql-common mysql-server mysql-server-5.5 php5-common php5-mysql -y
apt-get install phpmyadmin -y
sudo php5enmod mcrypt
service apache2 reload && service apache2 restart
echo " "
