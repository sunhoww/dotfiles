PROMPT='%(?,%{$fg[green]%},%{$fg[red]%}) $ '
RPS1='%{$fg[white]%}%1~$(git_prompt_info) %{$fg_bold[blue]%}%m%{$reset_color%} %T %{$fg[cyan]%}$(nvm current 2>/dev/null)⬢%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} 💩%{$fg[yellow]%}"
