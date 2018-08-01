"-------------------------------------------------
" TODO
"-------------------------------------------------
" - change colors of quickhl
"

"-------------------------------------------------
" cheat sheet
"-------------------------------------------------
" vimdiff
"   do, dp: diff obtain, diff put
"   [c, ]c: prev diff, next diff
"
" count pattern being matched
"   :%s///gn
"
" global command
"   print lines match pattern
"     :g/pattern/print
"     :g/pattern/p
"
"   delete lines match pattern
"     :g/pattern/delete
"     :g/pattern/d
"
"   invert
"     :g!/pattern/p
"     :v/pattern/d
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
"   :reg
"
" binary mode
" 	:set binary
" 	:%!xxd
"
" 	:%!xxd -r		# revert
" 	:%!xxd -g 1		# delimited 1 byte

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
"NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 't9md/vim-quickhl'
NeoBundle 'itchyny/lightline.vim'
"Bundle 'gtags.vim' " install manually gtags.vim version 0.6.4 or later from GNU GLOBAL share directory
NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'rking/ag.vim'
NeoBundle 'godlygeek/csapprox'

NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'linux' : 'make',
			\     'unix' : 'gmake',
			\    },
			\ }
NeoBundle "osyo-manga/shabadou.vim"
NeoBundle "osyo-manga/vim-watchdogs"
NeoBundle "cohama/vim-hier"

" colorscheme
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'google/vim-colorscheme-primary'

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
"

"-------------------------------------------------
" netrw
"-------------------------------------------------
nnoremap [MyPrefix]n		:e .<CR>
nnoremap [MyPrefix]N		:e %:h<CR>
let g:netrw_liststyle = 3	" show as tree style. Tips: type i to switch liststyle on netrw
let g:netrw_sizestyle = 'H' " show file size as human readable style
"let g:netrw_preview = 1		" open preview window vertically
"let g:netrw_winsize = 30	" open preview window vertically
let g:netrw_altv = 1 " open file at right side
let g:netrw_alto = 1 " open file at lower side

"-------------------------------------------------
" Lokaltog/vim-easymotion
"-------------------------------------------------
let g:EasyMotion_leader_key = '<Leader>'
" <Leader> means \ key
let g:EasyMotion_keys = 'asdfghjklqwertyuiopzxcvbnmASDFGHJKLQWERTYUIOPZXCVBNM'
hi link EasyMotionTarget Search
hi link EasyMotionShade  Comment
hi link EasyMotionTarget2First Search
hi link EasyMotionTarget2Second Search

"-------------------------------------------------
" tpope/vim-fugitive
"-------------------------------------------------
nnoremap [MyPrefix]gs		:Gstatus<CR>
nnoremap [MyPrefix]gl		:Glog<CR>:copen<CR>
nnoremap [MyPrefix]gL       :Gllog<CR>:copen<CR>
nnoremap [MyPrefix]gd		:Gdiff<CR>
nnoremap [MyPrefix]gD		:Gdiff HEAD<CR>
nnoremap [MyPrefix]ga		:Gwrite<CR>
nnoremap [MyPrefix]gr		:Gread<CR>
nnoremap [MyPrefix]gc		:Gcommit<CR>
nnoremap [MyPrefix]gb		:Gblame<CR>
nnoremap [MyPrefix]gg		:Git 

"-------------------------------------------------
" t9md/vim-quickhl
"-------------------------------------------------
nmap [MyPrefix]h <Plug>(quickhl-manual-this)
xmap [MyPrefix]h <Plug>(quickhl-manual-this)
nmap [MyPrefix]H <Plug>(quickhl-manual-reset)
xmap [MyPrefix]H <Plug>(quickhl-manual-reset)
"nmap [MyPrefix]w <Plug>(quickhl-cword-toggle)

" for 16 colors
"let g:quickhl_manual_colors = [
"	\ "gui=bold ctermfg=7   ctermbg=0   guibg=#0a7383 guifg=#ffffff",
"	\ "gui=bold ctermfg=7   ctermbg=1   guibg=#0a7383 guifg=#ffffff",
"	\ "gui=bold ctermfg=7   ctermbg=2   guibg=#0a7383 guifg=#ffffff",
"	\ "gui=bold ctermfg=7   ctermbg=3   guibg=#0a7383 guifg=#ffffff",
"	\ "gui=bold ctermfg=7   ctermbg=4   guibg=#0a7383 guifg=#ffffff",
"	\ "gui=bold ctermfg=7   ctermbg=5   guibg=#0a7383 guifg=#ffffff",
"	\ "gui=bold ctermfg=7   ctermbg=6   guibg=#0a7383 guifg=#ffffff",
"	\ ]

" for 256 colors
let g:quickhl_manual_colors = [
			\ "gui=bold ctermfg=7   ctermbg=154   guibg=#0a7383 guifg=#ffffff",
			\ "gui=bold ctermfg=7   ctermbg=142   guibg=#0a7383 guifg=#ffffff",
			\ "gui=bold ctermfg=7   ctermbg=226   guibg=#0a7383 guifg=#ffffff",
			\ "gui=bold ctermfg=7   ctermbg=214   guibg=#0a7383 guifg=#ffffff",
			\ "gui=bold ctermfg=7   ctermbg=187   guibg=#0a7383 guifg=#ffffff",
			\ "gui=bold ctermfg=7   ctermbg=217   guibg=#0a7383 guifg=#ffffff",
			\ ]

