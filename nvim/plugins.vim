call plug#begin('~/.config/nvim/plugged')

" File search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'lvht/fzf-mru'

Plug 'craigemery/vim-autotag'

" Buf, MRU, File ssearch
"Plug 'kien/ctrlp.vim'

Plug 'haya14busa/incsearch.vim'

"An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2
Plug 'dyng/ctrlsf.vim'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

"Plug 'coderifous/textobj-word-column.vim'

Plug 'AndrewRadev/splitjoin.vim'

" Code formatter
Plug 'Chiel92/vim-autoformat'

" Search
Plug 'eugen0329/vim-esearch'

" Support for editorconfig
Plug 'editorconfig/editorconfig-vim'

" Status bar
Plug 'vim-airline/vim-airline'

" Ack search
Plug 'mileszs/ack.vim'

Plug 'dbakker/vim-projectroot'
"Plug 'kassio/neoterm'
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'janko-m/vim-test'
Plug 'zchee/deoplete-go', {'build': 'make', 'for': 'go'}
Plug 'scrooloose/nerdcommenter'
Plug 'neomake/neomake'
"Plug 'dylanaraps/taskrunner.nvim'
" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'


" JavaScript
Plug 'Shutnik/jshint2.vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'mhartington/deoplete-typescript'
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'


" GO LANG PART
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for' :'go' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 't-yuki/vim-go-coverlay', {'for': 'go'}
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.config/nvim/plugged/gocode/vim/symlink.sh' }


" Yaml
Plug 'saltstack/salt-vim', { 'for' : ['yaml', 'sls']}

"Python
Plug 'zchee/deoplete-jedi', {'for': 'python'}

" Theme
" Plug 'tyrannicaltoucan/vim-deep-space'
" Plug 'juanedi/predawn.vim'
Plug 'rakr/vim-one'
" Plug 'dracula/vim'
call plug#end()

