#! /bin/bash
#-Update System and install Software
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

#-Start new Sevices
  rc-service sshd start
  rc-service docker start
  rc-service tailscale start

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

#-Install Portainer 
  docker volume create portainer_data
  docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
