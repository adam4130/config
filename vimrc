" Vim config file (~/.vimrc)
 
set nocompatible

filetype plugin on 
filetype indent on 

syntax on 
colorscheme gruvbox

" General 
set title
set number
set relativenumber 
set history=500
set spell        

" Auto completion
set wildmenu
set wildmode=list:longest,full

" Tabs and indentation
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap i :noh<cr>i

" Switch to normal mode
" inoremap jk <Esc>

" Move cursor independent of text wrap
nnoremap j gj
nnoremap k gk

" Persistent undo (expects ~/.vim/undodir already exists)
set undodir=~/.vim/undodir
set undofile

" Jump to last known cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Insert single character before cursor
nnoremap <Space> i_<Esc>r
