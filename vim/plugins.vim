" test.vim configs
function! ElixirUmbrellaTransform(cmd) abort
  if match(a:cmd, 'apps/') != -1
    let pattern = 'mix test apps/\([^/]*\)\/\(.*\)'
    let matches = matchlist(a:cmd, pattern)

    " return 'MIX_ENV=test mix cmd --app '.matches[1].' mix test '.matches[2]
    return 'bin/test apps/'.matches[1].'/'.matches[2]
  else
    return a:cmd
  end
endfunction
let g:test#custom_transformations = {'elixir_umbrella': function('ElixirUmbrellaTransform')}
let g:test#transformation = 'elixir_umbrella'

" let test#elixir#exunit#executable = 'bin/test'
let g:test#strategy = "neoterm"
let g:test#preserve_screen = 0

let g:neoterm_default_mod = "botright"

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme="tomorrow"

" fzf
let $FZF_DEFAULT_COMMAND= 'ag -g ""'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(blue)%C(bold)%cr%C(white)"'

" NERDTree
let NERDTreeShowHidden = 1

" neomake
" let g:neomake_ruby_enabled_makers = ['mri']
" let g:neomake_elixir_mix_maker = {
"       \ 'exe' : 'mix',
"       \ 'args': [
"         \ '--ignore-module-conflict', '--warnings-as-errors',
"         \ '--app', 'mix', '--app', 'ex_unit',
"         \ '-o', '$TMPDIR', '%:p'
"       \ ],
"       \ 'cwd': getcwd(),
"       \ 'errorformat':
"         \ '** %s %f:%l: %m,' .
"         \ '%f:%l: warning: %m'
"       \ }

" let g:neomake_elixir_enabled_makers = ['mix']

" let g:neomake_javascript_eslint_maker = {
"     \ 'args': ['--fix --format=compact'],
"     \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
"     \   '%W%f: line %l\, col %c\, Warning - %m,%-G,%-G%*\d problems%#',
"     \ 'cwd': '%:p:h',
"     \ 'output_stream': 'stdout',
"     \ }

" let g:neomake_javascript_enabled_makers = ['eslint']

" call neomake#configure#automake('w')

" let g:mix_format_on_save = 1

" ale

function! FormatSolidity(buffer) abort
    return {
    \   'command': 'forge fmt --raw -'
    \}
endfunction

execute ale#fix#registry#Add('forgefmt', 'FormatSolidity', ['solidity'], 'forge fmt for solidity')

let g:ale_linters = {
\ 'ruby': ['standardrb'],
\ 'solidity': ['solhint'],
\ 'javascript': ['prettier'],
\ 'typescript': ['biome', 'tsc', 'tserver'],
\ 'typescriptreact': ['biome'],
\ 'elixir': ['mix', 'credo']
\}

let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'ruby': ['standardrb'],
\ 'solidity': ['forgefmt'],
\ 'javascript': ['prettier'],
\ 'typescript': ['biome'],
\ 'typescriptreact': ['biome'],
\ 'elixir': ['mix_format']
\}

let g:ale_fix_on_save = 1

" Any jump config
let g:any_jump_grouping_enabled = 1

" Don't ask before loading lvimrc
let g:localvimrc_ask = 0

let g:cairo_linter_autosave = 1

let g:copilot_node_command = "~/.asdf/installs/nodejs/22.3.0/bin/node"
