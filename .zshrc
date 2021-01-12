plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export LC_CTYPE=en_US.UTF-8

PROMPT='[%{$fg_bold[red]%}%{$fg[green]%}%n@%m%{$reset_color%} %{$fg[cyan]%}$(basename $(pwd))] $(git_prompt_info)%{$fg_bold[red]%} '

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} * %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔ %{$reset_color%}"
