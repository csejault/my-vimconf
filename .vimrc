
"BEFORE USING THIS VIMRC
"Make sure undodir is existing
syntax on

set tabstop=4
set shiftwidth=4
set smartindent

set nu
set rnu


"fat cursor
set guicursor=

"keep your buffer when tour close a file
set hidden

"no jump when line is oversize
set nowrap

set nohlsearch
set incsearch

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set scrolloff=8

set colorcolumn=80

"download Vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"HERE YOU CAN PUT YOUR PLUGS

Plug 'itchyny/lightline.vim'

Plug 'sharkdp/bat'
Plug 'dandavison/delta'
Plug 'ggreer/the_silver_searcher'
Plug 'BurntSushi/ripgrep'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'

call plug#end()

"For light line plug. 
set laststatus=2































