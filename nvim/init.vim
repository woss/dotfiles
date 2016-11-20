" vim:set ft=vim sw=2 ts=2:
if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif

function! <SID>AutoProjectRootCD()
  try
    if &ft != 'help'
      ProjectRootCD
    endif
  catch
    " Silently ignore invalid buffers
  endtry
endfunction

autocmd BufEnter * call <SID>AutoProjectRootCD()

let g:AutoPairsUseInsertedCount = 1
let g:chromatica#responsive_mode=1

" Neovim Settings
" leader is ,
let mapleader = ','
"Map ; to :
nnoremap ; :

if exists("neovim_dot_app")
  set guifont=DejaVu_Sans_Mono:h12
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

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
"autocmd vimenter * NERDTree

" Increment Search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" FZFMru binding
nnoremap <leader>r :<C-u>FZFMru<cr>
let g:fzf_mru_file_list_size = 25
let g:fzf_mru_ignore_patterns = 'fugitive\|\.git/\|\.hg/\|\_^/tmp/'

" FZF
nnoremap <leader>f :<C-u>Files<cr>
nnoremap <leader>t :<C-u>Tags<cr>
nnoremap <leader>b :<C-u>Buffers<cr>
"function! s:fzf_statusline()
  "" Override statusline as you like
  "highlight fzf1 ctermfg=161 ctermbg=251
  "highlight fzf2 ctermfg=23 ctermbg=251
  "highlight fzf3 ctermfg=237 ctermbg=251
  "setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
"endfunction
"autocmd! User FzfStatusLine call <SID>fzf_statusline()

" This is the default extra key bindings
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~35%' }
"let g:fzf_layout = { 'window': 'enew' }
"let g:fzf_layout = { 'window': '-tabnew' }

let g:fzf_files_options =
      \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'" --preview-window right:45%'

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.config/nvim/.fzf-history'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'


" Esearch plugin setting
let g:esearch = {
  \ 'adapter':    'ag',
  \ 'backend':    'nvim',
  \ 'out':        'win',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}

let g:table_mode_corner="|"

let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_jsx_enabled_makers = ['eslint']
" Allow JSX in normal JS files:
" let g:jsx_ext_required = 0
let g:neomake_javascript_eslint_maker = {
            \ 'args': ['--no-color', '--format'],
            \ 'errorformat': '%f: line %l\, col %c\, %m'
            \ }
autocmd BufWritePost * Neomake

" No need for ex mode
nnoremap Q <nop>
" recording macros is not my thing
map q <Nop>

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
