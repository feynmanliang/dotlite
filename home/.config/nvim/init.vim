call plug#begin('~/.vim/plugged')

Plug 'jeffkreeftmeijer/neovim-sensible'

Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mbbill/undotree'

Plug 'w0rp/ale'
Plug 'tpope/vim-sleuth'
Plug 'ntpeters/vim-better-whitespace'

Plug 'sheerun/vim-polyglot'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'fatih/vim-go'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

let g:deoplete#enable_at_startup = 1

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

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

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

