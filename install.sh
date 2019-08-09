#!/bin/bash

CONFIGDIR="$(dirname "$(realpath $0)")"

#-------------------------------------------------------------------------------
# GitHub
#-------------------------------------------------------------------------------

ln -sf $CONFIGDIR/git/gitignore ~/.gitignore
ln -sf $CONFIGDIR/git/gitconfig ~/.gitconfig

#-------------------------------------------------------------------------------
# Vim
#-------------------------------------------------------------------------------

ln -sf $CONFIGDIR/vim/vimrc ~/.vimrc

# Color scheme
COLORDIR=~/.vim/colors
COLORFILE=afterglow.vim
mkdir -p $COLORDIR
cp $CONFIGDIR/vim/$COLORFILE $COLORDIR/$COLORFILE

# Spell check
SPELLDIR=~/.vim/spell
SPELLFILE=en.utf-8.add
mkdir -p $SPELLDIR
ln -sf $CONFIGDIR/vim/$SPELLFILE $SPELLDIR/$SPELLFILE

# Persistent undo
mkdir -p ~/.vim/undodir
