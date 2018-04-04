dl() {
  youtube-dl $(cat $1 | tr "\n" " ")
}
