# alias settings
alias ll='ls -lF'


# settings for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# activate default workspace env
export WORKON_HOME=$HOME/.virtualenvs
pyenv virtualenvwrapper
workon wk3


# bash-git-prompt settings
export GIT_PROMPT_ONLY_IN_REPO=1
export GIT_PROMPT_END=" $ "
source ~/.bash-git-prompt/gitprompt.sh


# hstr start
export HH_CONFIG=hicolor         # get more colors
export HSTR_CONFIG=hicolor
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
# if this is interactive shell, then bind hh to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hh -- \C-j"'; fi
bind '"\C-r": "\C-ahstr -- \C-j"'

