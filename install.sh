#!/bin/bash

CONFIGDIR="$(dirname "$(realpath $0)")"

# GitHub
ln -sf $CONFIGDIR/gitignore ~/.gitignore
ln -sf $CONFIGDIR/gitconfig ~/.gitconfig

# Vim
mkdir -p ~/.vim/undodir
mkdir -p ~/.vim/colors
cp $CONFIGDIR/gruvbox.vim ~/.vim/colors
ln -sf $CONFIGDIR/vimrc ~/.vimrc
