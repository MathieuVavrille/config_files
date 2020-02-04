#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Colors in basic commands
alias ls='ls --color=auto'
alias grep="grep --color"

# Change the colors of ls
LS_COLORS=$LS_COLORS:'di=1;31:or=47;30:mi=47;30:*.java=1;32:*.py=1;32:*.ml=1;32:*.c=1;32:*.tex=1;32:*.md=1;33:*.pdf=1;33:*.txt=1;33' ; export LS_COLORS

# Better safe than sorry
alias rm="rm -i"

# autocomplete after sudo
alias sudo="sudo "

# PS1='[\u@\h \W]\$ '
PROMPT_DIRTRIM=2
PS1='\n\[\033[32m\]\u@\h \[\033[31m\]\w\$\[\033[00m\]'

alias pdflatex='pdflatex -halt-on-error'

alias azerty="setxkbmap fr"
alias lfjslmjrazer="setxkbmap fr bepo"

# autocomplete only the right files (but all the directories)
complete -f -X '!*.pdf' evince
complete -f -X '!*.py' python
complete -f -X '!*.rar' unrar
complete -f -X '!*.nsp' goldtree-py


# get the size of a directory
alias sizeof="du -m --max-depth 0 -h"

# Add a nice autocompletion script for git
source ~/.git-completion.bash

alias update-system="sudo pacman -Syu"

# Make the history do not consider duplicates or lines that start with a space
export HISTCONTROL=ignoreboth:erasedups

export PATH=$PATH:/home/mathieu/Documents/MiniZincIDE-2.2.3-bundle-linux/bin

eval $(opam config env)

alias returnscreen="xrandr --output eDP1 --auto"

# Really short aliases
alias e="emacs"
alias ev="evince"
alias m="make"
alias v="vlc"

alias start_switch="sudo fusee-launcher ~/Documents/switch/hekate_ctcaer_5.0.1.pre6.bin"

alias screennantes="xrandr --output DP1 --auto --right-of eDP1"
alias uscreennantes="xrandr --output DP1 --off"

#mounting drives
alias udmount="udisksctl mount -b" # Add /dev/sdX
alias udumount="udisksctl unmount -b" # same

# easy find
alias find_name="find . -name"