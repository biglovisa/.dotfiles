#!/bin/bash
###	Aliases

### handshake specifics

alias hsdev="foreman start -f Procfile.dev"
alias hsdnw="foreman start -f Procfile.dev all=1,webpack=0"
alias hsw="yarn webpack:dev"
alias hs="cd ~/hs"

###	Git

alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias gp="git push origin HEAD"
alias gd="git diff"
alias gdc="git diff --cached"
alias gc="git commit"
alias gco="git checkout"
alias gb="git branch"
alias ga="git add"
alias gs="git status"
alias grv="git remote -v"
alias vbr="git reflog | grep -o \"checkout: moving from .* to \" |\
    sed -e 's/checkout: moving from //' -e 's/ to $//' | head -20"
alias del-merged='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'

### Hub

alias hbr="hub browse"

###	Shell

alias ll="ls -la"
alias cl="clear"
alias dots="cd ~/.dotfiles"
alias path='echo $PATH | tr -s ":" "\n"'
alias st="subl"
alias ..="cd .."
alias esh="exec $SHELL"

### Applications

alias mk="minikube"
alias kctl="kubectl"

alias pe="pyenv"

alias dk="docker"

###	Directory jumps

alias cod="cd ~/Code"
alias wor="cd ~/Desktop/words"
alias todo="vim ~/Desktop/words/todo.md"

### TO BE ORGANIZED - DO NOT DELETE
