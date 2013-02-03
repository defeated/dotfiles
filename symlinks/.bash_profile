JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
PATH=/usr/local/share/npm/bin:/usr/local/bin:$PATH
PATH=$JAVA_HOME/bin:$PATH

GREEN="\e[32m"
MAGENTA="\e[1;35m"
YELLOW="\e[1;33m"
CYAN="\e[36m"
ENDCLR="\e[0m"

source ~/.rvm/scripts/rvm
source ~/.rvm/scripts/completion
source ~/.git-completion.bash
source ~/.git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=legacy
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true

PROMPT_COMMAND="__git_ps1 '$MAGENTA\$(~/.rvm/bin/rvm-prompt)$ENDCLR [$CYAN\w$ENDCLR]\n' '💰  ' '🌱  (%s) '"

alias ls="ls -FGoah"
