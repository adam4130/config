#!/bin/sh

CONFIGDIR="$(dirname "$(realpath $0)")"
NIXOSDIR=/etc/nixos

#-------------------------------------------------------------------------------
# NixOS
#-------------------------------------------------------------------------------

sudo cp $CONFIGDIR/nixos/configuration.nix $NIXOSDIR
sudo cp $CONFIGDIR/nixos/neovim.nix $NIXOSDIR
sudo nixos-rebuild switch

#-------------------------------------------------------------------------------
# GitHub
#-------------------------------------------------------------------------------

cp $CONFIGDIR/git/gitignore ~/.gitignore
cp $CONFIGDIR/git/gitconfig ~/.gitconfig

#-------------------------------------------------------------------------------
# Vim
#-------------------------------------------------------------------------------

# Persistent undo
mkdir -p ~/.config/nvim/undodir

