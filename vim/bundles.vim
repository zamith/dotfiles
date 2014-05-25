set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

Plugin 'AndrewRadev/sideways.vim'
Plugin 'christoomey/vim-conflicted'
Plugin 'danro/rename.vim'
Plugin 'ervandew/supertab'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'kana/vim-textobj-user'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'skwp/greplace.vim'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rvm'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/matchit'
Plugin 'vim-scripts/BreakPts'
Plugin 'vim-scripts/ctags.vim'
Plugin 'vim-scripts/genutils'
Plugin 'zamith/vim-ruby-refactoring'
Plugin 'zerowidth/vim-copy-as-rtf'

if filereadable(expand("~/.vimrc.bundles.local"))
  source ~/.vimrc.bundles.local
endif

filetype on
