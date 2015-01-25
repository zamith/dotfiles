" Vim rspec configs
let g:rspec_runner = "os_x_iterm"
let g:rspec_command = "Dispatch rspec {spec}"

" The Silver Searcher
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Ack.vim configs
let g:ackprg="ag --nogroup --column --nocolor"

" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

" SnipMate snippets dir
let g:snippets_dir = "~/.vim/snippets"

" calendar.vim
let g:calendar_google_calendar = 1
