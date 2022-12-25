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


