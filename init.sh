#!/usr/bin/env bash

function bootstrap() {
  rsync --exclude ".DS_Store" \
    --exclude "init.sh" \
    --exclude "brew.sh" \
    --exclude ".git" \
    -avh --no-perms . ~;
  . "./brew.sh"
  echo "Setting up Git completion";
  mkdir -p ~/.zsh
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.zsh/git-completion.bash
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh -o ~/.zsh/_git
  echo ""; # spacing
  source ~/.zshrc;
  echo 'Sourced ⚡️';
  echo ""; # spacing
  echo "Set up Git globals";
  read -p "Git name: ";
  git config --global user.name $REPLY;
  read -p "Git email: ";
  git config --global user.email $REPLY;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  bootstrap;
else
  read -p "This may overwrite existing files. Continue? Y/N " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    bootstrap;
  fi;
fi;

unset bootstrap;
