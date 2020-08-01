#!/bin/sh

source colors.sh

#  Brew Cask ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Installing apps with brew cask"

cask=(
  "google-chrome"
  "firefox"
  "iterm2"
  "visual-studio-code"
  "psequel"
  "transmission"
  "stremio"
  "spotify"
  "coconutbattery"
  "zoomus"
  "docker"
  "mysqlworkbench"
  "reactotron"
  "insomnia"
  "lastpass"
  "teamviewer"
  "telegram-desktop"
  "ferdi"
)

for app in "${cask[@]}"; do
  msg_install "Installing $app"
  brew cask install $app
  msg_ok "$app"
done
