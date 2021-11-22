" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: csejault <csejault@student.42.fr>          +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2021/04/09 15:30:35 by csejault          #+#    #+#              "
"    Updated: 2021/11/22 12:27:15 by csejault         ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

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

set exrc
set secure

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

set wildmenu

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
Plug 'vim-syntastic/syntastic'
Plug 'kien/rainbow_parentheses.vim'

"renambe tabs
Plug 'gcmt/taboo.vim'

"GIT UTILS
Plug 'tpope/vim-fugitive'

Plug 'chase/vim-ansible-yaml'

call plug#end()

"For light line plug. 
set laststatus=2

"gruvbox plug 
colorscheme gruvbox
set background=dark

"Save Tabs Name
set sessionoptions+=tabpages,globals

let mapleader = ' '

"Header
nnoremap	<leader>H gg:Stdheader<CR>

"FOLDER
"https://vim.fandom.com/wiki/Folding
"https://vim.fandom.com/wiki/Folding_with_Regular_Expression
set foldmethod=marker
set foldmarker={,}
"set folder for shell
"knnoremap	<leader>sfs yypkI#{{{<esc>}}I#}}}<CR><esc>zm
"open/close folder
nnoremap	<leader>f zr
nnoremap	<leader>F zm

"Makefile
nnoremap <leader>mr :make re<CR>

"Fast macro call
nnoremap <leader>a @

"vim fugitive map
nmap <leader>gs :G<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>gp :Git push<CR>
nmap <leader>gl :Git log<CR>

"Open a new tab
nnoremap <leader>te :tabedit
"Tab move map
nnoremap <leader><TAB> gt
nnoremap <leader>` gT


"Edit vimrc
nnoremap <leader>rc :tabedit \|:e ~/.vimrc<CR>
"reload vimrc
nnoremap <leader>r :source ~/.vimrc<CR>
"reload vimrc and install plug
nnoremap <leader>pi :source ~/.vimrc \| :PlugInstall<CR>

nnoremap <leader>ct i std::cout <<  << std::endl;<esc>\|f<lla
"del everything betwen quote the insert mode
nnoremap ' ci'
nnoremap " ci"
nnoremap ] ci]
nnoremap [ ci[
nnoremap } ci}
nnoremap { ci{
nnoremap ( ci(
nnoremap ) ci)

"Del line and add ;
nnoremap <leader>d; d$a;<esc>
nnoremap <leader>a; ld$a;<esc>
nnoremap <leader>i; hd$a;<esc>

"add ; at the end of line 
nnoremap <leader>; A;<esc>

"add new line
nnoremap <leader>O O<esc>j
nnoremap <leader>o o<esc>k

"Krack a line
nnoremap <leader>K i<CR><esc>k$

"splits
nnoremap <leader>s :sp<space>
nnoremap <leader>v :vsp<space>

"big resize window
nnoremap <leader>_ <C-w>_
nnoremap <leader>= <C-w>=
"move in different buffer (split / vertical split)
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>k <C-w>k
nnoremap <leader>j <C-w>j

"move buffer
nnoremap <leader>H <C-w>H
nnoremap <leader>L <C-w>L
nnoremap <leader>K <C-w>K
nnoremap <leader>J <C-w>J

"disable arrow
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
