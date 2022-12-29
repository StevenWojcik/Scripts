#! /bin/bash



#-Update System and install Software
  echo "http://dl-cdn.alpinelinux.org/alpine/v3.16/community" >> /etc/apk/repositories

  
  apk update
  apk upgrade
  apk add git
  apk add nano
  apk add curl
  apk add wget
  apk add docker
  apk add neofetch
  apk add tailscale
  apk add openssh
  apk add nnn
  apk add btop
  apk add docker docker-cli-compose
  
#-Start new Sevices
  rc-service sshd start
  rc-service docker start
  rc-service tailscale start
  /etc/init.d/sshd start     #start SSH server service

#-Enable new services
  rc-service sshd enable
  rc-service docker enable
  rc-service tailscale enable

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
