#!/usr/bin/env bash

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

if ! command_exists zsh; then
  echo "zsh not found."
  exit 127
else
  if ! command_exists chsh; then
    echo "chsh not found. Please change your default shell to zsh manually."
  else
    chsh -s $(which zsh)
  fi
fi

