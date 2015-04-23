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
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'tpope/vim-repeat'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 't9md/vim-quickhl'
NeoBundle 'itchyny/lightline.vim'
"Bundle 'gtags.vim' " install manually gtags.vim version 0.6.4 or later from GNU GLOBAL share directory
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'rking/ag.vim'
NeoBundle 'vcscommand.vim'
NeoBundle 'fuenor/qfixhowm.git'

" colorscheme
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'

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
let g:ctrlp_working_path_mode = 'a'
nnoremap [MyPrefix]b		:<C-u>CtrlPBuffer<CR>
"nnoremap [MyPrefix]f		:<C-u>CtrlP<CR>
nnoremap [MyPrefix]f		:<C-u>CtrlPCurWD<CR>
nnoremap [MyPrefix]F		:<C-u>CtrlPCurFile<CR>
nnoremap [MyPrefix]d		:<C-u>CtrlPDir<CR>
"nnoremap [MyPrefix]D		:<C-u>CtrlPCurWD<CR>
nnoremap [MyPrefix]mf		:<C-u>CtrlPMRUFiles<CR>
nnoremap [MyPrefix]vd		:<C-u>CtrlPBookmarkDir<CR>
nnoremap [MyPrefix]vD		:<C-u>CtrlPBookmarkDirAdd<CR>
nnoremap [MyPrefix]l		:<C-u>CtrlPLine<CR>
nnoremap [MyPrefix]q		:<C-u>CtrlPQuickfix<CR>

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
let g:quickrun_config = {
\	"_" : {
\		"outputter/buffer/split"	: "rightbelow 8sp",
\	},
\}
nnoremap <Leader>r		:<C-u>QuickRun<CR>

"-------------------------------------------------
" qfixhowm
"-------------------------------------------------
let QFixHowm_Key         = 'g'
let howm_dir             = '~/git/howm/'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.md'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'
let QFixHowm_FileType    = 'markdown'

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
set list
set listchars=tab:^~,eol:^
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
highlight Normal ctermbg=none

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

"set clipboard+=unnamed,autoselect	" want to copy string from vim to clipboard in terminal like teraterm

set pastetoggle=<F12>
au InsertLeave * set nopaste

au BufNewFile,BufRead *.md :set filetype=markdown

if has('mouse')
	set mouse=a
endif

function! s:Paste64Copy()
  "let l:tmp = @@
  "echo l:tmp
  echo "copy now\n\n"
endfunction

command! Paste64Copy :call s:Paste64Copy()

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

"-------------------------------------------------
" vcscommand
"-------------------------------------------------
" quoted from http://yskwkzhr.blogspot.jp/2013/06/vcscommandvim.html
augroup VCSCommand
  autocmd!
  autocmd User VCSBufferCreated call s:vcscommand_buffer_settings()
augroup END
 
function! s:vcscommand_buffer_settings() "{{{3
  if !exists('b:VCSCommandCommand') | return | endif
  if b:VCSCommandCommand !=# 'commitlog' | setlocal readonly     | endif
  if b:VCSCommandCommand !=# 'vimdiff'   | setlocal nofoldenable | endif
  if &filetype ==# 'gitlog'              | setlocal syntax=git   | endif
  nmap <unique> <buffer> <silent> q :bwipeout<CR>
  if &filetype =~# '^\(svnlog\|gitlog\|hglog\)$'
    nnoremap <silent> <buffer> <CR> :<C-u>call <SID>vcscommand_filetype('log', 'VCSDiff')<CR>gg
    nnoremap <silent> <buffer> v    :<C-u>call <SID>vcscommand_filetype('log', 'VCSVimDiff')<CR>gg
    nnoremap <silent> <buffer> r    :<C-u>call <SID>vcscommand_filetype('log', 'VCSReview')<CR>gg
    nnoremap <silent> <buffer> i    :<C-u>call <SID>vcscommand_filetype('log', 'VCSInfo')<CR>gg
  elseif b:VCSCommandCommand =~# '.*annotate'
    nnoremap <silent> <buffer> <CR> :<C-u>call <SID>vcscommand_filetype('annotate', 'VCSDiff')<CR>gg
    nnoremap <silent> <buffer> v    :<C-u>call <SID>vcscommand_filetype('annotate', 'VCSVimDiff')<CR>gg
    nnoremap <silent> <buffer> r    :<C-u>call <SID>vcscommand_filetype('annotate', 'VCSReview')<CR>gg
    nnoremap <silent> <buffer> l    :<C-u>call <SID>vcscommand_filetype('annotate', 'VCSLog')<CR>gg
    nnoremap <silent> <buffer> i    :<C-u>call <SID>vcscommand_filetype('annotate', 'VCSInfo')<CR>gg
  endif
endfunction "}}}
 
