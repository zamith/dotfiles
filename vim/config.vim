syntax on

" Force reload
filetype off
filetype plugin indent on

runtime macros/matchit.vim

" Set my font
set guifont=Monaco:h14

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
set noundofile

" Automatically write before running commands
set autowrite

" Highlights current line and column
set cursorcolumn
set cursorline

" CTags settings
set tags=./tags;

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab
set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftround
set nohlsearch
set undolevels=1000
set title
set visualbell
set noerrorbells
set list

set listchars=tab:--,trail:.,nbsp:.
set pastetoggle=<C-p>

set relativenumber
set number

" More natural split opening
set splitbelow
set splitright