"-------------------------------------------------
" junegunn/fzf.vim
"-------------------------------------------------
set rtp+=~/.fzf
nnoremap [MyPrefix]fb		:Buffers<CR>
nnoremap [MyPrefix]ff		:Files<CR>
nnoremap [MyPrefix]fa		:Ag 
nnoremap [MyPrefix]fl		:Lines<CR>
nnoremap [MyPrefix]fL		:BLines<CR>
nnoremap [MyPrefix]fc		:Commits<CR>
nnoremap [MyPrefix]fC		:BCommits<CR>
nnoremap [MyPrefix]fs		:Snippets<CR>
nnoremap [MyPrefix]fa       :Ag <C-r><C-w><CR>

"-------------------------------------------------
" SirVer/ultisnips
"-------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"-------------------------------------------------
" ack.vim
"-------------------------------------------------
if executable('ag')
let g:ackprg = 'ag --vimgrep'
endif

nnoremap [MyPrefix]ag       :Ack <C-r><C-w><CR>

"-------------------------------------------------
" ctrlpvim/ctrlp.vim
"-------------------------------------------------
"let g:ctrlp_map = '<Nop>'
"let g:ctrlp_show_hidden = 1
"let g:ctrlp_working_path_mode = 'a'
"nnoremap [MyPrefix]pb		:<C-u>CtrlPBuffer<CR>
""nnoremap [MyPrefix]f		:<C-u>CtrlP<CR>
"nnoremap [MyPrefix]pf		:<C-u>CtrlPCurWD<CR>
"nnoremap [MyPrefix]pF		:<C-u>CtrlPCurFile<CR>
"nnoremap [MyPrefix]pd		:<C-u>CtrlPDir<CR>
""nnoremap [MyPrefix]D		:<C-u>CtrlPCurWD<CR>
"nnoremap [MyPrefix]pm		:<C-u>CtrlPMRUFiles<CR>
""nnoremap [MyPrefix]vd		:<C-u>CtrlPBookmarkDir<CR>
""nnoremap [MyPrefix]vD		:<C-u>CtrlPBookmarkDirAdd<CR>
"nnoremap [MyPrefix]pl		:<C-u>CtrlPLine<CR>
"nnoremap [MyPrefix]pq		:<C-u>CtrlPQuickfix<CR>
"nnoremap [MyPrefix]px		:<C-u>CtrlPMixed<CR>

"-------------------------------------------------
" itchyny/lightline.vim
"-------------------------------------------------
let g:lightline = {
			\ 'colorscheme': 'solarized',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'readonly', 'filename', 'modified' ] ],
			\   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
			\ },
			\ 'component': {
			\   'filename': '%f',
			\   'lineinfo': '%3l/%L:%-2v',
			\ },
			\ 'component_function': {
			\   'fugitive': 'LightLineFugitive',
			\   'fileformat': 'LightLineFileformat',
			\   'filetype': 'LightLineFiletype',
			\   'fileencoding': 'LightLineFileencoding',
			\   'mode': 'LightLineMode',
			\ },
			\ 'component_expand': {
			\   'syntastic': 'SyntasticStatuslineFlag',
			\ },
			\ 'component_type': {
			\   'syntastic': 'error',
			\ },
			\ 'subseparator': { 'left': '|', 'right': '|' }
			\ }

function! LightLineFugitive()
	try
		if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
			let mark = ''  " edit here for cool mark
			let _ = fugitive#head()
			return strlen(_) ? mark._ : ''
		endif
	catch
	endtry
	return ''
endfunction

function! LightLineFileformat()
	return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
	return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
	let fname = expand('%:t')
	return fname == '__Tagbar__' ? 'Tagbar' :
				\ fname == '__Gundo__' ? 'Gundo' :
				\ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
				\ fname =~ 'NERD_tree' ? 'NERDTree' :
				\ &ft == 'unite' ? 'Unite' :
				\ &ft == 'vimfiler' ? 'VimFiler' :
				\ &ft == 'vimshell' ? 'VimShell' :
				\ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

"augroup AutoSyntastic
"  autocmd!
"  autocmd BufWritePost *.c,*.cpp call s:syntastic()
"augroup END
"function! s:syntastic()
"  SyntasticCheck
"  call lightline#update()
"endfunction

"-------------------------------------------------
" gtags
"-------------------------------------------------
noremap <C-g> :Gtags 
noremap <C-h> :Gtags -f %<CR>
"noremap <C-j> :GtagsCursor<CR>
noremap <C-j> :Gtags <C-r><C-w><CR>
noremap <C-k> :Gtags -r <C-r><C-w><CR>

"-------------------------------------------------
" QuickRun
"-------------------------------------------------
let g:quickrun_config = {
			\	"_" : {
			\		"outputter/buffer/split"	: "rightbelow 8sp",
			\	},
			\
			\}
