#! /bin/bash

# Run Update and Upgrade commands on system
sudo apt update
sudo apt upgrade

# Remote Desktop
sudo apt install xrdp
    # add to startup
    systemctl enable xrdp





# System Status and Monitoring 
sydo apt install qemu-guest-agent
sudo apt install neofetch
sudo apt install nano
sudo apt install htop


# install "brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# add to systemctl services
systemctl enable qemu-guest-agent
