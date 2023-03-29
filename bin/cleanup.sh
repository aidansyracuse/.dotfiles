#!/bin/bash

cd ~ | rm .vimrc
cd ~ | sed 'source ∼/.dotfiles/bashrc custom' .bashrc
cd ~ | rm -r .TRASH
