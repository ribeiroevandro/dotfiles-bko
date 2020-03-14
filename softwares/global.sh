# cask
brew tap caskroom/cask

# add formulae to homebrew
brew tap homebrew/science # science
brew tap caskroom/fonts # fonts
brew tap caskroom/versions


# remove outdated versions from the cellar
brew cleanup

# browsers
brew cask install firefox 2> /dev/null
brew cask install google-chrome 2> /dev/null

# dev apps
brew cask install iterm2 2> /dev/null
brew cask install visual-studio-code 2> /dev/null
brew cask install docker 2> /dev/null
brew cask install mysqlworkbench 2> /dev/null
brew cask install reactotron 2> /dev/null
brew cask install ngrok 2> /dev/null
brew cask install now 2> /dev/null
brew cask install robo-3t 2> /dev/null
brew cask install mysql-utilities 2> /dev/null
brew cask install insomnia 2> /dev/null
brew cask install sequel-pro 2> /dev/null

# apps
brew cask install transmission 2> /dev/null
brew cask install coconutbattery 2> /dev/null
brew cask install lastpass 2> /dev/null
brew cask install teamviewer 2> /dev/null
brew cask install telegram-desktop 2> /dev/null
brew cask install ferdi 2> /dev/null
brew cask install spotify 2> /dev/null
brew cask install skype 2> /dev/null
brew cask install zoomus 2> /dev/null