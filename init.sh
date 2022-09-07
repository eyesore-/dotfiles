#!/usr/bin/env bash

function bootstrap() {
  rsync --exclude ".DS_Store" \
    --exclude "init.sh" \
    --exclude ".git" \
    -avh --no-perms . ~;
  source ~/.zshrc;
  echo 'Sourced ⚡️';
  echo ""; # spacing
  echo "Downloading Git completion";
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
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
