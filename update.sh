#! /bin/bash

# Run Update and Upgrade commands on system
    sudo apt update
    sudo apt upgrade

# Install Samba
    sudo apt install samba
        
        #start Samba and add to Startup
            systemctl enable smbd 
            systemctl startn smbd
        # create smb user + password
            smbpasswd steven


# Remote Desktop
    sudo apt install xrdp
    # add to startup
    systemctl enable xrdp

# Install Git
    sudo apt install git
    sudo apt install gh    
    
        # sign in
            git config --global user.name "StevenWojcik"
            git config --global user.email "S.wojcik419@gmail.com"




# System Status and Monitoring 
    sydo apt install qemu-guest-agent
    sudo apt install neofetch
    sudo apt install nano
    sudo apt install htop


# install "brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# add to systemctl services
    systemctl enable qemu-guest-agent


