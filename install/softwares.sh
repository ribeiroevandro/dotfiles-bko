#!/bin/sh

source colors.sh

#  Brew Cask ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Installing apps with brew cask"

cask=(
  "microsoft-edge"
  "brave-browser"
  "iterm2"
  "visual-studio-code"
  "android-studio"
  "transmission"
  "coconutbattery"
  "zoomus"
  "docker"
  "mysqlworkbench"
  "postico"
  "insomnia"
  "teamviewer"
  "telegram-desktop"
  "ferdi"
  "adobe-creative-cloud"
  "figma"
)

for app in "${cask[@]}"; do
  msg_install "Installing $app"
  brew cask install $app 2> /dev/null
  msg_ok "$app"
done
