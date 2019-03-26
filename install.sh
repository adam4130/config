#!/bin/bash

CONFIGDIR="$(dirname "$(realpath $0)")"

# GitHub
ln -sf $CONFIGDIR/gitignore ~/.gitignore
ln -sf $CONFIGDIR/gitconfig ~/.gitconfig

# Vim
mkdir -p ~/.vim/undodir
ln -sf $CONFIGDIR/vimrc ~/.vimrc

# Zathura PDF Viewer
mkdir -p ~/.config/zathura
ln -sf $CONFIGDIR/zathurarc ~/.config/zathura/zathurarc
