" Specify a plugin directory
call plug#begin('~/dotfiles/.vim/plugged')

" Youcomplete me for auto complete
Plug 'valloric/youcompleteme'

" Darcula color theme
Plug 'blueshirts/darcula'

" Nerdtree a file navigation system for vim
Plug 'preservim/nerdtree'
autocmd vimenter * NERDTree
call plug#end()

syntax on
colorscheme darcula

set encoding=utf-8
set hidden
set noerrorbells
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set smartindent

set noswapfile
set nobackup

set number
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

