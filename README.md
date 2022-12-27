# Scripts
Scripts to run


# Installation
## Neofetch

Changes the config file for neofetch. assumes that you already have neofetch installed. Changing the theme:

![image](https://user-images.githubusercontent.com/8345643/209611708-ef3f7a0d-c572-4515-9943-651915459b11.png)




### Mac:

   <sub>you should install brew first before doing this</sub>
```
brew install wget

wget -O /Users/$USER/.config/neofetch/config.conf https://raw.githubusercontent.com/StevenWojcik/Scripts/main/neofetch/talljoe.conf
```


### Linux(apk):

```
sudo wget -O /home/$USER/.config/neofetch/config.conf https://raw.githubusercontent.com/StevenWojcik/Scripts/main/neofetch/talljoe.conf
```


### Script:


 download script 
 
 make executable
 
 run

```
wget -O fixNeofetch.sh https://raw.githubusercontent.com/StevenWojcik/Scripts/main/neofetch/fixNeofetch.sh
chmod +x fixNeofetch.sh
./fixneofetch.sh
```
