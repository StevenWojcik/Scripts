#! /bin/bash



#-Update System and install Software
  echo "http://dl-cdn.alpinelinux.org/alpine/v3.16/community" >> /etc/apk/repositories

  
  sudo apt update
  sudo apt upgrade
  sudo apt install git
  sudo apt install nano
  sudo apt install curl
  sudo apt install wget
  sudo apt install docker
  sudo apt install neofetch
  sudo apt install tailscale
  sudo apt install openssh
  sudo apt install nnn
  sudo apt install btop
  sudo apt install docker docker-cli-compose
  
#-Start new Sevices
  sudo systemctl start sshd 
  sudo systemctl start docker 
  sudo systemctl start tailscale 
  /etc/init.d/sshd start     #start SSH server service

#-Enable new services
sudo systemctl enable sshd 
sudo systemctl enable docker 
sudo systemctl enable tailscale 

#-Add new services
  rc-update add sshd
  rc-update add docker
  rc-update add tailscale

#-Git - sign in
  git config --global user.name "StevenWojcik"
  git config --global user.email "S.wojcik419@gmail.com"

#-Create User
  echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel
  adduser steven wheel
  
#-Install Portainer Agent
docker run -d -p 9001:9001 --name portainer_agent --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/docker/volumes:/var/lib/docker/volumes portainer/agent:latest


#-Install Portainer 
#  docker volume create portainer_data
#  docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

