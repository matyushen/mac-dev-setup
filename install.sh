#!/bin/bash

# Install Command Line Tools for Xcode. Needed for Homebrew
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Update Homebrew's directory of formulae
brew update
brew upgrade

# Install cask
brew tap caskroom/cask

# Install apps
brew cask install battle-net docker cheatsheet tor google-hangouts iterm2 google-chrome visual-studio-code whatsapp coconutbattery atom notion superduper private-internet-access slack oversight hyper spotify altair-graphql-client spectacle 1password webstorm github appcleaner discord figma firefox homebrew/cask-versions/firefox-developer-edition

# Other brew packages
brew install yarn git zsh hub nvm zsh-syntax-highlighting zsh-autosuggestions

# Install fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code font-source-code-pro

# Remove outdated versions from the cellar
brew cleanup

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Use the Homebrew's version of ZSH
chsh -s $(which zsh)

# Install node through NVM
brew install nvm
mkdir ~/.nvm
nvm install --lts
nvm alias default stable
nvm use default

# Update NPM
npm i -g npm

# Add permissions to user (or group) under this folders and enclosed items
sudo chown -R $(whoami) /usr/local/opt
sudo chown -R $(whoami) /usr/local/share
