source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

set -gx EDITOR micro
set -gx VISUAL zeditor

starship init fish | source
mise activate fish | source
zoxide init fish --cmd cd | source

alias cat='bat --paging=never'
alias z='__zoxide_z'
alias zi='__zoxide_zi'
alias docker='podman'
alias zed='zeditor'
