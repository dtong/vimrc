set nocompatible
filetype off

set rtp+=~/.vim/*
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVime/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin on

nmap <C-S-l>    :bnext<CR>
nmap <C-S-h>    :bprev<CR>
nmap <C-n>      :NERDTreeToggle<cr>
nmap <leader>q  :bp<bar>sp<bar>bn<bar>bd<CR>

syntax on

colorscheme solarized 

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:ctrlp_max_files=0
let g:solarized_termcolors=256
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let NERDTreeIgnore = ['\.DS_Store$']

set background=dark
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set cindent
set cursorline
set ruler
set showmode
set showcmd
set autoindent
set smarttab
set wildmenu
set hlsearch
set incsearch
set nowrap
set laststatus=2
set tags=./tags,tags
set ignorecase
set smartcase

highlight cursorline cterm=bold term=bold

