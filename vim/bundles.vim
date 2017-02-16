set nocompatible
filetype off
call plug#begin('~/.vim/plugged')

Plug 'AndrewRadev/sideways.vim'
Plug 'avdgaag/vim-phoenix'
Plug 'benekastah/neomake'
Plug 'christoomey/vim-tmux-navigator'
Plug 'danro/rename.vim'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-lang/vim-elixir'
Plug 'ervandew/supertab'
Plug 'isRuslan/vim-es6'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-user'
Plug 'kassio/neoterm'
Plug 'kchmck/vim-coffee-script'
Plug 'lambdatoast/elm.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'rhysd/vim-crystal'
Plug 'scrooloose/nerdtree'
Plug 'skwp/greplace.vim'
Plug 'slim-template/vim-slim'
Plug 'radenling/vim-dispatch-neovim'
" Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tmhedberg/matchit'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/genutils'
Plug 'wellle/targets.vim'
Plug 'wting/rust.vim'

if filereadable(expand("~/.vimrc.bundles.local"))
  source ~/.vimrc.bundles.local
endif

call plug#end()
filetype plugin indent on
