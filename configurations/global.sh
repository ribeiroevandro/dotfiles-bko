#!/bin/bash
source common/functions.sh

# Oh My ZSH
if [ -d "/Users/$(whoami)/.oh-my-zsh" ]; then
	msg_checking "Oh My ZSH"
else
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	cp ./.zshrc ~/.zshrc
	ok "OK"
fi

# .gitconfig
if find .gitconfig -type f &> /dev/null; then
	msg_checking ".gitconfig"
else
	msg_coping ".gitconfig" "cp ./.gitconfig ~/.gitconfig"
	cp ./.gitconfig ~/.gitconfig
	ok "OK"
fi

# ssh key
if find .ssh/id_rsa.pub -type f &> /dev/null; then
	msg_checking "SSH Keys"
else
	msg_installing "ssh key" "ssh-keygen -t rsa -b 4096 -C "Work Station""
	ssh-keygen -t rsa -b 4096 -C "Work Station"
	ok "OK"
fi
