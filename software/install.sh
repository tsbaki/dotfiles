#!/usr/bin/env bash

software='sudo fish vim git fzf'

if [ "$EUID" -ne 0 ]
	then echo "Please run as root."
	exit
fi

echo "Instaling: $software"

read -p "Press any key to continue..."

apt -y update && apt install -y $software 
