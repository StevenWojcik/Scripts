#! /bin/bash

#Update System
apk update
apk upgrade

#Install nano and Curl
apk add nano
apk add curl

#Install Docker
apk add docker

#Start Docker now + on startup
rc-service docker enable
rc-service docker start
