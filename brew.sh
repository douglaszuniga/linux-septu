#!/usr/bin/env bash

# install Homebrew

# ask for adm pass upfront
sudo -v

# keep-alive: update existing `sudo` time stamp until the script has finshed
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install pre-requirements
sudo apt-get install build-essential curl file git

# Check for Homebrew, install it if it doesn't exist
if test ! $(which brew); then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
	# ADD TO PATH AND PROFILE
	test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
	test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
	test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
	echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

	# Configure Homebrew in your ~/.profile by running
	echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >>~/.profile
	# Add Homebrew to your PATH
	eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
	# We recommend that you install GCC by running:
	brew install gcc
fi

# updating brew
brew update
brew upgrade
brew cask upgrade
# others
brew tap homebrew/cask-fonts
# cleanup
brew cleanup



