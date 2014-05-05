#!/bin/bash
cd /home/ubuntu/
apt-get update --force-yes
apt-get upgrade --force-yes
apt-get install unzip bc vim screen wget
apt-get install ntp
ln -fs /usr/share/zoneinfo/Europe/Paris /etc/localtime
/etc/init.d/ntp stop
ntpdate pool.ntp.org
/etc/init.d/ntp start
ufw allow 22
ufw enable
ufw default deny
ufw allow 80
apt-get install fail2ban
/etc/init.d/fail2ban start
add-apt-repository ppa:nginx/stable
apt-get update
apt-get install nginx
sudo apt-get install openjdk-6-jdk