# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples 
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

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

# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -alhF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias cls='clear; ls --color=auto'

#ssh aliases
alias taurine='ssh -XYC j6dyck@taurine.csclub.uwaterloo.ca'
alias cornsyrup='ssh -XYC j6dyck@corn-syrup.csclub.uwaterloo.ca' 
alias caffeine='ssh -XYC j6dyck@caffeine.csclub.uwaterloo.ca'
alias strombola='ssh -XYC j6dyck@strombola.csclub.uwaterloo.ca'
alias csclub='ssh -XYC j6dyck@csclub.uwaterloo.ca'
alias linuxstudent='ssh -XYC j6dyck@linux.student.cs.uwaterloo.ca'

#cd aliases
alias cdu='cd ~/Documents/University/Term_3A/'

#misc aliases
alias s='screen -rd'
alias gitfiles='git log --pretty=format: --name-status | cut -f2- | sort -u'
alias vim='vim -p'
alias logout-gnome='gnome-session-save --force-logout'
alias network-manager-to-wicd='sudo service network-manager stop; sudo service wicd start; sudo wicd-curses'
alias acro="acroread"
alias rm='rm -vI'
alias gpush="git push origin master"
alias gpull="git pull origin master"
alias mkdir="mkdir -p"

# Add stuff to path
export PATH=$PATH:/usr/local/include
export PATH=$PATH:~/usr/lib
export PATH=$PATH:~/usr/bin
export PATH=$PATH:~/Scripts

export PATH=$PATH:~/.cabal/bin
export PATH=$PATH:~/.xmonad/bin

export PATH=$PATH:/u/cs350/sys161/bin:/u/cs350/bin:/software/.admin/bins/bin:/bin:/usr/bin:/usr/bin/X11

# Fix for chrome bug
rm ~/.config/chromium/SingletonLock > /dev/null

# CS350 stuff
CVSROOT=~/cvsroot/cs350
export CVSROOT
alias cdos="cd ~/cs350-os161/"
alias cdosos="cd ~/cs350-os161/os161-1.11"

