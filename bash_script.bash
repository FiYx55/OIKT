#!/bin/bash
mkdir Desktop Documents Downloads Pictures Videos Music

for st in 1 2 3 4 5
do 
mkdir folder$st
done

sudo apt update -y
sudo apt upgrade -y

sudo apt install -y ufw
sudo apt install -y git
sudo apt install -y nginx
sudo apt install -y net-tools

wget https://raw.githubusercontent.com/FiYx55/OIKT/main/users.txt
while read user; do
echo $user
sudo useradd $user
sudo mkdir /home/$user
sudo  usermod -aG sudo $user
done < users.txt 

sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update
  sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
  sudo docker run hello-world
  



