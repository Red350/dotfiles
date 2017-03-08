#!/bin/bash
# Lazy script to initialise dotfiles.
# Doesn't check if files exist first, but won't overwrite them anyway.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s $DIR/.vimrc ~/.vimrc 
ln -s $DIR/.inputrc ~/.inputrc
ln -s $DIR/.tmux.conf ~/.tmux.conf
