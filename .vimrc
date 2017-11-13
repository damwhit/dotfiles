call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'leshill/vim-json'
Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'wakatime/vim-wakatime'
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.6' }
Plug 'terryma/vim-multiple-cursors'
call plug#end()

filetype plugin indent on
filetype off
set tabstop=2
set shiftwidth=2
set expandtab
set nocompatible
set number
syntax on
set hlsearch
colorscheme jellybeans
set noeb vb t_vb=
set backspace=indent,eol,start
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
map <C-f> :Ack<space>
map <C-t> :FZF<CR>
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
map <C-\> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
set backup
set backupdir=/private/tmp
set dir=/private/tmp
set guifont=Inconsolata\ for\ Powerline:h16
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif
