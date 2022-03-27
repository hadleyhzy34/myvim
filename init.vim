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
set backspace=2
" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
" Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
" Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'morhetz/gruvbox' "Colorscheme
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags' "Rtags
Plug 'scrooloose/nerdtree' "NerdTree
Plug 'mbbill/undotree'
Plug 'dense-analysis/ale'

" Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
" Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
set encoding=UTF-8
call plug#end()

" tags manager
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>

let mapleader = " "
nnoremap <leader>u :UndotreeShow<CR>

" NerdTree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"


nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

" colorscheme
colorscheme gruvbox
" :set colorscheme jellybeans
:set background=dark

" coc autocomplete
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
