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
  augroup otherStuff
    autocmd!
    " Remove trailing whitespaces
    autocmd BufWritePre <buffer> :%s/\s\+$//e
    autocmd BufWritePre * silent! :%s/\s\+$//e

    " Disable auto comment insertion
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " Enable rvm
    " autocmd BufEnter * Rvm

    autocmd FileType markdown let b:dispatch = 'octodown %'
    autocmd FileType rust let b:dispatch = 'cargo build'
    autocmd FileType crystal let b:dispatch = 'crystal %'

    " autocmd! vimenter,BufReadPost,BufNewFile * call SetupEnv()

    autocmd BufNewFile,BufRead *.tag set ft=html

    autocmd! BufWritePost * Neomake
  augroup END
endif
