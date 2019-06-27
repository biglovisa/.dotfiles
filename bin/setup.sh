#!/bin/bash
# create the symlinks in the root directoy

echo "Creating zsh_profile and zshrc symlinks"

ln -s ~/.dotfiles/zsh/.zshrc.zsh ~/.zshrc 2>/dev/null 
ln -s ~/.dotfiles/zsh/.zsh_profile.zsh ~/.zsh_profile.zsh 2>/dev/null 

###----------- set zsh as default shell  -----------###

echo "Setting zsh as the default shell"

if [ $(echo $SHELL) != "/bin/zsh" ]; then
  chsh -s $(which zsh) 2>/dev/null 
fi

if [ $(echo $SHELL) != "/bin/zsh" ]; then
  echo "Unable to change the shell. Please check your credentials and try again."
  exit 1 
fi

###----------- installing software  -----------###

source "$HOME/.dotfiles/sh/install_packages.sh"

echo "Close the terminal and open a new window."