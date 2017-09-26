if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif

"https://github.com/sodiumjoe/dotfiles/blob/master/vimrc#L212

if !exists("g:vimrc_loaded")
    "colorscheme molokai
    "let g:molokai_original = 1
    if has("gui_running")
        set guioptions-=T "?????
        set guioptions-=L
        set guioptions-=r
        set guioptions-=m
        set gfn=Source\ Code\ Pro\ for\ Powerline\ Semi-Bold\ 10
        set gfw=STHeiti\ 9
        set langmenu=en_US
        set linespace=0
    endif " has
endif " exists(...)


set so=10
set number
syntax on
filetype on
filetype plugin on
filetype indent on

"set guifont=Inconsolata:h16

set list lcs=tab:\¦\

if has("autocmd")  " go back to where you exited
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif

set completeopt=longest,menu " preview

if has('mouse')
    set mouse=a
    set selectmode=mouse,key
    set nomousehide
endif

set autoindent
set modeline
set cursorline
set cursorcolumn

set shiftwidth=4
set tabstop=4
set softtabstop=4

set showmatch
set matchtime=0
set nobackup
set nowritebackup
set directory=~/.config/nvim/.swapfiles/


" Or if you have Neovim >= 0.1.5

if has('nvim')
  set termguicolors
  set ttimeout
  set ttimeoutlen=0
endif


set smartcase
set ignorecase
set nohlsearch
set incsearch
set autochdir


vmap j gj
vmap k gk
nmap j gj
nmap k gk

nmap T :tabnew<cr>

au BufNewFile *.py call ScriptHeader()
au BufNewFile *.sh call ScriptHeader()
au FileType vue syntax sync minlines=500

function! ScriptHeader()
    if &filetype == 'python'
        let header = "#!/usr/bin/env python"
        let cfg = "# vim: ts=4 sw=4 sts=4 expandtab"
    elseif &filetype == 'sh'
        let header = "#!/bin/bash"
    endif
    let line = getline(1)
    if line == header
        return
    endif
    normal m'
    call append(0,header)
    if &filetype == 'python'
        call append(2, cfg)
    endif
    normal ''
endfunction

source ~/.config/nvim/config/airline.vim
source ~/.config/nvim/config/python.vim
source ~/.config/nvim/config/localvimrc.vim
