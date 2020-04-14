filetype plugin indent on

" Manage plugings with vim-plug
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'shougo/deoplete.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'rakr/vim-one'
call plug#end()

" Syntax highlighting
set termguicolors
set background=dark
let g:one_allow_italics = 1
colorscheme one

" General
set number
set spell
set relativenumber
set cursorline
set mouse=a
set clipboard=unnamedplus

" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap i :noh<cr>i

" Tabs and indentation
set expandtab
set autoindent
set smartindent
set shiftwidth=2
set softtabstop=2

" Insert single character before cursor
nnoremap <Space> i_<Esc>r

" Move cursor independent of text wrap
nnoremap j gj
nnoremap k gk

" Jump to last known cursor position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Persistent undo
set undodir=~/.config/nvim/undodir
set undofile

" Delete trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Deoplete completion
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

