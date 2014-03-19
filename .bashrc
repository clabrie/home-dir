#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias hd='hexdump -C'
alias ips='ip addr | grep "inet "'

PS1='[\u@\h \W]\$ '
