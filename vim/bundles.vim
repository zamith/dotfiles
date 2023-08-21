set nocompatible
filetype off
call plug#begin('~/.vim/plugged')

Plug 'AndrewRadev/sideways.vim'
Plug 'avdgaag/vim-phoenix'
Plug 'benekastah/neomake'
Plug 'christoomey/vim-tmux-navigator'
Plug 'danro/rename.vim'
Plug 'dense-analysis/ale'
Plug 'digitaltoad/vim-pug'
Plug 'embear/vim-localvimrc'
Plug 'elixir-editors/vim-elixir'
Plug 'ElmCast/elm-vim'
Plug 'ervandew/supertab'
Plug 'github/copilot.vim', {'branch': 'release'}
Plug 'vim-test/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-user'
Plug 'kassio/neoterm'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'miguelmota/cairo.vim'
Plug 'mhinz/vim-mix-format'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'pechorin/any-jump.vim'
Plug 'rhysd/vim-crystal'
Plug 'scrooloose/nerdtree'
Plug 'skwp/greplace.vim'
Plug 'slashmili/alchemist.vim'
Plug 'slim-template/vim-slim'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tomlion/vim-solidity'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tmhedberg/matchit'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iden3/vim-circom-syntax'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/genutils'
Plug 'vim-scripts/ingo-library'
Plug 'vim-scripts/SyntaxRange'
Plug 'wellle/targets.vim'
Plug 'wting/rust.vim'
Plug 'yuezk/vim-js'

set rtp+=/usr/local/opt/fzf

if filereadable(expand('~/.vimrc.bundles.local'))
  source ~/.vimrc.bundles.local
endif

call plug#end()
filetype plugin indent on
