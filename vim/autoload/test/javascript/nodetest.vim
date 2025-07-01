function! test#javascript#nodetest#test_file(file) abort
  echom a:file
  return a:file =~# '\v(_test|\.test|test\.)\.(js|mjs|cjs|jsx|ts|mts|cts|tsx)$'
endfunction

function! test#javascript#nodetest#build_position(type, position) abort
  if a:type ==# 'nearest'
    " For nearest, you might need to extract the specific test
    " This is a simplified version
    return ['node --test ' . a:position['file']]
  elseif a:type ==# 'file'
    return ['node --test ' . a:position['file']]
  else
    return ['node --test']
  endif
endfunction

function! test#javascript#nodetest#build_args(args) abort
  return a:args
endfunction

function! test#javascript#nodetest#executable() abort
  return 'node'
endfunction
