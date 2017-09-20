call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'wakatime/vim-wakatime'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'othree/html5.vim'
Plug 'mustache/vim-mustache-handlebars'
call plug#end()

filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
set nocompatible              " be iMproved, required
set number
filetype off                  " required
syntax on
:set hlsearch

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
map <C-f> :Ack<space>
map <C-t> :FZF<CR>
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
map <C-\> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
