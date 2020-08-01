#!/bin/sh

source colors.sh

# .gitconfig ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

if [ -f "$HOME/.gitconfig" ]; then
    msg_update ".gitconfig"
    rm ~/.gitconfig
else
    msg_install ".gitconfig"
fi

ln -s $DOTFILES/config/.gitconfig ~/.gitconfig
msg_checking ".gitconfig"

# .vimrc ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

if [ -f "$HOME/.vimrc" ]; then
    msg_update ".vimrc"
    rm ~/.vimrc
else
    msg_install ".vimrc"
fi

ln -s $DOTFILES/config/.vimrc ~/.vimrc
msg_checking ".vimrc"

# .npmrc ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

if [ -f "$HOME/.npmrc" ]; then
    msg_update ".npmrc"
    rm ~/.npmrc
else
    msg_install ".npmrc"
fi

ln -s $DOTFILES/config/.npmrc ~/.npmrc
msg_checking ".npmrc"

# .zshrc :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

if [ -f "$HOME/.zshrc" ]; then
    msg_update ".zshrc"
    rm ~/.zshrc
else
    msg_install ".zshrc"
fi

ln -s $DOTFILES/config/.zshrc ~/.zshrc
msg_checking ".zshrc"

