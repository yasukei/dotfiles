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
" NeoBundle
"-------------------------------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"NeoBundle 'kien/ctrlp.vim'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'tpope/vim-repeat'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 't9md/vim-quickhl'
"NeoBundle 'L9'
"NeoBundle 'FuzzyFinder'
NeoBundle 'itchyny/lightline.vim'
"Bundle 'gtags.vim' " install manually gtags.vim version 0.6.4 or later from GNU GLOBAL share directory
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'rking/ag.vim'
"NeoBundle 'vcscommand.vim'
NeoBundle 'fuenor/qfixhowm.git'

" colorscheme
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'yasukei/vim-colors'

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


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
" ctrlp
"-------------------------------------------------
let g:ctrlp_map = '<Nop>'
let g:ctrlp_show_hidden = 1
nnoremap [MyPrefix]b		:<C-u>CtrlPBuffer<CR>
nnoremap [MyPrefix]f		:<C-u>CtrlP<CR>
nnoremap [MyPrefix]F		:<C-u>CtrlPCurFile<CR>
nnoremap [MyPrefix]d		:<C-u>CtrlPCurWD<CR>
nnoremap [MyPrefix]D		:<C-u>CtrlPDir<CR>
nnoremap [MyPrefix]mf		:<C-u>CtrlPMRUFiles<CR>
nnoremap [MyPrefix]vd		:<C-u>CtrlPBookmarkDir<CR>
nnoremap [MyPrefix]vD		:<C-u>CtrlPBookmarkDirAdd<CR>
nnoremap [MyPrefix]l		:<C-u>CtrlPLine<CR>
nnoremap [MyPrefix]q		:<C-u>CtrlPQuickfix<CR>

"-------------------------------------------------
" FuzzyFinder
"-------------------------------------------------
"nnoremap [MyPrefix]f	:<C-u>FufFile<CR>
"nnoremap [MyPrefix]b	:<C-u>FufBuffer<CR>
"let g:fuf_modesDisable = []
"let g:fuf_mrufile_maxItem = 400
"let g:fuf_mrucmd_maxItem = 400
"nnoremap [MyPrefix]b		:FufBuffer<CR>
"nnoremap [MyPrefix]f		:FufFile<CR>
"nnoremap [MyPrefix]F		:FufFileWithCurrentBufferDir<CR>
"nnoremap [MyPrefix]d		:FufDir<CR>
"nnoremap [MyPrefix]D		:FufDirWithCurrentBufferDir<CR>
"nnoremap [MyPrefix]mf		:FufMruFile<CR>
"nnoremap [MyPrefix]mc		:FufMruCmd<CR>
"nnoremap [MyPrefix]cf		:FufCoverageFileChange<CR>
"nnoremap [MyPrefix]cF		:FufCoverageFileRegister<CR>
"nnoremap [MyPrefix]vf		:FufBookmarkFile<CR>
"nnoremap [MyPrefix]vF		:FufBookmarkFileAdd<CR>
"nnoremap [MyPrefix]vd		:FufBookmarkDir<CR>
"nnoremap [MyPrefix]vD		:FufBookmarkDirAdd<CR>
"nnoremap [MyPrefix]j		:FufJumpList<CR>
"nnoremap [MyPrefix]q		:FufQuickfix<CR>
"nnoremap [MyPrefix]<C-r>	:FufRenewCache<CR>

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
"let g:quickrun_config = {
"\	"_" : {
"\		"outputter/buffer/split" : "rightbelow 8sp",
"\		"outputter/error/error" : "quickfix",
"\		"outputter/error/success" : "quickfix",
"\		"outputter" : "error",
"\	},
"\}

"-------------------------------------------------
" qfixhowm
"-------------------------------------------------
let QFixHowm_Key = 'g'
let howm_dir             = '~/git/junk/memo/howm'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.txt'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'

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
colorscheme hybrid

set tabstop=4
set shiftwidth=4
set noexpandtab
set backspace=indent,eol,start

"set autoindent
set smartindent
"set cindent

set foldmethod=indent
set foldlevel=3
"set foldcolumn=2
" zR: open all, zo: open, zO: open recursively
" zM: close all, zc: close, zC: close recursively

"set clipboard+=unnamed

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

"-------------------------------------------------
" Go
"-------------------------------------------------
set rtp+=$GOROOT/misc/vim
auto BufWritePre *.go Fmt

" go get github.com/nsf/gocode/
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")

