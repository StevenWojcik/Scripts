#! /bin/bash


 apk update
 apk upgrade
 apk add samba
        
        #start Samba and add to Startup
            systemctl enable smbd 
            systemctl startn smbd
        # create smb user + password
            smbpasswd steven


# Remote Desktop
     apk add xrdp
    # add to startup
    systemctl enable xrdp

# add Git
     apk add git
     apk add gh    
    
        # sign in
            git config --global user.name "StevenWojcik"
            git config --global user.email "S.wojcik419@gmail.com"




# System Status and Monitoring 
    sydo apk add qemu-guest-agent
     apk add neofetch
     apk add nano
     apk add htop


# add "brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/add/HEAD/add.sh)"


# add to systemctl services
    systemctl enable qemu-guest-agent


