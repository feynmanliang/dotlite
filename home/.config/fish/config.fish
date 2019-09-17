fish_vi_key_bindings

# https://github.com/pyenv/pyenv/issues/688
set -gx GIT_INTERNAL_GETTEXT_TEST_FALLBACKS 1

set -gx PATH ~/bin ~/.homesick/repos/homeshick/bin $PATH
set -gx GOPATH ~/go

set -gx FZF_DEFAULT_COMMAND  'rg --files --hidden --ignore-file .git/'
set -gx EDITOR 'nvim'

set -gx CLOUDSDK_PYTHON /usr/bin/python2

source ~/.config/fish/aliases.fish

if test -z $ASDF_DIR
  source ~/.asdf/asdf.fish
end

direnv hook fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/feynman/.asdf/installs/python/miniconda3-4.3.30/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/feynman/google-cloud-sdk/path.fish.inc' ]; . '/home/feynman/google-cloud-sdk/path.fish.inc'; end
