fish_vi_key_bindings

set -gx PATH ~/bin ~/.homesick/repos/homeshick/bin $PATH

set -gx FZF_DEFAULT_COMMAND  'rg --files --hidden'
set -gx EDITOR 'nvim'

source ~/.config/fish/aliases.fish

source ~/.asdf/asdf.fish
