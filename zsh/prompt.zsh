parse_git_branch() {
    if [ -e .git ]; then 
        git branch 2>/dev/null | grep '^*' | tr "*" ":"; 
    fi
}

prompt () {
    PROMPT="✨ %F{blue}$(pwd)%f%F{green}$(parse_git_branch)%f "
    RPROMPT='%F{yellow}⏰  $(date +"%H:%M")%f'
}
