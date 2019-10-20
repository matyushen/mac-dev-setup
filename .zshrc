# Path to your oh-my-zsh installation.
export ZSH=/Users/matyushen/.oh-my-zsh

# zsh theme
ZSH_THEME=agnoster

# Plugins
plugins=(git z knife nvm jira tig zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vszsh="code ~/.zshrc"
alias updzsh="source ~/.zshrc"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
