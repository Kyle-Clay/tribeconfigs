#!/bin/bash 

#Remove old instances of TAserver if present
sudo docker rm -f taserver &> /dev/null

#install docker
sudo apt-get update &> /dev/null
sudo apt-get install ufw ca-certificates curl gnupg lsb-release docker.io -y &> /dev/null
sudo snap install docker &> /dev/null

#by default firewall is disabled, open port 22 for ssh and enable firewall
sudo ufw allow 22/tcp &> /dev/null
sudo ufw allow 7777/udp &> /dev/null
sudo ufw allow 7777/tcp &> /dev/null
sudo ufw allow 7778/udp &> /dev/null
sudo ufw allow 7778/tcp &> /dev/null
sudo ufw allow 9002/udp &> /dev/null
echo "Firewall rules added for Tribes ports"
echo "y" | sudo ufw enable
sudo ufw status

#create folder gamesettings /$USER/gamesettings
mkdir gamesettings

#download docker image
sudo docker pull chickenbellyfin/taserver 

#Get admin.lua and serverconfig.lua files
touch gamesettings/admin.lua &> /dev/null
touch gamesettings/serverconfig.lua &> /dev/null
sudo curl -o gamesettings/admin.lua https://raw.githubusercontent.com/Kyle-Clay/tribeconfigs/main/admin.lua
sudo curl -o gamesettings/serverconfig.lua https://raw.githubusercontent.com/Kyle-Clay/tribeconfigs/main/serverconfig.lua


docker run \
  --name "taserver" -d --restart unless-stopped --cap-add NET_ADMIN \
  -v "$(pwd)/gamesettings:/gamesettings" \
  -p "7777:7777/tcp" -p "7777:7777/udp" \
  -p "7778:7778/tcp" -p "7778:7778/udp" \
  -p "9002:9002/tcp" -p "9002:9002/udp" \
  chickenbellyfin/taserver
