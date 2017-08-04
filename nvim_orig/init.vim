" vim:set ft=vim sw=2 ts=2:
if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif
" leader is ,
let mapleader = ','

"Map ; to :
nnoremap ; :

if exists("neovim_dot_app")
   set guifont=DejaVu_Sans_Mono:h20
   ",Inconsolata\ XL\ 12,Inconsolata\ 15,Monaco\ 12

  "set transparency=10
else
  " Line below allows to do CMD+C (copy) from mouse selection while in terminal
  set mouse=r
endif

" Let airline tell me my status
set noshowmode
set noswapfile
filetype on
filetype plugin indent on
 set relativenumber number
" set tabstop=2 shiftwidth=2 expandtab
set conceallevel=0
" block select not limited by shortest line
set virtualedit=
set wildmenu
set laststatus=2
set colorcolumn=79
set wrap linebreak nolist
set wildmode=full
set undofile
set undodir="~/.config/nvim/.VIM_UNDO_FILES"
syntax on
set number
set shell=/bin/zsh


" Esearch plugin setting
" No need for ex mode
nnoremap Q <nop>
"nnoremap :W :w
"nnoremap :Q :q

"Shift + Direction to Change Tabs
noremap <S-l> gt
noremap <S-h> gT

"Control + Direction to Change Panes
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
" close files
noremap <leader>q :q<cr>

"Enable Deoplete
call deoplete#enable()

" recording macros is not my thing
"map q <Nop>

let g:airline_theme='one'
nnoremap <leader>n :<C-u>edit .<cr>

" FZF
nnoremap <leader>f :<C-u>Files<cr>
nnoremap <leader>t :<C-u>Tags<cr>
nnoremap <leader>b :<C-u>Buffers<cr>
let g:fzf_layout = { 'down': '~35%' }
let g:fzf_files_options =
      \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'" --preview-window right:45%'


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

"http://vim.wikia.com/wiki/Configuring_the_cursor
if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif


"://github.com/tcnksm/docker-alias/blob/master/zshrclias dcps='docker-compose ps'
