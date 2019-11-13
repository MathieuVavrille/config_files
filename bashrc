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

# systemc stuff TODO Delete after course
export SYSTEMCROOT=/opt/systemc-2.3.2/
source /opt/xilinx/microblaze/setup.sh

alias pdflatex='pdflatex -halt-on-error'

alias azerty="setxkbmap fr"
alias lfjslmjrazer="setxkbmap fr bepo"

alias gotowork="cd ~/Documents/m2if/"

# autocomplete only the right files (but all the directories)
complete -f -X '!*.pdf' evince
complete -f -X '!*.py' python
complete -f -X '!*.rar' unrar
complete -f -X '!*.nsp' goldtree-py
complete -d  cd


# get the size of a directory
alias sizeof="du -m --max-depth 0 -h"

# Compilation chain for latex
alias compilehardware="pdflatex Vavrille_report.tex && bibtex Vavrille_report.aux && 
pdflatex Vavrille_report.tex && pdflatex Vavrille_report.tex"

# Add a nice autocompletion script for git
source ~/.git-completion.bash

alias update-system="sudo pacman -Syu"

# Make the history do not consider duplicates or lines that start with a space
export HISTCONTROL=ignoreboth:erasedups

export PATH=$PATH:/home/mathieu/Documents/MiniZincIDE-2.2.3-bundle-linux/bin

eval $(opam config env)

alias returnscreen="xrandr --output eDP1 --auto"

alias e="emacs"
alias m="make"
alias v="vlc"

alias bluetooth_start='echo -e "power on\nagent on\ndefault_agent\nscan on\ndevices\n" | bluetoothctl -- command'

alias start_switch="sudo fusee-launcher ~/Documents/switch/hekate_ctcaer_5.0.1.pre6.bin"

alias screensatalia="xrandr --output HDMI1 --auto --right-of eDP1"
alias uscreensatalia="xrandr --output HDMI1 --off"


# Use FICO Xpress
if [ -z "$XPRESSDIR" -o ! -d "$XPRESSDIR" ]; then
 . /opt/xpressmp/bin/xpvars.sh
fi

#mounting drives
alias udmount="udisksctl mount -b" # Add /dev/sdX
alias udumount="udisksctl unmount -b" # same

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/mathieu/Doocuments/satalia/google-cloud-sdk/path.bash.inc' ]; then . '/home/mathieu/Doocuments/satalia/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/mathieu/Doocuments/satalia/google-cloud-sdk/completion.bash.inc' ]; then . '/home/mathieu/Doocuments/satalia/google-cloud-sdk/completion.bash.inc'; fi

alias back="cd ../../../../../../../.."