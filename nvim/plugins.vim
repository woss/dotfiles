call plug#begin('~/.config/nvim/plugged')

" Essentials
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'scrooloose/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'neomake/neomake'

" File search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'lvht/fzf-mru'
Plug 'nvie/vim-flake8'


" improve / and ?
"Plug 'haya14busa/incsearch.vim'

"Tags
" Plug 'craigemery/vim-autotag'

"An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2
"Plug 'dyng/ctrlsf.vim'

" Syntax highlighting
"Plug 'sheerun/vim-polyglot'

" Code formatter
"Plug 'Chiel92/vim-autoformat'

" JSON
"Plug 'elzr/vim-json'
" Search
"Plug 'eugen0329/vim-esearch'

" Support for editorconfig
Plug 'editorconfig/editorconfig-vim'

" Status bar
Plug 'vim-airline/vim-airline'

" Must have
"Plug 'airblade/vim-rooter'
"Plug 'dbakker/vim-projectroot'
"Plug 'kassio/neoterm'
"Plug 'Shougo/deol.nvim'

"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-surround'
"Plug 'vim-scripts/auto-pairs-gentle'
"Plug 'janko-m/vim-test'

"Plug 'dylanaraps/taskrunner.nvim'
"Group dependencies, vim-snippets depends on ultisnips
"Plug 'cjrh/vim-conda'

"JavaScript
"Plug 'Shutnik/jshint2.vim'
"Plug 'carlitux/deoplete-ternjs'
"Plug 'mhartington/deoplete-typescript'
"Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
"Plug 'mustache/vim-mustache-handlebars'
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
"Plug 'vimlab/neojs'

" Angular
" Plug 'burnettk/vim-angular'

" Golang
"Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for' :'go' }
"Plug 't-yuki/vim-go-coverlay', {'for': 'go'}
"Plug 'zchee/deoplete-go', {'build': 'make', 'for': 'go'}
"Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }


" Yaml
"Plug 'saltstack/salt-vim', { 'for' : ['yaml', 'sls']}

"Python
"Plug 'zchee/deoplete-jedi', {'for': 'python'}

" Theme
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'juanedi/predawn.vim'
Plug 'rakr/vim-one'
Plug 'dracula/vim'
call plug#end()

