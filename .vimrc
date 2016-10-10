syntax enable
set backspace=indent,eol,start                                     "Make backspace behave like any other editor
let mapleader = ','                                                "The default leader is \, but a comma is much better.
set number                                                         "Activates line numbers"
set noswapfile



"--------------Visuals---------------"
colorscheme desert
set t_CO=256                                                       "Use 256 colors.  This is useful in terminal vim.
set linespace=10                                                   "macvim-specify line-height"

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R





"--------------Search----------------"
set hlsearch
set incsearch




"--------------Split management----------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-------------Mappings kind of like alias'------------------"
"Make it easy to edit the Vimrc file."
nmap <Leader>ev :tabedit ~/dotfiles/.vimrc<cr>

"Add simple highlight removal"
nmap <Leader><space> :nohlsearch<cr>





"--------------Auto-commands----------------"

"Automatically source the Vimrc file on save"



augroup autosourcing
	autocmd!
 	autocmd BufWritePost ~/dotfiles/.vimrc source %
augroup END
