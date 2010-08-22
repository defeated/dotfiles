# set version control
autoload -U vcs_info # include vcs module
zstyle ":vcs_info:*" check-for-changes true
zstyle ":vcs_info:*" unstagedstr "!" # changes waiting to be staged
zstyle ":vcs_info:*" stagedstr "*" # changes waiting to be committed
zstyle ":vcs_info:*" formats "%F{cyan}%s%f:%F{cyan}(%b)%f%u%c" # git:(branch)!?

# setup aliases
alias ls="ls -FGoah" # long format, show dotfiles, enable colors, with identifiers

# set tab completion
autoload -U compinit # include completion initializer
zstyle ":completion:*" menu select # tab through matches in a menu, or use arrow keys
zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}" # case insensitive
compinit # run completion initializer

precmd() {
	vcs_info # run vcs module

	# format prompt
 	PROMPT="%B%F{magenta}%n%f%b@%B%F{yellow}%m%f%b[%B%F{green}${PWD/#$HOME/~}%f%b] %# " # user@machine[dir] %
  	RPROMPT="${vcs_info_msg_0_}" # display any vcs info on the right
}

# load RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"