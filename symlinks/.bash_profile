PATH=/usr/local/share/npm/bin:/usr/local/bin:$PATH
GREEN="\[\033[32m\]"
MAGENTA="\[\033[1;35m\]"
YELLOW="\[\033[1;33m\]"
CYAN="\[\033[36m\]"
ENDCLR="\[\033[0m\]"

source ~/.rvm/scripts/rvm
source ~/.rvm/scripts/completion
source ~/.git-completion.bash
source ~/.git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=legacy
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true

PROMPT_COMMAND="__git_ps1 '$MAGENTA\$(~/.rvm/bin/rvm-prompt)$ENDCLR [$CYAN\w$ENDCLR]\n' '💰  ' '(%s) '"

alias ls="ls -FGoah"
