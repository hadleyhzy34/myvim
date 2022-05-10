# vim

## content

* vim installation
* vim configuration
* vim basics
* vim plugins

## neovim installation

### Build prerequisites

```linux
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
```
### Quick start

```
git clone https://github.com/neovim/neovim
git checkout stable
cd neovim && make
sudo make install
```

## neovim configure

### pre-setup

```linux
mkdir -p ~/.config/nvim/plugged
mkdir -p ~/.config/nvim/autoload
cd ~/.config/nvim/
touch init.vim
```

### vim-plug setup

```linux
cd ~/.config/nvim/plugged
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cp ~/.local/share/nvim/site/autoload/plug.vim .
```

### config ~/.vim/nvim/init.vim

```
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


let mapleader = " "
nnoremap <leader>u :UndotreeShow<CR>

" NerdTree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

" colorscheme
colorscheme gruvbox
" :set colorscheme jellybeans
:set background=dark

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

" coc autocomplete
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

" tabnew
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
```

## installation

### Plug Install

```
:PlugInstall
```

### python3 support

go to `conda` env and install neovim

```
conda activate <env_name> && pip install neovim
```

### coc.nvim

#### prerequisites

##### nodejs installation

```
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs
```

##### `npm` and `yarn` installation

```
sudo apt-get install npm
sudo npm install -g yarn
```

#### build && make

```
cd ~/.config/nvim/plugged/coc.nvim/
yarn install
yarn build
```
#### `coc-pyright` installation

```
:CocInstall coc-pyright
```

### tagbar

```
pip install --upgrade pynvim
```

## usage

### tagbar

```
:tabnew <file_name>
tj
tk
```

### 
