#!/bin/bash

# Distributes the files located in this directory

mv ~/.vimrc ~/.vimrc.bak
cp vimrc ~/.vimrc

mv ~/.bashrc ~/.bashrc.bak
cp bashrc ~/.bashrc

mv ~/.Xdefaults ~/.Xdefaults.bak
cp Xdefaults ~/.Xdefaults

mv ~/.config/sublime-text-2/Packages ~/.config/sublime-text-2/Packages.old
cp SublimePackages ~/.config/sublime-text-2/Packages

#mv ~/.xmonad/xmobar.hs ~/.xmonad/xmobar.hs.bak
#cp xmobar.hs ~/.xmonad/xmobar.hs

#mv ~/.xmonad/xmonad.hs ~/.xmonad/xmonad.hs.bak
#cp xmonad.hs ~/.xmonad/xmonad.hs

cp -r vim/* ~/.vim/
