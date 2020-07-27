# Add `~/bin` to `$PATH`
export PATH="$HOME/bin:$PATH";

# Load shell dotfiles
# ~/.path to extend `$PATH`
for file in ~/.{path,bash_prompt,aliases,exports}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

test -f ~/.git-completion.bash && . $_

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

