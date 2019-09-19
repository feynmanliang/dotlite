" vim:fdm=marker
let g:python_host_prog='/home/feynman/.asdf/installs/python/2.7.16/bin/python'
let g:python3_host_prog='/home/feynman/.asdf/installs/python/3.7.3/bin/python'

"" Install vim-plug if missing {{{
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}

" Plugins {{{
call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'

Plug 'lambdalisue/suda.vim'
Plug 'mhinz/neovim-remote'

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'

Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-signify'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'justinmk/vim-sneak'

Plug 'w0rp/ale'
Plug 'tpope/vim-sleuth'
Plug 'sheerun/vim-polyglot'
Plug 'ntpeters/vim-better-whitespace'

let g:polyglot_disabled = ['tex','latex','plaintex']
let g:vimtex_compiler_progname = 'nvr'
let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method = "zathura"
let g:tex_flavor = 'latex'
let g:sneak#label = 1

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lervag/vimtex'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'deoplete-plugins/deoplete-jedi'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

call plug#end()
" }}}

set number
set clipboard+=unnamedplus
set conceallevel=0

filetype plugin on

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#source_importer = 1

call deoplete#custom#var('omni', 'input_patterns', {
  \ 'tex': g:vimtex#re#deoplete
  \})

" Key mappings {{{
let mapleader=","

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>e :NERDTreeFind<CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>

nmap <C-p> :Files<CR>
nnoremap <silent> <C-l> :Rg <C-R><C-W><CR>

nmap ; :Buffers<CR>

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" }}}

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'

let g:polyglot_disabled = ['tex','latex','plaintex']
let g:vimtex_compiler_progname = 'nvr'
let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method = "zathura"
let g:tex_flavor = 'latex'
let g:sneak#label = 1

set shell=/bin/bash
set ignorecase
set smartcase

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

set undofile
set undodir=$HOME/.vimundo/
