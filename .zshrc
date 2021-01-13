plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    colored-man-pages
)
source $ZSH/oh-my-zsh.sh


ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export LC_CTYPE=en_US.UTF-8   # tab chars duplicates
setopt no_share_history       # no_share_history
setopt no_nomatch             # incompatible jq .[]

# when ctrl + w, delete the whole word
autoload -Uz backward-kill-word-match
bindkey '^W' backward-kill-space-word
zle -N backward-kill-space-word backward-kill-word-match
zstyle :zle:backward-kill-space-word word-style space

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} * %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔ %{$reset_color%}"
PROMPT='%{$fg_bold[red]%}[%{$fg[green]%}%n@%m%{$reset_color%} %{$fg[cyan]%}%1~%{$fg_bold[red]%}]%{$reset_color%} %{$fg_bold[yellow]%}$(c="$?";[ "$c" != "0" ] && echo "$c ")$(git_prompt_info)%{$fg_bold[red]%} '


# HSTR configuration
export HSTR_CONFIG=hicolor,hide-help,substring-matching
export HSTR_PROMPT="[$(whoami)@$(hostname) $(basename $(pwd))]  "
alias hh=hstr                          # hh to be alias for hstr
setopt histignorespace                 # skip cmds w/ leading space from history
bindkey -s "\C-r" "\C-a hstr -- \C-j"  # bind hstr to Ctrl-r (for Vi mode check doc)
