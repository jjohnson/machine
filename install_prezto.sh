#!/bin/sh

if [ -d "$HOME/.zprezto" ]; then
  printf "\nPrezto already installed!\n"
else
  printf "\nInstalling Prezto ...\n"
  printf "\nLooking for an existing zsh config ...\n"
  if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]; then
    printf "Found ~/.zshrc. Backing up to ~/.zshrc.pre-prezto\n";
    mv ~/.zshrc ~/.zshrc.pre-prezto;
  fi

  git clone --recursive https://github.com/jjohnson/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
  setopt EXTENDED_GLOB
  for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
fi

