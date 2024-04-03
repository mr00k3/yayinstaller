#!/bin/bash
yaypath="yay-bin"

if command -v git &> /dev/null
then
	echo "git installed"
else
	echo "git is not installed, installing..."
	sudo pacman -Sy && sudo pacman -S git
fi

if [ -d "$yaypath" ];
then
cd yay-bin
makepkg -sic
else
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -sic
fi
echo "yay installed!"
