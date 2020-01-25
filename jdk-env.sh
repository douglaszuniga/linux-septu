#!/usr/bin/env bash

# install command-line tools using Homebrew

# ask for adm pass upfront
sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install SDK-MAN
curl -s "https://get.sdkman.io" | bash
# giving that we stay in the same terminal
source "$HOME/.sdkman/bin/sdkman-init.sh"
# testing that SDK-MAN was installed
sdk version

# installing JDK8
sdk i java 8.0.242.hs-adpt
# installing JDK13
sdk i java 13.0.1.hs-adpt
sdk default java 13.0.1.hs-adpt

brew install maven
brew install gradle
brew install tomcat 
brew install tomcat@7

brew cleanup

# IDE
sudo snap install intellij-idea-community --edge --classic 


