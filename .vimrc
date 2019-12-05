call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'tomtom/tcomment_vim'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'mattn/webapi-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'BarretRen/vim-colorscheme'
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
:let g:netrw_dirhistmax = 0 " don't want to generate netrwhist file

" vim-jsx
let g:jsx_ext_required = 0

" colorschemes
set termguicolors " for solarized only
set background=dark    " Light theme is used by default
set t_Co=256
colorscheme PaperColor " great - used during 1808 and 1810

" nerdtree
map <C-\> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let g:NERDTreeHijackNetrw=0 " this makes it so that nerd tree does not open automatically

" ctrlp
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/](coverage|node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_use_caching = 0

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
let g:user_emmet_leader_key = '<c-s>'
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/dotfiles/.vim/snippets.json')), "\n"))

" fonts
" set guifont=Fira\ Code:h14
set guifont=Monaco:h20
set guifont=Monospace:h20
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
" if has("gui_running")
"   let s:uname = system("uname")
"   if s:uname == "Darwin\n"
"     set macligatures
"     set guifont=Fira\ Code:h14
"   endif
" endif
