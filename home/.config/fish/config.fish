fish_vi_key_bindings

# https://github.com/pyenv/pyenv/issues/688
set -gx GIT_INTERNAL_GETTEXT_TEST_FALLBACKS 1

set -gx PATH ~/bin ~/.homesick/repos/homeshick/bin $PATH
set -gx GOPATH ~/go

set -gx FZF_DEFAULT_COMMAND  'rg --files --hidden'
set -gx EDITOR 'nvim'

set -gx CLOUDSDK_PYTHON /usr/local/bin/python2

source ~/.config/fish/aliases.fish

source ~/.asdf/asdf.fish

direnv hook fish | source
