if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'jeffkreeftmeijer/neovim-sensible'

Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-signify'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mbbill/undotree'

Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'tpope/vim-sleuth'
Plug 'ntpeters/vim-better-whitespace'

let g:polyglot_disabled = ['tex','latex','plaintex']
Plug 'lervag/vimtex'
Plug 'mhinz/neovim-remote'
let g:vimtex_compiler_progname = 'nvr'

Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

Plug 'deoplete-plugins/deoplete-jedi'



call plug#end()

set clipboard+=unnamedplus

filetype plugin on

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#source_importer = 1

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

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"let g:neosnippet#disable_runtime_snippets = 1
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'

" For conceal markers.
" if has('conceal')
"   set conceallevel=2 concealcursor=niv
" endif



set shell=/bin/bash
set ignorecase
set smartcase

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

set undofile
set undodir=$HOME/.vimundo/

" Tagbar gotags
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

