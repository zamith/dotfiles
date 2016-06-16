" Vim spec runner configs
let g:spec_runner_dispatcher = 'Dispatch {command}'

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme="tomorrow"

" fzf
let $FZF_DEFAULT_COMMAND= 'ag -g ""'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(blue)%C(bold)%cr%C(white)"'
