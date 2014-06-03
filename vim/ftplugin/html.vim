if exists("b:did_html_ftplugin")
  finish
endif
let b:did_html_ftplugin = 1

cabbrev <buffer> w <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'call ReloadChrome()' : 'w')<CR>
