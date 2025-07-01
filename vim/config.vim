syntax on

" Force reload
filetype off
filetype plugin indent on

runtime macros/matchit.vim

" Set my font
set guifont=Monaco\ for\ Powerline:h14

" Disable mouse
set mouse=""

" Remove right side bar in mac vim
set guioptions-=r
set guioptions-=L

" Sets the block cursor in all modes
set guicursor=a:block-Cursor

" Use system clipboard on vim
set clipboard=unnamed

" Backup stuff
set nobackup
set nowritebackup
set noswapfile

" Hide tabline
set showtabline=0

" Persistent undos
set undodir=~/.vim/undodir
set undofile

" Automatically write before running commands
set autowrite

" Highlights current line and column
" set cursorcolumn
" set cursorline

" CTags settings
set tags=./tags;

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smarttab
set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftround
set undolevels=1000
set title
set visualbell
set noerrorbells
set list

set listchars=tab:--,trail:.,nbsp:.

set relativenumber
set number

" More natural split opening
set splitbelow
set splitright

highlight Search ctermbg=234 ctermfg=15 cterm=underline
