augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
        \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
augroup END

if has("autocmd")
  " Remove trailing whitespaces
  autocmd BufWritePre <buffer> :%s/\s\+$//e

  " Disable auto comment insertion
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

  " Enable rvm
  " autocmd BufEnter * Rvm

  " NERDTree when no files
  autocmd vimenter * if !argc() | NERDTree | endif

  " Delete trailing whitespace
  autocmd BufWritePre * :%s/\s\+$//e
endif
