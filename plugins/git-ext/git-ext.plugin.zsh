function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

alias gp="git push"
compdef _git gp=git-push
alias gpr="git pull --rebase"
compdef _git gpr=git-pull
alias gsl="git stash list"
compdef _git gsl=git-stash
alias gsa="git stash apply $1"
compdef _git gsa=git-stash
alias gss="git stash save"
compdef _git gss=git-stash
alias gbd="git branch -D $1"
compdef _git gbd=git-branch
alias gbc="git checkout -b $1"
compdef _git gbc=git-checkout
alias gdl="git diff HEAD~"
alias gconf="cat .git/config"
alias gpob="git push origin $(current_branch)"
alias gpom="git push origin master"
alias gpub="git push upstream $(current_branch)"
alias gpum="git push upstream master"
alias gra="git rebase --abort"
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias gru="git pull --rebase upstream $(current_branch);"
alias gsync="git pull --rebase upstream $(current_branch); git push origin $(current_branch)"
alias gundo='git reset --soft HEAD~1'

function gcam {
	git add -A
	git commit -a -m "$*"
}

zle -N gcam
bindkey . gcam

function gbd-all {
	git branch -D $1; git push origin :$1
};

zle -N gdb-all
bindkey . gdb-all

function gbd-remote {
	git push origin :$1
};

zle -N gdb-remote
bindkey . gdb-remote