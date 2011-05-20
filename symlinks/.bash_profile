GREEN="\[\033[1;32m\]"
MAGENTA="\[\033[1;35m\]"
YELLOW="\[\033[1;33m\]"
CYAN="\[\033[36m\]"
ENDCLR="\[\033[0m\]"

source ~/.git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=auto
export GIT_PS1_SHOWSTASHSTATE=true

PS1="$MAGENTA\$(~/.rvm/bin/rvm-prompt)$ENDCLR [$GREEN\w$ENDCLR]
$CYAN\$(__git_ps1 '(%s):')$ENDCLR$YELLOW\$ $ENDCLR"

alias ls="ls -FGoah"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
