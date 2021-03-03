"THANKS TO 
"ThePrimeagen (youtube)
"MAKC (youtube)

"BEFORE USING THIS VIMRC
"Make sure undodir is existing

"SAVE A SESSION
":mksession file.vim
"USE A SESSION 
"vim -S file.vim

"OPEN TAB
":tabedit

syntax on

"Norm
set tabstop=4
set shiftwidth=4
set smartindent
set colorcolumn=80

set number
set relativenumber

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


"download Vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"HERE YOU CAN PUT YOUR PLUGS
call plug#begin('~/.vim/plugged')

"STYLE
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'

"FUZZY_FINDING
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sharkdp/bat'
Plug 'dandavison/delta'
Plug 'ggreer/the_silver_searcher'
Plug 'BurntSushi/ripgrep'

"renambe tabs
Plug 'gcmt/taboo.vim'

"GIT UTILS
Plug 'tpope/vim-fugitive'

call plug#end()

"For light line plug. 
set laststatus=2

"gruvbox plug 
colorscheme gruvbox
set background=dark

"Save Tabs Name
set sessionoptions+=tabpages,globals

let mapleader = ' '
nmap <leader>gs :G<CR>
nnoremap <leader>pi :source ~/.vimrc \| :PlugInstall<CR>
nnoremap <leader>r :source ~/.vimrc<CR>
nnoremap <leader>; d$a;<esc>
nnoremap <leader>a; ld$a;<esc>
nnoremap <leader>i; hd$a;<esc>
nnoremap <leader>vrc :tabedit \|:e ~/.vimrc<CR>
nnoremap <leader>te :tabedit <CR>
nnoremap <leader>h gT
nnoremap <leader>l gt

