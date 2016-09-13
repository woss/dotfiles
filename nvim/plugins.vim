call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sbdchd/neoformat'
"Plug 'eugen0329/vim-esearch'
Plug 'editorconfig/editorconfig-vim'
"Plug 'Shougo/unite.vim'
Plug 'vim-airline/vim-airline'
"Plug 'junkblocker/unite-codesearch'
"Plug 'Shougo/neomru.vim'
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

