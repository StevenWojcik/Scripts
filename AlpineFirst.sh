#! /bin/bash

#Update System
apk update
apk upgrade

#install Git
apk add git
 # sign in
        git config --global user.name "StevenWojcik"
        git config --global user.email "S.wojcik419@gmail.com"



#Install nano and Curl
apk add nano
apk add curl

#Install Docker
apk add docker

#Start Docker now + on startup
rc-service docker enable
rc-update add docker

#Install Portainer 
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
