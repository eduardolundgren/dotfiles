set cursorline
set expandtab
set hlsearch
set laststatus=2
set matchtime=1
set mouse=a
set nocompatible
set number
set omnifunc=syntaxcomplete#Complete
set rtp+=<%- vim.path_vundle %>
set ruler
set rulerformat=%=%h%m%r%w\ %(%c%V%),%l/%L\ %P
set scrolloff=5
set shiftwidth=8
set showmatch
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set tabstop=4
set ttyfast
set ttymouse=xterm2

setlocal shiftwidth=4

let airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:EasyMotion_smartcase = 1

call vundle#rc()

filetype on
filetype off
filetype plugin indent on

Bundle 'bling/vim-airline'
Bundle 'FuzzyFinder'
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'L9'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'nvie/vim-togglemouse'
Bundle 'rizzatti/dash.vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/syntastic'
Bundle 'sjl/badwolf'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'

syntax on
colorscheme badwolf

vmap <Tab> >gva
vmap <S-Tab> <gv
map <C-l> gt
map <C-h> gT
map <C-up> <esc>ddkP
map <C-down> ddp
map <C-c> "+y
map <C-x> :q<cr>