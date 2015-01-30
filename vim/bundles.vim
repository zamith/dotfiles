set nocompatible
filetype off
call plug#begin('~/.vim/plugged')

Plug 'AndrewRadev/sideways.vim'
Plug 'danro/rename.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'itchyny/calendar.vim'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mustache/vim-mustache-handlebars'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'nicholaides/words-to-avoid.vim'
Plug 'rhysd/vim-crystal'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'skwp/greplace.vim'
Plug 'slim-template/vim-slim'
Plug 't9md/vim-ruby-xmpfilter'
Plug 'thoughtbot/vim-rspec'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rvm'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tmhedberg/matchit'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/genutils'
Plug 'wting/rust.vim'
Plug 'zamith/vim-ruby-refactoring'

if filereadable(expand("~/.vimrc.bundles.local"))
  source ~/.vimrc.bundles.local
endif

call plug#end()
filetype plugin indent on
