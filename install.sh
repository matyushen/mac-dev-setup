#!/bin/bash

echo "Installing Command Line Tools for Xcode..."
xcode-select --install

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Updating Homebrew & formulae..."
brew update
brew upgrade

echo "Installing other brew packages..."
brew install nvm git yarn zsh hub zsh-syntax-highlighting zsh-autosuggestions gh pnpm

echo "Setting git to use the osxkeychain credential helper..."
git config --global credential.helper osxkeychain

echo "Installing apps with brew cask..."
brew install --cask raycast docker google-chrome visual-studio-code whatsapp postman telegram superduper private-internet-access slack oversight hyper spotify rectangle 1password webstorm github appcleaner discord cloudflare-warp firefox

echo "Installing fonts..."
brew tap homebrew/cask-fonts
brew install font-fira-code font-inter --cask

echo "Removing outdated versions from the cellar..."
brew cleanup

echo "Checking for cask configuration issues..."
brew cask doctor

echo "Install oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "Use the Homebrew's version of ZSH"
chsh -s $(which zsh)

echo "Force reload of your .zshrc"
source ~/.zshrc

echo "Install node through NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
nvm install --lts
nvm use stable

echo "Update NPM"
npm i -g npm

# Add permissions to user (or group) under this folders and enclosed items
# sudo chown -R $(whoami) /usr/local/opt
# sudo chown -R $(whoami) /usr/local/share

echo "Done!"
