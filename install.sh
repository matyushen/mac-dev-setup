#!/bin/bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install cask
brew tap caskroom/cask

# Remove outdated versions from the cellar.
brew cleanup

# Add permissions to user (or group) under this folders and enclosed items
sudo chown -R $(whoami) /usr/local/opt
sudo chown -R $(whoami) /usr/local/share

# WARNING: Add next permission just in case you machine is used by only one user.
sudo chown -R $(whoami) /usr/local/lib

# Install node through NVM
brew install nvm
mkdir ~/.nvm
nvm install --lts
nvm alias default stable
nvm use default

# Update NPM
npm i -g npm

# Other brew pakcages
brew install yarn git zsh hub

# git config --global core.editor 'code --wait'

# Install Fira font (it has powerline support built in)
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Use the Homebrew version of ZSH
chsh -s /usr/local/bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install apps
brew cask install docker iterm2 google-chrome visual-studio-code slack oversight hyper spotify altair-graphql-client spectacle 1password graphql-playground webstorm github appcleaner discord figma firefox homebrew/cask-versions/firefox-developer-edition

# Install setting sync extension for vs code
code --install-extension shan.code-settings-sync
