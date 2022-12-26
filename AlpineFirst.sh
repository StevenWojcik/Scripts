#! /bin/bash
#   Update System and install Software
apk update
apk upgrade
apk add git
apk add nano
apk add curl
apk add wget
apk add docker
apk add neofetch
apk add tailscale

#                               echo "Installed : git, nano, curl, wget, docker, neofetch"

#   Start new Sevices
rc-service  docker start
rc-service  tailscale start

#                               echo "started docker service"
#   Startup services | enable and add
rc-service docker enable
rc-service tailscale enable
rc-update add docker
rc-update add tailscale

#                               echo "enabled : docker"
#                               echo "Added to Boot: docker"

#   Git
#   sign in
    git config --global user.name "StevenWojcik"
    git config --global user.email "S.wojcik419@gmail.com"

#   Docker
#   Install Portainer 
    docker volume create portainer_data
    docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
#                               echo "Container Created : Portainer"
