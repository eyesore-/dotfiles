# git status variables
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$reset_color%}-> %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[cyan]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}—"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[green]%}»"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[white]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[blue]%}?"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg_bold[yellow]%}$"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[blue]%}⇣"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[blue]%}⇡"

# git status display
local git_info='$(git_prompt_info) $(git_prompt_status)%{$reset_color%}'

# current user and hostname
local user_host='%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[yellow]%}%m %{$reset_color%}'

# default: blue, if return code other than 0: red
local prompt_color="%(?,%{$fg[blue]%},%{$fg[red]%})"

local prompt_symbol="➜"

local timestamp='%{$fg[yellow]%}%D{%K:%M:%S}%{$reset_color%}'
local prompt='${prompt_color}${prompt_symbol} %{$reset_color%}'

# current directory display
local directory_path='%{$fg[magenta]%}%2~'

# last command return code
local return_code='%(?,,%{$bg[red]%}%B %? %b%{$reset_color%})'

# prompt definition
PROMPT="${directory_path}${git_info}
${prompt}"

# right prompt definition
RPROMPT="${return_code} "
RPROMPT+="${timestamp}"

# prompt cursor fix when exiting vim
local cursor="\e[3 q"

_fix_cursor() {
  echo -ne "${cursor}"
}

precmd_functions+=(_fix_cursor)
