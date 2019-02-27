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

function up() {
  git checkout master
  git pull
  bundle install
  bundle exec rake db:migrate
}
