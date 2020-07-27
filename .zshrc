export PATH=/usr/local/sbin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/joel/.oh-my-zsh"

ZSH_THEME="min"

source $ZSH/oh-my-zsh.sh

# Load shell dotfiles
# ~/.path to extend `$PATH`
for file in ~/.{path,aliases,exports}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Override refresh to use .zshrc instead of .bash_profile
alias refresh="source ~/.zshrc && echo 'Refreshed 🌧'"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS=true

plugins=(git)
