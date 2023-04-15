#!/usr/bin/env bash

if test -f $HOME/.vimrc; then
	echo "'.vimrc' found; creating a backup..."
	mv $HOME/.vimrc $HOME/.vimrc.bak
fi

cp ./.vimrc $HOME/