function! s:vcscommand_exec(command, option) "{{{3
  if a:command =~# '^\(VCSDiff\|VCSLog\)$'
    let g:VCSCommandSplit = winnr('$') == 1 ? 'vertical' : 'horizontal'
  endif
  execute a:command a:option
  unlet! g:VCSCommandSplit
endfunction "}}}
 
function! s:vcscommand_log(...) "{{{3
  let option = join(a:000)
  if exists('b:VCSCommandVCSType')
    if exists('b:VCSCommandCommand')
      if b:VCSCommandCommand ==# 'log'
        echo "Sorry, you cannot open vcslog on vcslog buffer"
        unlet option
      elseif b:VCSCommandCommand =~# 'diff\|review'
        if !exists('b:VCSCommandStatusText')
          echo "Sorry, you are on a working buffer"
          unlet option
        else
          " Shows only the target revision/commit
          if b:VCSCommandVCSType ==# 'SVN'
            let matched = matchlist(b:VCSCommandStatusText, '(\d\+ : \(\d\+\))')
            if len(matched) | let option = matched[1] | endif
          elseif b:VCSCommandVCSType ==# 'git'
            let matched = matchlist(b:VCSCommandStatusText, '\S\+ \(\w\+\)')
            if len(matched) | let option = '-n 1 ' . matched[1] | endif
          elseif b:VCSCommandVCSType ==# 'HG'
            let matched = matchlist(b:VCSCommandStatusText, '(\(\d\+\) : \w\+)')
            if len(matched) | let option = matched[1] | endif
          endif
        endif
      endif
    elseif v:count
      if b:VCSCommandVCSType ==# 'SVN'
        let limit_option = '-l'
      elseif b:VCSCommandVCSType ==# 'git'
        let limit_option = '-n'
      elseif b:VCSCommandVCSType ==# 'HG'
        let limit_option = '-l'
      endif
      let option = limit_option . ' ' . v:count
    endif
  endif
  if exists('option')
    call s:vcscommand_exec('VCSLog', option)
  endif
endfunction "}}}
 
function! s:vcscommand_filetype(filetype, command) " {{{3
  let given_count1 = v:count1
  let revision = s:vcscommand_get_revision_on_cursor_line(a:filetype)
  if strlen(revision)
    let option = s:vcscommand_make_vcs_option(a:command, revision, given_count1)
    call s:vcscommand_exec(a:command, option)
  endif
endfunction "}}}
 
function! s:vcscommand_get_revision_on_cursor_line(filetype) " {{{3
  let save_cursor = getpos('.')
  let save_yank_register = getreg('"')
  if a:filetype ==# 'log'
    if &filetype ==# 'svnlog'
      normal! j
      ?^r\d\+\ |
      normal! 0lye
    elseif &filetype ==# 'gitlog'
      normal! j
      ?^commit\ \w\+$
      normal! 0wy7l
    elseif b:VCSCommandVCSType ==# 'HG'
      normal! j
      ?^changeset:\ \+\d\+:\w\+$
      normal! Wyw
    endif
  elseif a:filetype ==# 'annotate'
    if b:VCSCommandVCSType ==# 'SVN'
      normal! 0wye
    elseif b:VCSCommandVCSType ==# 'git'
      normal! 0t yb
    elseif b:VCSCommandVCSType ==# 'HG'
      normal! 0f:yb
    endif
  endif
  let revision = @"
  call setpos('.', save_cursor)
  call setreg('"', save_yank_register)
  return revision
endfunction "}}}
 
function! s:vcscommand_make_vcs_option(command, revision, given_count1) " {{{3
  let option = a:revision
  if b:VCSCommandVCSType ==# 'SVN'
    if a:command ==# 'VCSLog'
      let older = a:given_count1 == 1 ? '' : a:given_count1 . ':'
      let option = '-r ' . older . a:revision
    elseif a:command ==# 'VCSInfo'
      let option = '-r ' . a:revision
    elseif a:command =~# 'VCSDiff\|VCSVimDiff'
      let older = a:given_count1 == 1 ? str2nr(a:revision) - 1 : a:given_count1
      let option = older . ' ' . a:revision
    endif
  elseif b:VCSCommandVCSType ==# 'git'
    if a:command ==# 'VCSLog'
      let option = '-n ' . a:given_count1 . ' ' . a:revision
    elseif a:command =~# 'VCSDiff\|VCSVimDiff'
      let older = a:revision . '~' . a:given_count1
      let option = older . ' ' . a:revision
    endif
  elseif b:VCSCommandVCSType ==# 'HG'
    if a:command ==# 'VCSLog'
      let option = '-l ' . a:given_count1 . ' -r ' . a:revision
    elseif a:command =~# 'VCSDiff\|VCSVimDiff'
      let older = a:given_count1 == 1 ? str2nr(a:revision) - 1 : a:given_count1
      "let option = '-r ' . older . ' -r ' . a:revision
      let option = a:revision
    endif
  endif
  return option
endfunction "}}}

