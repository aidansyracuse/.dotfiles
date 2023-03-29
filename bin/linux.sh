#!/bin/bash

if !(( uname = Linux )); then
	echo "WRONG OPERATING SYSTEM ERROR" > linuxsetup.log
fi
mkdir -p ~/.TRASH 
if (( -f .vimrc )); then
        .vimrc .bup_vimrc | echo ".vimrc changed to .bup_vimrc" >> linuxsetup.log
fi
cd etc | mv vimrc ~| cd ~ | mv vimrc .vimrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> .bashrc 
