#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Colors in basic commands
alias ls='ls --color=auto'
alias grep="grep --color"

# Better safe than sorry
alias rm="rm -i"

# PS1='[\u@\h \W]\$ '
PROMPT_DIRTRIM=2
PS1='\[\033[32m\]\u@\h \[\033[31m\]\w\$\[\033[00m\]'

# systemc stuff TODO Delete after course
export SYSTEMCROOT=/opt/systemc-2.3.2/
source /opt/xilinx/microblaze/setup.sh

alias pdflatex='pdflatex -halt-on-error'

alias azerty="setxkbmap fr"
alias lfjslmjrazer="setxkbmap fr bepo"

alias gotowork="cd ~/Documents/m2if/"

# autocomplete only the right files (but all the directories)
complete -f -X '!*.pdf' evince


# get the size of a directory
alias sizeof="du -m --max-depth 0 -h"

# Compilation chain for latex
alias compilehardware="pdflatex Vavrille_report.tex && bibtex Vavrille_report.aux && 
pdflatex Vavrille_report.tex && pdflatex Vavrille_report.tex"

# Add a nice autocompletion script for git
source ~/.git-completion.bash

alias update-system="sudo pacman -Syu"