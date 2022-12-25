#! /bin/bash


# Run Update and Upgrade commands on system
sudo apk update
sudo apk upgrade

# add Samba
sudo apk add samba
        
        #start Samba and add to Startup
            systemctl enable smbd 
            systemctl startn smbd
        # create smb user + password
            smbpasswd steven


# Remote Desktop
    sudo apk add xrdp
    # add to startup
    systemctl enable xrdp

# add Git
    sudo apk add git
    sudo apk add gh    
    
        # sign in
            git config --global user.name "StevenWojcik"
            git config --global user.email "S.wojcik419@gmail.com"




# System Status and Monitoring 
    sydo apk add qemu-guest-agent
    sudo apk add neofetch
    sudo apk add nano
    sudo apk add htop


# add "brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/add/HEAD/add.sh)"


# add to systemctl services
    systemctl enable qemu-guest-agent


