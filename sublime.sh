#!/bin/bash
clear
choice=1
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

function install_and_open(){
sudo apt update
tput reset
apt install sublime-text
clear
echo "Type subl in terminal to open Sublime Text : Opening Sublime Text"
subl
}

function print_select_choice(){
echo "WHich type of Sublime text you want";
echo "1. Stable Version(Recommended)";
echo "2. Development (Sublime text beta version)";
echo "3. Exit";
read -p "CHoose [1]:" choice
}
print_select_choice
choice=${choice:-1}
if [ $choice -eq 1 ]
then 
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	install_and_open
	
elif [ $choice -eq 2 ]
then
	echo “deb https://download.sublimetext.com/ apt/dev/” | sudo tee /etc/apt/sources.list.d/sublime-text.list
	install_and_open
elif [ $choice -eq 3 ]
then 
	exit
else
	echo "Please choose a correct option"
fi


