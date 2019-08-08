#!/bin/bash

CONFIGDIR="$(dirname "$(realpath $0)")"

# GitHub
ln -sf $CONFIGDIR/git/gitignore ~/.gitignore
ln -sf $CONFIGDIR/git/gitconfig ~/.gitconfig

# Vim
mkdir -p ~/.vim/undodir
mkdir -p ~/.vim/spell
ln -sf $CONFIGDIR/vim/vimrc ~/.vimrc
ln -sf $CONFIGDIR/vim/en.utf-8.add ~/.vim/spell/en.utf-8.add
