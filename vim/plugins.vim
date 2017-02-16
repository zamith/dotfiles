" test.vim configs
let test#strategy = "neoterm"

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme="tomorrow"

" fzf
let $FZF_DEFAULT_COMMAND= 'ag -g ""'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(blue)%C(bold)%cr%C(white)"'

let NERDTreeShowHidden = 1

" neomake

let g:neomake_ruby_enabled_makers = ['mri', 'rubocop', 'rubylint']
let g:neomake_elixir_mix_maker = {
      \ 'exe' : 'mix',
      \ 'args': [
        \ '--ignore-module-conflict', '--warnings-as-errors',
        \ '--app', 'mix', '--app', 'ex_unit',
        \ '-o', '$TMPDIR', '%:p'
      \ ],
      \ 'cwd': getcwd(),
      \ 'errorformat':
        \ '** %s %f:%l: %m,' .
        \ '%f:%l: warning: %m'
      \ }

let g:neomake_elixir_enabled_makers = ['mix']
