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

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'linux' : 'make',
			\     'unix' : 'gmake',
			\    },
			\ }

NeoBundle 'hewes/unite-gtags'

"NeoBundle 'kien/ctrlp.vim'
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
" Unite
"-------------------------------------------------
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
let g:unite_winheight = 10
nnoremap <silent> [MyPrefix]ub :<C-u>Unite buffer<CR>
nnoremap <silent> [MyPrefix]uy :<C-u>Unite history/yank<CR>
"nnoremap <silent> [MyPrefix]ul :<C-u>UniteClose line<CR>:<C-u>Unite -buffer-name=line -no-quit line<CR>
nnoremap <silent> [MyPrefix]ul :<C-u>Unite -buffer-name=line -no-quit -resume line<CR>
nnoremap <silent> [MyPrefix]ug :<C-u>UniteClose grep<CR>:<C-u>Unite -buffer-name=grep -no-quit -no-start-insert grep<CR>
nnoremap <silent> [MyPrefix]uG :<C-u>UniteWithBufferDir -no-quit -buffer-name=grep grep<CR>
nnoremap <silent> [MyPrefix]uf :<C-u>UniteWithCurrentDir -buffer-name=files file<CR>
nnoremap <silent> [MyPrefix]uF :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> [MyPrefix]ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [MyPrefix]uu :<C-u>Unite file_mru buffer<CR>

"nmap <C-n> :UniteResume -winheight=g:unite_winheight -no-focus -no-start-insert<CR>:UniteNext<CR>
"nmap <C-p> :UniteResume -winheight=g:unite_winheight -no-focus -no-start-insert<CR>:UnitePrevious<CR>
"nmap <C-n> :UniteNext<CR>
"nmap <C-p> :UnitePrevious<CR>
nmap <C-n> :UniteResume -no-quit<CR><C-n><C-l><CR>
nmap <C-p> :UniteResume -no-quit<CR><C-p><C-l><CR>

noremap <C-j> :Unite -auto-resize -no-quit -no-start-insert -default-action=switch gtags/def:<C-r><C-w><CR><CR>

"TODO: something is wrong
noremap <C-k> :Unite -auto-resize -no-quit -no-start-insert -default-action=switch gtags/ref:<C-r><C-w><CR><CR>

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --smart-case'
  let g:unite_source_grep_recursive_opt = ''
endif

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
"noremap <C-g> :Gtags 
"noremap <C-h> :Gtags -f %<CR>
""noremap <C-j> :GtagsCursor<CR>
"noremap <C-j> :Gtags <C-r><C-w><CR>
"noremap <C-k> :Gtags -r <C-r><C-w><CR>
"noremap <C-n> :cn<CR>
"noremap <C-p> :cp<CR>

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

