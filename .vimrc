set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start                                          "Make backspace behave like every other editor.
let mapleader = ',' 						    	                    "The default is \, but a comma is much better.
set number								                                "Let's activate line numbers.
set noswapfile
let NERDTreeShowHidden=1



"-------------Visuals--------------"
colorscheme desert

set t_CO=256								                            "Use 256 colors. This is useful for Terminal Vim.
set linespace=10   						                                "Macvim-specific line-height.
set tabstop=2                                                           " The width of a TAB is set to 4.
                                                                        " Still it is a \t. It is just that
                                                                        " Vim will interpret it to be having
                                                                        " a width of 4.

set shiftwidth=2                                                        " Indents will have a width of 4

set softtabstop=2                                                       " Sets the number of columns for a TAB

set expandtab                                                           " Expand TABs to spaces
set guioptions-=l                                                       "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R




"-------------Search--------------"
set hlsearch								"Highlight all matched terms.
set incsearch								"Incrementally highlight, as we type.




"-------------Split Management--------------"
set splitbelow 								"Make splits default to below...
set splitright								"And to the right. This feels more natural.

"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>



"----make nerdtree easier to toggle-"
nmap <D-1> :NERDTreeToggle<cr>
"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>
nmap <C-T> :CtrlP<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"-------------Plugins--------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
