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
"set nowrap

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
"vim fugitive map
nmap <leader>gs :G<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>gp :Git push<CR>
nmap <leader>gl :Git log<CR>

nnoremap <leader>K i<CR><esc>k$

"Tab move map
nnoremap <leader><TAB> gt
nnoremap <leader>` gT


nnoremap <leader>pi :source ~/.vimrc \| :PlugInstall<CR>
nnoremap <leader>r :source ~/.vimrc<CR>
nnoremap <leader>; A;<esc>
nnoremap <leader>d; d$a;<esc>
nnoremap <leader>a; ld$a;<esc>
nnoremap <leader>i; hd$a;<esc>
nnoremap <leader>vrc :tabedit \|:e ~/.vimrc<CR>
nnoremap <leader>te :tabedit <CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>k <C-w>k
nnoremap <leader>j <C-w>j

nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :echo "No left for you!"<CR>
inoremap <Left> <nop>

nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :echo "No right for you!"<CR>
inoremap <Right>  <nop>

nnoremap <up> :echo "No up for you!"<CR>
vnoremap <up> :echo "No up for you!"<CR>
inoremap <up> <nop>

nnoremap <down> :echo "No down for you!"<CR>
vnoremap <down> :echo "No down for you!"<CR>
inoremap <down> <nop>
