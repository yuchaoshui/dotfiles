##### terminal #####
export BASH_SILENCE_DEPRECATION_WARNING=1
export TERM=xterm-color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\e[35;1m[\e[0m\e[32;1m\u@\h \e[0m\e[34;1m\W\e[0m\e[35;1m]\e[0m\e[31;1m  \e[0m"
# export PS1="[\u@\h \W]\$ "


##### bash-git-prompt #####
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_END=" \e[31;1m \e[0m"
    GIT_PROMPT_THEME=Minimal
    source $HOME/.bash-git-prompt/gitprompt.sh
fi
source /usr/local/etc/bash_completion.d/git-completion.bash
alias git='LANG=en_GB git'


##### history HSTR #####
export HISTFILESIZE=100000
export HISTSIZE=100000
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "
alias hh=hstr                    # hh to be alias for hstr
export HSTR_CONFIG=hicolor,hide-help,substring-matching
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
# ensure synchronization between bash memory and history file
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
# if this is interactive shell, then bind hstr to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hstr -- \C-j"'; fi
# if this is interactive shell, then bind 'kill last command' to Ctrl-x k
if [[ $- =~ .*i.* ]]; then bind '"\C-xk": "\C-a hstr -k \C-j"'; fi
bind '"\C-r": "\C-a hstr -- \C-j"'
export HSTR_PROMPT="[$(whoami)@$(hostname) $(basename $(pwd))] "


##### alias #####
alias ll='ls -l'
