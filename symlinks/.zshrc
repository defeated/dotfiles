# colors module
autoload colors
colors

# configure command history, press the up key to go backwards
export HISTSIZE=1000 # number of lines kept in history
export SAVEHIST=1000 # number of lines saved in the history after logout
export HISTFILE=~/.zhistory # location of history
setopt inc_append_history # append command to history file once executed
setopt hist_ignore_all_dups # ignore duplicate commands

# set version control
autoload -U vcs_info # include vcs module
zstyle ":vcs_info:*" check-for-changes true
zstyle ":vcs_info:*" unstagedstr "%F{red}!%f" # changes waiting to be staged
zstyle ":vcs_info:*" stagedstr "%F{yellow}*%f" # changes waiting to be committed
zstyle ":vcs_info:*" formats "%F{cyan}%s%f:%F{cyan}(%b)%f%u%c" # git:(branch)!?

# setup aliases
alias ls="ls -FGoah" # long format, show dotfiles, enable colors, with identifiers

# set tab completion
autoload -U compinit # include completion initializer
zstyle ":completion:*" menu select # tab through matches in a menu, or use arrow keys
zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}" # case insensitive
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
compinit # run completion initializer

precmd() {
	vcs_info # run vcs module

	# format prompt
 	PROMPT="%B%F{magenta}%n%f%b@%B%F{yellow}%m%f%b[%B%F{green}${PWD/#$HOME/~}%f%b] %# " # user@machine[dir] %
  	RPROMPT="${vcs_info_msg_0_}" # display any vcs info on the right
}

# load RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"