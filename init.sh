#!/bin/sh

#sudo apt-get update
#sudo apt-get -y upgrade

# To review how to avoid GRUB / homelst issue
# sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o DPkg::options::="--force-confdef" -o DPkg::options::="--force-confold"  install grub-pc

#sudo apt-get install git -y
#git clone https://github.com/juan-m12i/stack.git

sudo apt-get install -y python3-pip -y
pip3 install virtualenvwrapper

#config virtualenvwrapper
#https://jeffknupp.com/blog/2013/12/18/starting-a-django-16-project-the-right-way/

export BASE_PROJ=refrd
export BASE_ENV=$BASE_PROJ

mkdir $HOME/$BASE_ENV/
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#which virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

export WORKON_HOME=$HOME/$BASE_ENV/.virtualenvs
export PROJECT_HOME=$HOME/$BASE_PROJ
#which virtualenvwrapper.sh
source /home/ubuntu/.local/bin/virtualenvwrapper.sh

mkvirtualenv $BASE_PROJ