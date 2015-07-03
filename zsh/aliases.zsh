#
#	Git
#

alias gs="git status"
alias ga="git add"
alias ga.="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gb="git browse"
alias glog="git log"
alias gd="git diff"
alias gpu="git push --set-upstream origin HEAD"
alias gcb="git checkout -b"
alias gclean="git branch --merged master | ag -v '\* master' | xargs -n 1 git branch -d"
alias grv="git remote -v"
alias glg="git log --graph"
alias tre="tree -aC -I '.git' --dirsfirst "$@" | less -FRNX;"
alias glc="git shortlog --summary --numbered"                  # print contributors by # of commits
alias gl="git log --all --graph --decorate"                    # detailed log

#
#	Shell
#

alias df="cd ~/.dotfiles && subl ."
alias notes="subl ~/Documents/notes.md"
alias s="subl"
alias s.="subl ."
alias cl="clear"
alias path="echo '$PATH' | tr : '\n'"   		                    # display path for troubleshooting
alias tm1="cd ~/Turing/tm1"
alias tm2="cd ~/Turing/tm2"
alias exr="cd ~/exercism/ruby"
alias cdp="cd ~/Projects"

alias ll="ls -la"  				              # lists sorted by date /most recent last / shows change time
alias lh="ls -lah"     				              # lists all with hidden files in readable sizes


#
#	Homebrew
#

alias brewd="brew doctor"
alias brewu="brew update && brew upgrade --all"

#
#     Applications
#

alias chrome="open http://google.com/ --args --disable-web-security"
alias msg="open -a messages"
alias slack="open -a slack"
alias spot="open -a spotify"
alias today="open http://today.turing.io/"
alias tomorrow="open http://tomorrowturing.herokuapp.com/"
alias gmail="open http://gmail.com"

