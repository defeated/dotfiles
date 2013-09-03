export HISTFILESIZE=4000

# paths!
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/heroku/bin:$PATH
export PATH=$JAVA_HOME/bin:$PATH

# colors!
RED="\e[31m"
GREEN="\e[32m"
MAGENTA="\e[35m"
YELLOW="\e[33m"
CYAN="\e[36m"
ENDCLR="\e[0m"

# includes!
eval "$(rbenv init -)"
source `brew --prefix`/etc/autojump.sh
source `brew --prefix`/etc/bash_completion.d/git-completion.bash
source `brew --prefix`/etc/bash_completion.d/git-prompt.sh

# options for __git_ps1 function
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="git"
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true

# dat prompt!
export PS1=""
export PS1="${PS1}${YELLOW}\u@\h${ENDCLR}:"
export PS1="${PS1}${CYAN}\w${ENDCLR}"
export PS1="${PS1}${GREEN}\$(__git_ps1 ' ➤ %s')${ENDCLR}"
export PS1="${PS1}\n"
export PS1="${PS1}${MAGENTA}\$(rbenv version-name)${ENDCLR}"
export PS1="${PS1}${RED} ★ ${ENDCLR}"

# aliases!
alias ls="ls -FGoah"
alias irb="pry"
alias heroky="heroku"
