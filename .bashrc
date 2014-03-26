#
# ~/.bashrc
#

# If not running interactively, don't do anything

LS_COLORS='di=33:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'

export LS_COLORS

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias hd='hexdump -C'
alias ips='ip addr | grep "inet "'
alias md5='openssl md5'

PS1='[\u@\h \W]\$ '

llh () {
	for FILE in $(find . -maxdepth 1 -type f)
	do
		echo -n "$FILE "
		openssl md5 $FILE | awk {'print $2'}
	done
}

di () {
	PS3="Channel: "

	cd ~/di

	select CHANNEL in *
	do
		cvlc "$CHANNEL"
	done
}
