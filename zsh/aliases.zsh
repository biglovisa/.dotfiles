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
alias grv="git remote -v"
alias glg="git log --graph"

#
#	Shell
#

alias df="cd ~/.dotfiles && subl ."
alias notes="subl ~/Documents/notes.md"
alias s="subl"
alias s.="subl ."
alias cl="clear"
alias path="echo '$PATH' | tr : '\n'"   		# display path for troubleshooting
alias tm1="cd ~/Turing/tm1"
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

alias chrm="open -a Google\ Chrome --args --disable-web-security"
alias srch="open http://google.com/ --args --disable-web-security"
alias msg="open -a messages"
alias slack="open -a slack"
alias spot="open -a spotify"
alias today="open http://today.turing.io/ "
alias gmail="open http://gmail.com"

