function! ReloadChrome()
  wall
  silent :!reload-chrome
  redraw!
endfunction

function! ReloadChromeRails()
  wall
  silent :!reload-chrome-url http://localhost:3000/
  redraw!
endfunction

nmap <Leader>rl :call ReloadChrome()<CR>
