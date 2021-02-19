#!/bin/bash
parse_git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

prompt() {
    dir=${PWD##*/}
    PROMPT="🧹 %F{blue}$(date +"%H:%M") $dir%f%F{yellow}$(parse_git_branch)%f "
}
