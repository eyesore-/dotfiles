export PATH=/usr/local/sbin:$PATH

fpath+=("$(brew --prefix)/share/zsh/site-functions")
ZSH_THEME=""

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

autoload -U promptinit; promptinit
prompt pure
