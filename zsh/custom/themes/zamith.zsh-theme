# ----------------------------------------------
# Zamith oh-my-zsh theme
# based on the ys theme
# ----------------------------------------------

# Directory info.
local current_dir='${PWD/#$HOME/~}'
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"

# Git info.
local git_info='$(git_prompt_info)'
local git_sha='$(git_prompt_short_sha)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}on%{$reset_color%} git:%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}o"
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$RED%}(!)"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$WHITE%}[%{$YELLOW%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%}]"

# Only display host if this is via SSH
if [[ -n $SSH_CONNECTION ]]; then
    sshing="%n@%m"
else
    sshing=""
fi

PROMPT="
%{$fg[green]%}$sshing\
${ret_status}\
%{$terminfo[bold]$fg[yellow]%} %c%{$reset_color%}\
${git_info}${git_sha}
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
