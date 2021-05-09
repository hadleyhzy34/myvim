syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'Valloric/YouCompleteMe', {'commit': 'd98f896'}
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
Plug 'dense-analysis/ale'
call plug#end()



nmap <C-n> :NERDTreeToggle<CR>
colorscheme gruvbox

set background=dark


let mapleader = " "
nnoremap <leader>u :UndotreeShow<CR>
