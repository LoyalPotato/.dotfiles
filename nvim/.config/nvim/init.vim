
" Ignore Files in these folders
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

call plug#begin("~/.vim/plugged")

" nvim-telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'

" git related
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

Plug 'gruvbox-community/gruvbox'


call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "

