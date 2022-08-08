" for vim itselft
set number
set nobackup
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set fileencodings=utf-8,gbk,big5

" for pathogen(vim plugin manager)
call pathogen#infect()
syntax on
filetype plugin indent on

" for nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufWinEnter * silent NERDTreeMirror
hi comment ctermfg=6
hi Directory    ctermfg=darkcyan

