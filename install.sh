#!/bin/bash

source colors.sh

DOTFILES="$HOME/Development/dotfiles"

if [[ -d $DOTFILES ]]; then
    print 'Checking dotfiles directory'
else
    print 'Cloning dotfiles'
fi

cd $DOTFILES

source install/environment.sh

source install/softwares.sh

source config/global.sh