"let g:quickrun_config["c/watchdogs_checker"] = {
"			\	"type" : "watchdogs_checker/gcc",
"			\	"cmdopt" : "-Wall -Wextra",
"			\}
"let g:quickrun_config["cpp/watchdogs_checker"] = {
"			\	"type" : "watchdogs_checker/g++",
"			\	"cmdopt" : "-Wall -Wextra",
"			\}
" FIXME: This settings for Java doesn't work as I expected. Sometimes it shows
" the result of check but it does not work always.
"let g:quickrun_config["java/watchdogs_checker"] = {
"			\	"type" : "watchdogs_checker/javac",
"			\   'cmdopt': join([
"			\       '-Xlint:all',
"			\       '-deprecation',
"			\   ]),
"			\	"exec" : "%c %o %s:p",
"			\}
nnoremap [MyPrefix]r	:<C-u>QuickRun<CR>

"-------------------------------------------------
" watchdogs
"-------------------------------------------------

nnoremap [MyPrefix]w :WatchdogsRun<CR>:cc<CR>

"let g:watchdogs_check_BufWritePost_enables = {
"			\	"c"       : 1,
"			\	"cpp"     : 1
"			\}

"-------------------------------------------------
" vim-hier
"-------------------------------------------------
let g:hier_enabled              = 1

let g:hier_highlight_group_qf   = 'SpellBad' 
let g:hier_highlight_group_qfw  = 'SpellLocal' 
let g:hier_highlight_group_qfi  = 'SpellRare' 

let g:hier_highlight_group_loc  = 'SpellBad' 
let g:hier_highlight_group_locw = 'SpellLocal' 
let g:hier_highlight_group_loci = 'SpellRare' 

"-------------------------------------------------
" astyle
"-------------------------------------------------
"autocmd BufWritePost *.c	:%!astyle
"autocmd BufWritePost *.cpp	:%!astyle

"-------------------------------------------------
" General
"-------------------------------------------------
set nocompatible

set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,ucs-bom,default,latin1
set fileformat=unix

set cursorline
set number
set ruler
"set list
"set listchars=tab:>-,eol:^
set wrap

set title
set showmode
set wildmenu
set cmdheight=2
set laststatus=2
set history=200

syntax on
set t_Co=256
"" colorscheme dark
"colorscheme hybrid

"" colorscheme light
"colorscheme primary
colorscheme lightning
"highlight Normal ctermbg=none

set tabstop=4
set shiftwidth=4
set noexpandtab
set backspace=indent,eol,start

"set autoindent
set smartindent
"set cindent

set foldmethod=indent
highlight! link Folded Conceal
" to see highlight settings
"   :highlight
set foldlevel=99
"set foldcolumn=5
" zR: open all, zo: open, zO: open recursively
" zM: close all, zc: close, zC: close recursively

"set clipboard+=unnamed,autoselect	" want to copy string from vim to clipboard in terminal like teraterm
"set clipboard^=unnamedplus,autoselect "unnamedplus works weird behavior of paste
set clipboard^=autoselect

set pastetoggle=<F12>
autocmd InsertLeave * set nopaste

autocmd BufNewFile,BufRead *.md :set filetype=markdown

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
let mapleader = "\\"
noremap [MyPrefix] <Nop>
map <Space> [MyPrefix]
noremap  
noremap!  

nnoremap [MyPrefix]mm		:copen<CR>:make<CR><CR>
nnoremap [MyPrefix]mr		:copen<CR>:make run<CR><CR>
nnoremap [MyPrefix]mt		:copen<CR>:make test<CR><CR>
nnoremap [MyPrefix]mT		:copen<CR>:make test<CR><CR>:cla<CR>
nnoremap [MyPrefix]ml		:copen<CR>:make lcov<CR><CR>
nnoremap [MyPrefix]mc		:copen<CR>:make clean<CR><CR>

nnoremap [MyPrefix]dt       :<C-u>windo diffthis<CR>
nnoremap [MyPrefix]do       :<C-u>windo diffoff<CR>

nnoremap [MyPrefix]co       :<C-u>copen<CR>
nnoremap [MyPrefix]cc       :<C-u>cclose<CR>
nnoremap [MyPrefix]cn       :<C-u>cnext<CR>
nnoremap [MyPrefix]cp       :<C-u>cprev<CR>

nnoremap [MyPrefix]lo       :<C-u>lopen<CR>
nnoremap [MyPrefix]lc       :<C-u>lclose<CR>
nnoremap [MyPrefix]ln       :<C-u>lnext<CR>
nnoremap [MyPrefix]lp       :<C-u>prev<CR>

nnoremap [MyPrefix]vm       :<C-u>e ~/.vimrc<CR>

"-------------------------------------------------
" ctags
"-------------------------------------------------
set tags+=./tags;

"-------------------------------------------------
" Go
"-------------------------------------------------
set rtp+=$GOROOT/misc/vim
autocmd BufWritePre *.go Fmt

" go get github.com/nsf/gocode/
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")

