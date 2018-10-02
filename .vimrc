call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'wakatime/vim-wakatime'
Plug 'terryma/vim-multiple-cursors'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'mileszs/ack.vim'
Plug 'mattn/webapi-vim'
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
set noeb vb t_vb=
set backspace=indent,eol,start

" colorschemes
colorscheme jellybeans

" nerdtree
map <C-\> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
map <C-f> :Ack!<Space> 

" backup directories
set backup
set backupdir=/private/tmp
set dir=/private/tmp

" custom emmet snippets
let g:user_emmet_leader_key = '<c-w>'
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/dotfiles/.vim/snippets.json')), "\n"))

" fonts
set guifont=Inconsolata\ for\ Powerline:h15
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

