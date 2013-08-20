
"-------------------------------------------------
" vundle
"-------------------------------------------------
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'quickhl.vim'
Bundle 'gtags.vim'

Bundle 'Lokaltog/vim-distinguished'
Bundle 'nanotech/jellybeans.vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'tomasr/molokai'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"-------------------------------------------------
" easymotion
"-------------------------------------------------
let g:EasyMotion_leader_key = '<Leader>'
" <Leader> means \ key
let g:EasyMotion_keys = 'asdfghjklqwertyuiopzxcvbnmASDFGHJKLQWERTYUIOPZXCVBNM'

"-------------------------------------------------
" FuzzyFinder
"-------------------------------------------------
nnoremap [MyPrefix]f	:<C-u>FufFile<CR>
nnoremap [MyPrefix]b	:<C-u>FufBuffer<CR>

"-------------------------------------------------
" quickhl
"-------------------------------------------------
nmap <Space>m <Plug>(quickhl-toggle)
xmap <Space>m <Plug>(quickhl-toggle)
nmap <Space>M <Plug>(quickhl-reset)
xmap <Space>M <Plug>(quickhl-reset)
nmap <Space>j <Plug>(quickhl-match)

"-------------------------------------------------
" gtags
"-------------------------------------------------
map <C-g> :Gtags 
map <C-h> :Gtags -f %<CR>
"map <C-j> :GtagsCursor<CR>
map <C-j> :Gtags <C-r><C-w><CR>
map <C-k> :Gtags -r <C-r><C-w><CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

"-------------------------------------------------
"" General
"-------------------------------------------------
set nocompatible

set fileencodings=iso-2022-jp,euc-jp,cp932,ucs-bom,utf-8,default,latin1
set fileformat=unix

set cursorline
set number
set ruler
set nolist
set wrap

set title
set wildmenu
set cmdheight=2
set laststatus=2

syntax on
set t_Co=256
colorscheme distinguished

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
set nobackup
set noswapfile

"-------------------------------------------------
" keymap
"-------------------------------------------------
noremap [MyPrefix] <Nop>
map <Space> [MyPrefix]
noremap  
noremap!  

"-------------------------------------------------
" ctags
"-------------------------------------------------
set tags+=./tags;

