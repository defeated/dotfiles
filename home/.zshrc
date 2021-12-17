# colorize commands like `ls` etc.
export CLICOLOR=1

# colorize paginated screens like `man` etc.
export PAGER=most

# homebrew; package manager. https://brew.sh
eval "$(/opt/homebrew/bin/brew shellenv)"

# setup zsh auto completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
autoload -Uz compinit
zstyle ":completion:*" menu select
zstyle ":completion:*" matcher-list "m:{[:lower:][:upper:]}={[:upper:][:lower:]}" "m:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*" "m:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*" "m:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*"
compinit

# antigen; zsh plugin manager. https://antigen.sharats.me
source $(brew --prefix)/share/antigen/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting # must be last
antigen apply

# asdf; version manager for ruby, node, etc. http://asdf-vm.com
source $(brew --prefix asdf)/libexec/asdf.sh

# prompt customization; see ~/.config/starship.toml & https://starship.rs
eval "$(starship init zsh)"
