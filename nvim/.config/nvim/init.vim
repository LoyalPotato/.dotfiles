
" Ignore Files in these folders
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
set encoding=UTF-8

call plug#begin("~/.vim/plugged")

" nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" nvim-telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'


" git related
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

" lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" nvim-tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" undotree

Plug 'mbbill/undotree'

" Theme
Plug 'gruvbox-community/gruvbox'


call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "

:lua require("loyalpotato")
