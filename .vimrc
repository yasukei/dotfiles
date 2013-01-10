
"-------------------------------------------------
"" General
"-------------------------------------------------
set fileencoding=utf-8
set fileformat=unix

set cursorline
set number
set ruler
set nolist
set wrap
set laststatus=2
set cmdheight=2
set title

syntax on
colorscheme darkblue

set tabstop=4
set shiftwidth=4
set noexpandtab
set backspace=indent,eol,start

set autoindent
set smartindent
set cindent

if has('mouse')
	set mouse=a
endif

"-------------------------------------------------
" Search
"-------------------------------------------------
set ignorecase
set smartcase
set incsearch
set hlsearch
set nowrapscan
set showmatch

"-------------------------------------------------
" Backup
"-------------------------------------------------
" set nobackup
" set noswapfile

"-------------------------------------------------
" ctags
"-------------------------------------------------
set tags+=./tags;

"-------------------------------------------------
" gtags
"-------------------------------------------------
map <C-g> :Gtags 
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
"map <C-n> :cn<CR>
"map <C-p> :cp<CR>

