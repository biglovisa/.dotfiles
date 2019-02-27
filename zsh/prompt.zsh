#!/bin/bash
parse_git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

prompt() {
    PROMPT="✨ %F{blue}$(pwd)%f%F{yellow}$(parse_git_branch)%f "
    RPROMPT='%F{yellow}⏰  $(date +"%H:%M")%f'
}
