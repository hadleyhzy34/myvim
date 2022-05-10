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
" reference: https://www.cnblogs.com/cniwoq/p/13272746.html
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
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'crusoexia/vim-monokai'
Plug 'akinsho/toggleterm.nvim'
Plug 'vimlab/split-term.vim'
Plug 'preservim/nerdcommenter' "comment functions
" Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
" Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
set encoding=UTF-8
call plug#end()


" let mapleader = " "
" nnoremap <leader>u :UndotreeShow<CR>

" NerdTree
" auto shutdown if nerdtree is only left window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

" tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width=30

:set completeopt-=preview " For No Previews

" indent line
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进


" colorscheme
"colorscheme gruvbox
" :set colorscheme jellybeans
":set background=dark
syntax on
colorscheme monokai
set termguicolors
" set t_Co=256  " vim-monokai now only support 256 colours in terminal.
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

" coc autocomplete
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

" tabnew
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabprev<CR>
nnoremap tk  :tabnext<CR>
nnoremap tl  :tablast<CR>

" new terminal
" nnoremap <C-i> :split|resize 20|term<CR>
" command! -nargs=* T split | resize 20 | term <args>
" command! -nargs=* VT vsplit | terminal <args>
" reference: https://github.com/vimlab/split-term.vim
set splitright
set splitbelow
nnoremap <C-n> :40Term<CR>

" commenter
" https://stackoverflow.com/questions/9051837/how-to-map-c-to-toggle-comments-in-vim
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
