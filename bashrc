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

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# some more ls aliases
alias ll='ls -alF --color=auto'
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
alias cdu='cd ~/Documents/University/Term_2B/'

#misc aliases
alias s='screen -rd'
alias gitfiles='git log --pretty=format: --name-status | cut -f2- | sort -u'
alias vim='vim -p'
alias logout-gnome='gnome-session-save --force-logout'
alias network-manager-to-wicd='sudo service network-manager stop; sudo service wicd start; sudo wicd-curses'
alias g++='g++ -Wall'
alias acro="acroread"
alias rm='rm -vI'
alias gpus="git push origin master"
alias gpul="git pull origin master"
alias mkdir="mkdir -p"

# Strombola sound effects
alias runcoward="mplayer ~/Music/sfx/www.digitpress.com/run_cowd.wav"
alias pacdie="mplayer ~/Music/sfx/www.digitpress.com/pacdies.wav"
alias win="mplayer ~/Music/sfx/www.digitpress.com/win.wav"


# Add stuff to path
export PATH=$PATH:/usr/local/include:~/Scripts
export PATH=$PATH:~/.cabal/bin:~/.xmonad/bin

