# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples 
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Go to zsh if not on macs and not in zsh already
# chsh does not work properly for some reason
# And opening zsh on macs is VERY slow
# Note: I don't think this actually works.
OS=`uname`
LINUX="Linux"
if [ "$OS" -eq "$LINUX" ]
then
    if [ $MYSHELL -ne "zsh" ]
    then
        zsh
    fi
fi

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

color_prompt=yes
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Aliases
source ~/.aliases

CVSROOT=~/cvsroot/cs350
export CVSROOT
export PATH=$PATH:/u/cs350/sys161/bin:/u/cs350/bin:/software/.admin/bins/bin:/bin:/usr/bin:/usr/bin/X11

MYSHELL="BASH"
export MYSHELL
