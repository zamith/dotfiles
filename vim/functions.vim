function! SetupEnv()
  let l:path = expand('%:p')

  if l:path =~ 'bid'
    source ~/.vim/project-configs/bid.vim
  endif

  if l:path =~ 'airtel'
    source ~/.vim/project-configs/airtel.vim
  endif
endfunction
