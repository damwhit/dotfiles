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
Plug 'w0rp/ale'
Plug 'christoomey/vim-tmux-navigator'
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
