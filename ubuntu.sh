#!/bin/bash

# Packages list
packages=(
    "zsh"     # Because zsh ...
    "micro"   # Better than nano
    "exa"     # Better than ls
    "bat"     # Better than cat
    "btop"    # Betther than top
    "ncdu"    # Better than du -h
    "duf"     # Better than df -h
)

# Packages installation
sudo apt update
for package in "${packages[@]}"; do
    sudo apt install "$package"
done

# zsh by default
chsh -s $(which zsh)

# Fuck
sudo apt install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user
echo ### thefuck
eval $(thefuck --alias)

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
echo ''

### Alias
alias cat='batcat -p'
alias catn=batcat

alias ls='exa --grid --color auto --icons --sort=type'
alias ll='exa --long --color always --icons --sort=type'
alias la='exa --grid --all --color auto --icons --sort=type'
alias lla='exa --long --all --color auto --icons --sort=type'

### zsh-autocompletion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

### zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

" >> /home/${USER}/.zshrc

# Files and folders copy
if [ ! -d ~/.config/neofetch ]; then
  mkdir -p ~/.config/neofetch
fi
cp -r ./neofetch/* ~/.config/neofetch

cp ./Powerlevel10k/p10k_nographic.zsh ~/.p10k.zsh
