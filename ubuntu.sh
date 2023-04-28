#!/bin/bash

# Packages list
packages=(
    "micro"   # Better than nano
    "exa"     # Better than ls
    "bat"     # Better than cat
    "btop"    # Betther than top
    "ncdu"    # Better than du -h
    "duf"     # Better than df -h
    "fuck"    # Fuck error
)

# Packages installation
sudo apt update
for package in "${packages[@]}"; do
    sudo apt install "$package"
done

# Git installation #

# zsh-autocompletion
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

# Alias #

# Lignes à ajouter à .zshrc
echo "
#neofetch
neofetch --config ~/.config/neofetch/.neofetch.conf
bash ~/scripts/kaamelott.sh
echo ''

### Alias
alias cat='\'bat -p\''
alias catn=bat

alias ls='\'exa --grid --color auto --icons --sort=type\''
alias ll='\'exa --long --color always --icons --sort=type\''
alias la='\'exa --grid --all --color auto --icons --sort=type\''
alias lla='\'exa --long --all --color auto --icons --sort=type\''

### zsh-autocompletion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

### zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### thefuck
eval $(thefuck --alias)
" >> /home/${USER}/.zshrc

# Files and folders copy
if [ ! -d ~/.config/neofetch ]; then
  mkdir -p ~/.config/neofetch
fi
cp -r ./neofetch/* ~/.config/neofetch
