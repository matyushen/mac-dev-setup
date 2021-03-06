#!/bin/bash

echo "Installing Command Line Tools for Xcode..."
xcode-select --install

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Updating Homebrew & formulae..."
brew update
brew upgrade

echo "Installing other brew packages..."
brew install git yarn git zsh hub zsh-syntax-highlighting zsh-autosuggestions

echo "Setting git to use the osxkeychain credential helper..."
git config --global credential.helper osxkeychain

echo "Installing apps with brew cask..."
brew install --cask docker google-chrome teamviewer visual-studio-code whatsapp coconutbattery notion superduper private-internet-access slack oversight hyper spotify altair-graphql-client spectacle 1password webstorm github appcleaner discord figma cloudflare-warp firefox homebrew/cask-versions/firefox-developer-edition

echo "Installing fonts..."
brew tap homebrew/cask-fonts
brew cask install font-fira-code font-source-code-pro font-inter

echo "Removing outdated versions from the cellar..."
brew cleanup

echo "Checking for cask configuration issues..."
brew cask doctor

echo "Install oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "Use the Homebrew's version of ZSH"
chsh -s $(which zsh)

echo "Force reload of your .zshrc"
source ~/.zshrc

echo "Install node through NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install --lts
nvm use stable

echo "Update NPM"
npm i -g npm

# Add permissions to user (or group) under this folders and enclosed items
# sudo chown -R $(whoami) /usr/local/opt
# sudo chown -R $(whoami) /usr/local/share

echo "Done!"
