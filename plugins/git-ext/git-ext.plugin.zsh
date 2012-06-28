function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

function roll_back() {
  git diff -p -R "$1^" "$1" > "$1".rollback
}

function git_tree {
	git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
}

alias gd="git diff"
alias gs="git status"
alias gsl="git stash list"
alias ga="gitk --all"
alias gg="git gui"
alias gp="git push"
compdef _git gp=git-push
alias gpr="git pull --rebase"
compdef _git gpr=git-pull
alias gsl="git stash list"
compdef _git gsl=git-stash
alias gsa="git stash apply"
compdef _git gsa=git-stash
alias gss="git stash save"
compdef _git gss=git-stash
alias gbd="git branch -D"
compdef _git gbd=git-branch
alias gbc="git checkout -b"
compdef _git gbc=git-checkout
alias gbdlocal='git branch -D'
alias gbr='git branch -m $(current_branch)'
alias gbsw='git switch'
alias gconf="cat .git/config"
alias gdl="git diff HEAD~"
alias gpob='git push origin $(current_branch)'
alias gpub='git push upstream $(current_branch)'
alias gpublish='git publish'
alias gra="git rebase --abort"
alias grb="roll_back"
alias grc="git rebase --continue"
alias grehard="git reset --hard"
alias gresoft="git reset --soft"
alias grs="git rebase --skip"
alias gru='git pull --rebase upstream $(current_branch)'
alias gsprout='git sprout'
alias gsync='git pull --rebase upstream $(current_branch) && git push origin $(current_branch)'
alias gt="git_tree"
alias gundo="git reset --soft HEAD~1"
alias gunpublish='git unpublish'
