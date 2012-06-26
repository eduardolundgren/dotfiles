alias ls="ls -hlG"
alias cp="cp -rv"
alias rm="rm -rv"
alias mv="mv -v"

function cl () {
    if [ $# = 0 ]; then
		cd && ls
	else
		cd "$*" && ls
	fi
}

zle -N cl-function
bindkey . cl-function
