#!/bin/sh

sudo apt-get update
sudo apt-get -y upgrade
# To review how to avoid GRUB / homelst issue
# sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o DPkg::options::="--force-confdef" -o DPkg::options::="--force-confold"  install grub-pc

#sudo apt-get install git -y
#git clone https://github.com/juan-m12i/stack.git

sudo apt-get install -y python3-pip -y
pip3 install virtualenvwrapper
