# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

##############################################################
# My Personal Bashrc Settings.
##############################################################

#list command aliases
alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CFlh'
alias woo='fortune'
alias lsd="ls -alF | grep /$"

#vim aliases
alias v='/usr/bin/vim'
alias vb='/usr/bin/vim ~/.bashrc'
#command prompt modifications
#Basic prompt modification
#export PS1="\[$(tput setaf 4)\][\u@\h \W]\\$ \[$(tput sgr0)\]"
#Latest command prompt modifications
RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
#YELLOW="\[\033[33;1m\]"
BLUE="\[\033[34;1m\]"
GREEN="\[\033[32;1m\]"
WHITE="\[\033[37;1m\]"
SMILEY="${GREEN}:) ▶${NORMAL}"
FROWNY="${RED}:( ▶${NORMAL}"
#Use below if your terminal
#is not utf-8 ready
#SMILEY="${GREEN}:)\$${NORMAL}"
#FROWNY="${RED}:(\$${NORMAL}"

SELECT="if [ \$? = 0 ]; then echo \"${SMILEY}\"; else echo \"${FROWNY}\"; fi"

	#Two commented lines below are from the original script. 
	# Throw it all together 
	#PS1="${RESET}${BLUE}\u@\h${NORMAL} \`${SELECT}\` ${GREEN}>>${NORMAL} "
	#My modifications are below.
	PS1="${RESET}${BLUE}\u@\h:\W${NORMAL} \`${SELECT}\` "

#History Modifications
export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"


