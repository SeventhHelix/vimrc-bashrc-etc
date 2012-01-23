#!/bin/bash

# Distributes the files located in this directory

mv ~/.vimrc ~/vimrc.bak
cp vimrc ~/.vimrc

mv ~/.bashr ~/bashrc.bak
cp bashrc ~/.bashrc

mv ~/.Xdefaults ~/.Xdefaults.bak
cp Xdefaults ~/.Xdefaults

mv ~/.xmonad/xmobar.hs ~/.xmonad/xmobar.hs.bak
cp xmobar.hs ~/.xmonad/xmobar.hs

mv ~/.xmonad/xmonad.hs ~/.xmonad/xmonad.hs.bak
cp xmonad.hs ~/.xmonad/xmonad.hs

cp -r vim/* ~/.vim/
