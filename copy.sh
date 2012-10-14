#!/bin/bash

# Copies the current versions of the files to this dir

echo Copying vimrc
cp ~/.vimrc vimrc 

echo Copying bashrc
cp ~/.bashrc bashrc 

echo Copying Sublime Packages
cp -rv ~/.config/sublime-text-2/Packages* SublimePackages

echo Copying Xdefaults
cp ~/.Xdefaults Xdefaults 

echo Copying xmobar.hs
cp ~/.xmonad/xmobar.hs xmobar.hs

echo Copying xmonad.hs
cp ~/.xmonad/xmonad.hs xmonad.hs 

echo Finished!
