" Vim config file (~/.vimrc)
 
set nocompatible

" General 
syntax on " enable syntax highlighting
set title
set number
set relativenumber 
set textwidth=80
set mouse=a      " select text without line numbers
set history=1000 " :cmdline history
set spell        " spell check

" Auto completion
set wildmenu
set wildmode=list:longest,full

" Indentation
filetype indent plugin on " auto indenting by file type
set autoindent
set smartindent

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab " tabs are spaces
set smarttab

" Searching
set incsearch  " search as characters are entered
set hlsearch   " highlight matches
set ignorecase " case-insensitive
set smartcase 

" Switch to normal mode
inoremap jk <Esc>

" Move cursor independent of text wrap
nnoremap j gj
nnoremap k gk

" Turn off search highlighting 
nnoremap i :noh<cr>i

" Persistent undo (expects ~/.vim/undodir already exists)
set undodir=~/.vim/undodir
set undofile

" Jump to last known cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Insert single character before cursor
nnoremap <Space> i_<Esc>r
