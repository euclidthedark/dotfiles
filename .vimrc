" Specify a plugin directory
call plug#begin('~/dotfiles/.vim/plugged')

" Youcomplete me for auto complete
Plug 'valloric/youcompleteme'

" Nerdtree a file navigation system for vim
Plug 'preservim/nerdtree'
autocmd vimenter * NERDTree
call plug#end()

syntax on
colorscheme darcula

set encoding=utf-8
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent

set noswapfile
set nobackup

set number
set colorcolumn=120
highlight ColorColumn ctermbg=darkgray

