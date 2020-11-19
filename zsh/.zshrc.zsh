#!/bin/bash

###-----------	zsh options -----------###

HISTFILE=~/.zsh_history
HISTSIZE=10000

setopt PROMPT_SUBST

precmd_functions+=(prompt)

###-----------	Configure $PATH -----------###

export DOTFILES="$HOME/.dotfiles"
export GOPATH="$HOME/Code/go"

export PATH="$DOTFILES/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv >/dev/null; then eval "$(pyenv init -)"; fi

export RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)"

### load zsh config files ###

source "$HOME/.dotfiles/zsh/prompt.zsh"
source "$HOME/.dotfiles/zsh/functions.zsh"
source "$HOME/.dotfiles/zsh/aliases.zsh"

###-----------	Shell config -----------###

# autocomplete
source /usr/local/share/zsh/site-functions/git-completion.bash 2>/dev/null

# always color matches
GREP_OPTIONS='--color=auto'

# rbenv
eval "$(rbenv init -)"

export AWS_PROFILE='patch'

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
