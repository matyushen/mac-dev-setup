# mac-dev-setup
Setup dev environment on a new Mac

## Git

### Set your Git username for every repository on your computer
Official [instructions](https://help.github.com/en/github/using-git/setting-your-username-in-git).

````
git config --global user.name "Your Name Here"
````

### Set your commit email address in Git
Official [instructions](https://help.github.com/en/github/setting-up-and-managing-your-github-user-account/setting-your-commit-email-address#setting-your-commit-email-address-in-git).
````
git config --global user.email "your_email@youremail.com"
````

### Cache your GitHub password in Git
Official [instructions](https://help.github.com/en/github/using-git/caching-your-github-password-in-git)
1. [Create a personal access token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line) for the command line (If you have enabled two-factor authentication, or if you are accessing an organization that uses SAML single sign-on)
 2. [Cache your GitHub password in Git](https://help.github.com/en/github/using-git/caching-your-github-password-in-git)

## System Preferences
- Enable [FileVault disk encryption](https://support.apple.com/en-us/HT204837)
- Enable [firewall](https://support.apple.com/en-us/HT201642)
- Change battery to Show percentage symbols
- Auto hide dock
- Show visible files
- Lock screen immediately
- Tap to click
- Disable natural scroll
- Spotlight: Uncheck fonts, images, files etc.
- Change the default folder for screenshots

## oh-my-zsh 

Open the `.zshrc` file with vscode:
````
code ~/.zshrc
````

Copy contents of the `.zshrc` file from this repo

Add plugins
````
plugins=(
    z
    git
    yarn
    nvm
    tig
    zsh-syntax-highlighting
    zsh-autosuggestions
)
```` 

Change theme:
````
ZSH_THEME="agnoster"
````

Or make it random:
```
ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=(
    "robbyrussell"
    "agnoster"
    "cobalt2"
)
```

Add aliases:
````
    alias vszsh="code ~/.zshrc"
    alias updzsh="source ~/.zshrc"
````

## iTerm
- Change font to Fira in Iterm's settings
- Install iTerm2 “color schemes” https://github.com/mbadolato/iTerm2-Color-Schemes
- Argonaut, Brogrammer, ChallengerDeep, Cobalt2

