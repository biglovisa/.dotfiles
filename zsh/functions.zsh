dl() {
  youtube-dl $(cat $1 | tr "\n" " ")
}

setalias() {
  name=$1
  value=${@:2}

  echo "alias $name=\"$value\"" >> "$HOME/.dotfiles/zsh/aliases.zsh"
}
