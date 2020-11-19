#!/bin/bash

# A function which downloads all URLs passed to it.
# $1: a file with URLs to be downloaded separated by a newline
dl() {
  youtube-dl $(cat $1 | tr "\n" " ")
}

# A function which sets an alias in the $HOME/.dotfiles/zsh/aliases.zsh file
# $1: the name of the alias
# $@: the command should to be aliased
setalias() {
  name=$1
  value=${@:2}

  echo "alias $name=\"$value\"" >>"$HOME/.dotfiles/zsh/aliases.zsh"
}

# A wrapper function around the wttr.in API. Displays weather using the metric system
# $1: the location you want to check
wtw() {
  location=$(echo "$@" | tr " " "+")
  curl "wttr.in/$location?m"
}

# Removes console.log's in changed files tracked by git
# $1: Optional. File to remove entries from. If no argument is given, it will modify all changed files.
rmCL() {
  if [ $# -ne 0 ]; then
    sed '/console.log/d' $1 >tmpfile && mv tmpfile $1
  else
    for file in $(git diff --name-only); do
      echo $file
      sed '/console.log/d' $file >tmpfile && mv tmpfile $file
    done
  fi
}

# Signs a commit with given author
# $1: author's email
function gca() {
  author = $1 || $(git config user.email)
  git commit --author=$1
}

removecontainers() {
  docker stop $(docker ps -aq)
  docker rm $(docker ps -aq)
}

armageddon() {
  removecontainers
  docker network prune -f
  docker rmi -f $(docker images --filter dangling=true -qa)
  docker volume rm $(docker volume ls --filter dangling=true -q)
  docker rmi -f $(docker images -qa)
}

nuke() {
  name=$1
  ps aux | grep $1 | grep -v grep | awk '{print $2}' | xargs kill -9
}

access() {
  kubectl -n patch exec -it $1 -- bash
}
