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

    autocmd FileType markdown set nospell
    autocmd FileType markdown let b:dispatch = 'octodown %'
    autocmd FileType rust let b:dispatch = 'cargo build'
    autocmd FileType crystal let b:dispatch = 'crystal %'

    " autocmd! vimenter,BufReadPost,BufNewFile * call SetupEnv()

    autocmd BufNewFile,BufRead *.tag set ft=html
    autocmd BufNewFile,BufRead *.slimeex set ft=slim
    autocmd BufNewFile,BufRead *.slimleex set ft=slim
    autocmd BufNewFile,BufRead *.heex set ft=eelixir
    autocmd BufNewFile,BufRead *.sface set ft=eelixir
    au BufNewFile,BufRead *.ts set filetype=typescript
    au BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

    autocmd FileType neoterm nmap <silent> <buffer> <leader>q :quit!<CR>

    " autocmd! BufWritePost * Neomake
  augroup END

  augroup my_neomake_hooks
    au!
    autocmd User NeomakeJobFinished :checktime
  augroup END
endif
