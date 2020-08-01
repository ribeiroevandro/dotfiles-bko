#!/bin/sh

source colors.sh

# Brew ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#msg_install "Setting up Homebrew"
#if test ! $(which brew); then
#  msg_install "Installing homebrew"
#  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#  msg_ok 'Homebrew'
#else
#  msg_alert "Homebrew already instaled"
#  msg_update "Updating Homebrew"
#  brew update
#fi

#  Brew Cask Fonts ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#msg_install "brew tap homebrew/cask-fonts"
#brew tap homebrew/cask-fonts

#msg_install "Installing Fira Code"
#brew cask install font-fira-code

# Brew apps :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#msg_install "Installing apps with brew"
#brew=(
#  "rbenv"
#  "git"
#  "hub"
#)

#msg_install "Setting up pip and awscli"
#sudo easy_install pip
#pip install awscli --upgrade --user

# NVM ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#msg_install "Installing NVM"
#curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
#msg_ok "NVM Installed"

# ZSH ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Setting up ZSH"
if test ! $(which zsh); then
  msg_install "Installing ZSH"
  brew install zsh
  msg_ok 'ZSH'
else
  msg_alert "ZSH already instaled"
fi

# Oh My ZSH ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Setting Oh My ZSH"
if [ -d "/Users/$(whoami)/.oh-my-zsh" ]; then
  msg_alert "Oh My ZSH already instaled"
else
  msg_install "Installing Oh My ZSH"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  chsh -s /bin/zsh
  msg_ok 'Oh My ZSH'
fi
