fish_vi_key_bindings

set -gx PATH ~/bin ~/.homesick/repos/homeshick/bin $PATH
set -gx GOPATH ~/go

set -gx FZF_DEFAULT_COMMAND  'rg --files --hidden'
set -gx EDITOR 'nvim'
set -gx GPG_TTY (tty)

source ~/.config/fish/aliases.fish

source /opt/asdf-vm/asdf.fish

# cat ~/.cache/wal/sequences &

direnv hook fish | source
