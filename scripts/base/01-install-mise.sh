#!/usr/bin/env bash

ENDCOLOR="\e[0m"
YELLOW="\e[33m"

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

setup_mise() {
  curl https://mise.run | sh

  export PATH="$HOME/.local/bin:$PATH"

  if ! command_exists asdf; then
    echo "mise not found!"
    exit 127
  fi
}

if command_exists mise; then
  echo "mise is installed. Skipping..."
else
  echo "${YELLOW}Installing mise tool manager...${ENDCOLOR}"
  setup_mise
  echo "mise installed!"
fi


