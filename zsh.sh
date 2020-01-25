#!/usr/bin/env bash

# install command-line tools using Homebrew

# ask for adm pass upfront
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo apt install fonts-firacode 
# source-code-pro font
FONT_HOME=~/.local/share/fonts

echo "installing fonts at $PWD to $FONT_HOME"
mkdir -p "$FONT_HOME/adobe-fonts/source-code-pro"
# find "$FONT_HOME" -iname '*.ttf' -exec echo '{}' \;

(git clone \
   --branch release \
   --depth 1 \
   'https://github.com/adobe-fonts/source-code-pro.git' \
   "$FONT_HOME/adobe-fonts/source-code-pro" && \
fc-cache -f -v "$FONT_HOME/adobe-fonts/source-code-pro")

sudo apt-get install -y zsh

# PREZTO

# Get prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto

# Backup zsh config if it exists
if [ -f ~/.zshrc ];
then
   mv ~/.zshrc ~/.zshrc.backup
fi

# Create links to zsh config files
ln -s ~/.zprezto/runcoms/zlogin ~/.zlogin
ln -s ~/.zprezto/runcoms/zlogout ~/.zlogout
ln -s ~/.zprezto/runcoms/zpreztorc ~/.zpreztorc
ln -s ~/.zprezto/runcoms/zprofile ~/.zprofile
ln -s ~/.zprezto/runcoms/zshenv ~/.zshenv
ln -s ~/.zprezto/runcoms/zshrc ~/.zshrc

# Set Zsh as your default shell:
chsh -s /usr/bin/zsh

brew cleanup

