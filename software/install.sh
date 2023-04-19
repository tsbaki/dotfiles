#!/usr/bin/env bash
read -r -d '' software << EOM
python3
sudo
fish  
vim   
git   
rsync
fzf
EOM

if [ "$EUID" -ne 0 ]
	then echo "Please run as root."
	exit
fi

echo "Instaling: $software"

read -p "Press any key to continue..."

apt -y update && apt install -y $software 
