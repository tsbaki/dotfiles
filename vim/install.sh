#!/bin/bash

# make sure to back up 
if test -f $HOME/.vimrc; then
    mv $HOME/.vimrc $HOME/.vimrc.bak
fi
cp ./.vimrc $HOME/
