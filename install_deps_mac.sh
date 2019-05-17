#!/usr/bin/env bash

# dependencies
brew install \
  coreutils automake autoconf openssl \
  libyaml readline libxslt libtool unixodbc \
  zlib unzip git curl gnupg2
brew install fish tmux neovim
brew install ripgrep ghq hub

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.1
mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

# this is needed to resole a zlib issue when building python on mojave
open /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg
asdf plugin-add python
asdf install python 3.7.3
asdf install python 2.7.16
asdf global python 3.7.3 2.7.16
pip2 install neovim
pip3 install neovim

asdf plugin-add nodejs
gpg --recv-keys 8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600
asdf install nodejs 12.2.0
asdf global nodejs 12.2.0
npm install -g yarn typescript neovim

asdf plugin-add golang
asdf install golang 1.12.5
asdf global golang 1.12.5

# fish
which fish | sudo tee -a /etc/shells
chsh -s `which fish`

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fish -c fisher

# tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#neovim  dotfiles
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
