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

  echo "alias $name=\"$value\"" >> "$HOME/.dotfiles/zsh/aliases.zsh"
}

# A wrapper function around the wttr.in API. Displays weather using the metric system
# $1: the location you want to check
wtw() {
  location=$(echo "$@" | tr " " "+")
  curl wttr.in/$location?m
}
