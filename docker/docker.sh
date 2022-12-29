#! /bin/bash
docker volume create portainer_data

#-Install Portainer
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

#-Install Prowler
docker run -d \
  --name=prowlarr \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -p 9696:9696 \
  -v /home/Media/docker/prowlarr:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/prowlarr:develop  

#-Install Sonarr
  docker run -d \
  --name=sonarr \
  -e PUID= 0 \
  -e PGID= 0 \
  -e TZ=America/New_York \
  -p 8989:8989 \
  -v /home/Media/docker/sonarr/data:/config \
  -v /home/Media/Movies:/Movies \
  --restart unless-stopped \
  lscr.io/linuxserver/sonarr:latest


#-Install Radarr
  docker run -d \
  --name=radarr \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -p 7878:7878 \
  -v /path/to/data:/config \
  -v /path/to/movies:/movies `#optional` \
  -v /path/to/downloadclient-downloads:/downloads `#optional` \
  --restart unless-stopped \
  lscr.io/linuxserver/radarr:latest