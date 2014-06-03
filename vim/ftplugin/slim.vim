if exists("b:did_slim_ftplugin")
  finish
endif
let b:did_slim_ftplugin = 1

cabbrev <buffer> w <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'call ReloadChromeRails()' : 'w')<CR>
