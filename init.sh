#!/usr/bin/env bash

# install command-line tools using Homebrew

# ask for adm pass upfront
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# GIT
brew install git 
brew install git-flow-avh 
brew install git-extras 
brew install lazygit
  
# FZF fuzzy completion
brew install fzf
# init stuff
brew install ack
brew install awscli
brew install erlang
brew install gettext # internationalization
brew install gnu-getopt # tons of commands
brew install util-linux
brew install jpeg # image manipulation lib
brew install libevent libpng libtiff
brew install nvm
brew install openssl
brew install pipenv
brew install tmux 
brew install tree

brew cleanup 

sudo apt-get update
#SNAPCRAFT
sudo apt install snapd
# DOCKER
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
# FLUX
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install fluxgui
# VIM
sudo apt-get install vim
# POSTMAN
sudo snap install postman
# SKYPE
sudo snap install skype --classic
# SLACK
sudo snap install slack --classic
# SPOTIFY
sudo snap install spotify
# VISUAL STUDIO CODE
sudo snap install code --classic
# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb



  





