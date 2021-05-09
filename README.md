# vim

## content

* vim installation
* vim configuration
* vim basics
* vim plugins

## vim installation

```linux
sudo apt-get install vim
```

## vim configuration

1.create a new file
```linux
cd ~
touch ~/.vimrc
```

2.config `.vimrc` file

```bash
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
```

3.compile YCM

```bash
cd .vim/plugged/YouCompleteMe/
./install.py
```

## vim basics



## vim plugins
