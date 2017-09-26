call plug#begin('~/.config/nvim/plugged')

"general stuff
Plug 'scrooloose/nerdtree'

"general asynchronous keyword completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'rking/ag.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'saltstack/salt-vim'
Plug 'chr4/nginx.vim'


"look'n'feel

" themes
Plug 'bigeagle/molokai'
Plug 'mhartington/oceanic-next'
Plug 'zanglg/nova.vim'
" themes
"
Plug 'bling/vim-airline'
Plug 'hdima/python-syntax'
" A semantic javascript syntax highlighter (uses babylon) for Neovim
Plug 'neovim/node-host', { 'do': 'npm install' }
Plug 'billyvg/tigris.nvim', { 'do': './install.sh' }

" testing
"https://github.com/sbdchd/neoformat
Plug 'sbdchd/neoformat'

call plug#end()

