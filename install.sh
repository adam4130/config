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

# Color scheme
if [ ! -x /usr/bin/curl ] ; then
    echo "Error: Please install curl" >&2
    exit 1 
fi

# Spell check
SPELLDIR=~/.vim/spell
SPELLFILE=en.utf-8.add
mkdir -p $SPELLDIR
ln -sf $CONFIGDIR/vim/$SPELLFILE $SPELLDIR/$SPELLFILE

# Persistent undo
mkdir -p ~/.vim/undodir

ln -sf $CONFIGDIR/vim/vimrc ~/.vimrc
