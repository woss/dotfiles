call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'eugen0329/vim-esearch'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/unite.vim'
Plug 'vim-airline/vim-airline'
Plug 'junkblocker/unite-codesearch'
Plug 'Shougo/neomru.vim'

Plug 'dbakker/vim-projectroot'
" Theme
" Plug 'tyrannicaltoucan/vim-deep-space'
" Plug 'juanedi/predawn.vim'
Plug 'rakr/vim-one'
" Plug 'dracula/vim'

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for' :'go' }

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', {'build': 'make', 'for': 'go'}
Plug 't-yuki/vim-go-coverlay', {'for': 'go'}
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.config/nvim/plugged/gocode/vim/symlink.sh' }

Plug 'zchee/deoplete-jedi', {'for': 'python'}

Plug 'Shutnik/jshint2.vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'mhartington/deoplete-typescript'
Plug 'mustache/vim-mustache-handlebars'

call plug#end()

" Neovim Settings
" set guifont=DejaVu_Sans_Mono:h12

if has('gui_nvim')
  set transparency=10
endif
" set termguicolors
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" let $NVIM_PYTHON_LOG_FILE="nvimpy.log"
" let $NVIM_PYTHON_LOG_LEVEL='DEBUG'
" set clipboard+=unnamedplus
" Currently needed for neovim paste issue
" set pastetoggle=<f6>
" set nopaste
" Let airline tell me my status
" set noshowmode
set noswapfile
filetype on
" set relativenumber number
" set tabstop=2 shiftwidth=2 expandtab
set conceallevel=0
" block select not limited by shortest line
set virtualedit=
set wildmenu
set laststatus=2
"set colorcolumn=100
set wrap linebreak nolist
set wildmode=full
" leader is ,
let mapleader = ','
set undofile
set undodir="$HOME/.VIM_UNDO_FILES"

set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.git/**
set wildignore+=*.hg/**
set wildignore+=*node_modules/**
set wildignore+=*bower_components/**

let g:netrw_keepdir= 0

let g:esearch = {
  \ 'adapter':    'fzf',
  \ 'backend':    'nvim',
  \ 'out':        'win',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}

" Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
"nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

nnoremap <leader>f :<C-u>FZF<cr>


" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction



" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.fzf-history'




let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_debug = 1
" let g:deoplete#enable_ignore_case = 1
" let g:deoplete#auto_complete_start_length = 0
" let g:auto_complete_start_length = 0
" let g:deoplete#enable_refresh_always = 1
" let g:deoplete#max_list = 1000
" let g:deoplete#enable_profile = 1


let g:go_fmt_command = "goimports"
let g:table_mode_corner="|"

" No need for ex mode
nnoremap Q <nop>
" recording macros is not my thing
map q <Nop>

" color dracula
let g:airline_theme='one'

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark " for the dark version / light
colorscheme one
syntax on