# terminal history settings!
export CLICOLOR=1
export HISTFILESIZE=4000
export HISTCONTROL=ignoreboth

# paths!
eval "$(rbenv init -)"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/heroku/bin:$PATH
export PATH=$JAVA_HOME/bin:$PATH

# colors!
BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
MAGENTA="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
WHITE="\[\033[0;37m\]"
ENDCLR="\[\033[0m\]"

# includes!
source `brew --prefix`/etc/autojump.sh
source `brew --prefix`/etc/bash_completion.d/git-completion.bash
source `brew --prefix`/etc/bash_completion.d/git-prompt.sh

# options for __git_ps1 function
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=git
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true

# dat prompt!
export PS2="   ${RED}↳${ENDCLR}  "
export PS1=""
export PS1="${PS1}${YELLOW}\u@\h${ENDCLR} ▸ "
export PS1="${PS1}${MAGENTA}\$(rbenv version-name)${ENDCLR} ▸ "
export PS1="${PS1}${CYAN}\${PWD}${ENDCLR}"
export PS1="${PS1}\$(__git_ps1 ' ▸ ${GREEN}%s${ENDCLR}')"
export PS1="${PS1}\[\n\]"
export PS1="${PS1}${RED}★ ${ENDCLR}"

# aliases!
alias ls="ls -FGoah"
alias irb="pry"
alias heroky="heroku"
alias dnsflush="dscacheutil -flushcache"
alias ipinternal="ipconfig getifaddr en1"
alias ipexternal="dig +short myip.opendns.com @208.67.222.222 @208.67.220.220"
