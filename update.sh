#! /bin/bash

sudo apt update
sudo apt upgrade
sudo apt install neofetch
sudo apt install nano
sudo apt install htop
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

neofetch
