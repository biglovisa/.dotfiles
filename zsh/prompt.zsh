prompt () {
    PROMPT='✨ %F{blue}$(pwd)%f%F{green}$(if [ -e .git ]; then git branch 2>/dev/null | grep '^*' | tr "*" ":"; fi)%f  '
    RPROMPT='%F{yellow}⏰  $(date +"%H:%M")%f'
}
