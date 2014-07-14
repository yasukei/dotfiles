"-------------------------------------------------
" cheat sheet
"-------------------------------------------------
" vimdiff
"   do, dp: diff obtain, diff put
"   [c, ]c: prev diff, next diff
"
" edit file or directory
"   :e %:p
"   :e %:h
"
" re-select selected visual area
"   gv
"
" go-back to last edit
"   g;	go back
"   g,	go forward
"
" open command line window
"   q:
"
" show each register's content
"   :registers
"   :reg
"

"-------------------------------------------------
" vundle
"-------------------------------------------------
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/Vundle.vim'

" My Bundles here:
"
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'Lokaltog/vim-easymotion'
Bundle 't9md/vim-quickhl'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'itchyny/lightline.vim'
"Bundle 'gtags.vim' " install manually gtags.vim version 0.6.4 or later from GNU GLOBAL share directory
Bundle 'thinca/vim-quickrun'

Bundle 'Lokaltog/vim-distinguished'
Bundle 'nanotech/jellybeans.vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'yasukei/vim-colors'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

call vundle#end()
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
" Lokaltog/vim-easymotion
"-------------------------------------------------
let g:EasyMotion_leader_key = '<Leader>'
" <Leader> means \ key
let g:EasyMotion_keys = 'asdfghjklqwertyuiopzxcvbnmASDFGHJKLQWERTYUIOPZXCVBNM'

"-------------------------------------------------
" t9md/vim-quickhl
"-------------------------------------------------
nmap [MyPrefix]h <Plug>(quickhl-manual-this)
xmap [MyPrefix]h <Plug>(quickhl-manual-this)
nmap [MyPrefix]H <Plug>(quickhl-manual-reset)
xmap [MyPrefix]H <Plug>(quickhl-manual-reset)
nmap [MyPrefix]w <Plug>(quickhl-cword-toggle)

"-------------------------------------------------
" FuzzyFinder
"-------------------------------------------------
"nnoremap [MyPrefix]f	:<C-u>FufFile<CR>
"nnoremap [MyPrefix]b	:<C-u>FufBuffer<CR>
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400
nnoremap [MyPrefix]b		:FufBuffer<CR>
nnoremap [MyPrefix]f		:FufFile<CR>
nnoremap [MyPrefix]F		:FufFileWithCurrentBufferDir<CR>
nnoremap [MyPrefix]d		:FufDir<CR>
nnoremap [MyPrefix]D		:FufDirWithCurrentBufferDir<CR>
nnoremap [MyPrefix]mf		:FufMruFile<CR>
nnoremap [MyPrefix]mc		:FufMruCmd<CR>
nnoremap [MyPrefix]cf		:FufCoverageFileChange<CR>
nnoremap [MyPrefix]cF		:FufCoverageFileRegister<CR>
nnoremap [MyPrefix]vf		:FufBookmarkFile<CR>
nnoremap [MyPrefix]vF		:FufBookmarkFileAdd<CR>
nnoremap [MyPrefix]vd		:FufBookmarkDir<CR>
nnoremap [MyPrefix]vD		:FufBookmarkDirAdd<CR>
nnoremap [MyPrefix]j		:FufJumpList<CR>
nnoremap [MyPrefix]q		:FufQuickfix<CR>
nnoremap [MyPrefix]<C-r>	:FufRenewCache<CR>

"-------------------------------------------------
" itchyny/lightline.vim
"-------------------------------------------------
"let g:lightline = {
"	\ 'colorscheme': 'wombat',
"	\ }
let g:lightline = {
	\ 'colorscheme': 'solarized',
	\ }
let g:lightline.component = {
	\ 'filename': '%f',
	\ 'lineinfo': '%3l/%L:%-2v',
	\ }
let g:lightline.active = {
	\ 'left': [ [ 'mode', 'paste' ],
	\           [ 'readonly', 'filename', 'modified' ] ],
	\ 'right': [ [ 'lineinfo' ],
	\            [ 'percent' ],
	\            [ 'fileformat', 'fileencoding', 'filetype' ] ] }
let g:lightline.inactive = g:lightline.active

"-------------------------------------------------
" gtags
"-------------------------------------------------
noremap <C-g> :Gtags 
noremap <C-h> :Gtags -f %<CR>
"noremap <C-j> :GtagsCursor<CR>
noremap <C-j> :Gtags <C-r><C-w><CR>
noremap <C-k> :Gtags -r <C-r><C-w><CR>
noremap <C-n> :cn<CR>
noremap <C-p> :cp<CR>

"-------------------------------------------------
" QuickRun
"-------------------------------------------------
"noremap <C-r><C-r> :QuickRun ruby<CR>
"let g:quickrun_config["_"] = {
"    \ "outputter/buffer/split" : ":rightbelow 8sp",
"    \ "outputter/error/error" : "quickfix",
"    \ "outputter/error/success" : "quickfix",
"    \ "outputter" : "error",
"	\ }

"-------------------------------------------------
" qfixhowm
"-------------------------------------------------
"set runtimepath+=~/.vim/qfixapp
"let QFixHowm_key		= 'g'
"let howm_dir			= '~/howm'
"let howm_filename		= '%Y/%m/%Y-%m-%d-%H%M%s.txt'
"let howm_fileencoding	= 'utf-8'
"let howm_fileformat		= 'unix'
"
"let QFixHowm_FileType	= 'qfix_memo'

"-------------------------------------------------
"" General
"-------------------------------------------------
set nocompatible

"set fileencodings=iso-2022-jp,euc-jp,cp932,ucs-bom,utf-8,default,latin1
set fileformat=unix

set cursorline
set number
set ruler
set nolist
set wrap

set title
set showmode
set wildmenu
set cmdheight=2
set laststatus=2
set history=200

syntax on
set t_Co=256
colorscheme no_quarter

set tabstop=4
set shiftwidth=4
set noexpandtab
set backspace=indent,eol,start

set autoindent
set smartindent
set cindent

set foldmethod=indent
set foldlevel=3
"set foldcolumn=2
" zR: open all, zo: open, zO: open recursively
" zM: close all, zc: close, zC: close recursively

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

