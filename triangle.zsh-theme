local return_status="%(?:%{$fg_bold[green]%}∆:%{$fg_bold[red]%}∇)%{$reset_color%}"
if [[ -n "$SSH_CLIENT" ]]; then
    local user_prompt="%n@%m : "
fi
local wd_prompt="%4(~:..:)%3~"
local prompt_end="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})⨠%{$reset_color%} "

PROMPT="${return_status} ${user_prompt}${wd_prompt} ${prompt_end} "

local git_status='%{$fg_bold[green]%}$(git_prompt_status)$(git_prompt_info)%{$reset_color%}$(git_remote_status)'

RPROMPT="${git_status}"

ZSH_THEME_GIT_PROMPT_UNTRACKED="? "

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[yellow]%}"

ZSH_THEME_GIT_PROMPT_STASHED=""
ZSH_THEME_GIT_PROMPT_UNMERGED="⬖ "

ZSH_THEME_GIT_PROMPT_AHEAD=""
ZSH_THEME_GIT_PROMPT_BEHIND=""
ZSH_THEME_GIT_PROMPT_DIVERGED=""

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""

ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" %{$fg_bold[yellow]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" %{$fg_bold[green]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE=" %{$fg_bold[red]%}⇵%{$reset_color%}"
