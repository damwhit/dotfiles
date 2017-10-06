call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'leshill/vim-json'
Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tomtom/tcomment_vim'
Plug 'wakatime/vim-wakatime'
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
set hlsearch
colorscheme desert
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
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
set backup
set backupdir=/private/tmp
set dir=/private/tmp
