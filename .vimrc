" Specify a plugin directory
call plug#begin('~/dotfiles/.vim/autoload')

" Dracula color theme
Plug 'dracula/vim'

" Darcula colorscheme
Plug 'doums/darcula'

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
set splitbelow

set noswapfile
set nobackup

set number
set colorcolumn=80
highlight ColorColumn ctermbg=white

