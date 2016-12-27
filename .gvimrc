"Disable the Print key for MacVim.
if has("gui_macvim")
  macmenu &File.Print key=<nop>
  set macligatures							"We want pretty symbols, when available.
  set guifont=Fira\ Code:h17						"Set the default font family and size.
  set guioptions-=e							"We don't want Gui tabs.
  set linespace=16   						        "Macvim-specific line-height.
  set guioptions-=l                                                       "Disable Gui scrollbars.
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
endif