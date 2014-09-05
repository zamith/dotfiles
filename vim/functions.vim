function! SetupEnv()
  let l:path = expand('%:p')
  if l:path =~ 'bid'
    source ~/.vim/project-configs/bid.vim
  endif
endfunction
