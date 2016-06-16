"-----------------------
" NORMAL MODE MAPPINGS
"-----------------------

" Use space as leader
noremap <space> <Nop>
let mapleader=" "

" ctags
nnoremap fd <C-]>

" Remove all ruby comments
nnoremap rc :g/^ *#.*/d<CR>

" Toggle search highlight
nmap <silent> ,. :set hlsearch!<CR>

" Do not jump over wrapped lines
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" RSpec.vim mappings
" map <Leader>t <Plug>RunCurrentSpecFile
" map <Leader>s <Plug>RunFocusedSpec
" map <Leader>l <Plug>RunMostRecentSpec
" map <Leader>a :call RunAllSpecs()<CR>

map <Leader>t :call neoterm#test#run('file')<cr>
map <Leader>s :call neoterm#test#run('current')<cr>
map <Leader>l <Plug>RunMostRecentSpec
map <Leader>a :call neoterm#test#run('all')<cr>

" Bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR><CR>

" Remap buffer closing
nnoremap <silent> <Leader>q <Esc>:q<cr>

" Open this file
map vimrc :tabe ~/.vim/vimrc<CR>

" Open zshrc
map sh :tabe ~/.zshrc<CR>

" Change all double to single quotes
map <silent> sq <esc>:%s/"\([^"]*\)"/'\1'/g<CR>

" Change all single to double quotes
map <silent> dq <esc>:%s/'\([^']*\)'/"\1"/g<CR>

" NERDTree
map <silent> <Leader>o :NERDTreeToggle<CR>
map <silent> <Leader>nf :NERDTreeFind<CR>

" Indent complete file
map <Leader>i gg=G''

" Change ruby hash syntax from 1.8 to 1.9
nmap <silent> chs <esc>:%s/:\([^ ]*\)\(\s*\)=>/\1:/g<CR>

" Sideways vim
map mr :SidewaysRight<CR>
map ml :SidewaysLeft<CR>

" WIP commit
nmap <Leader>wip <esc>:!git commit -am "wip"<CR>

nnoremap <Leader>d :Dispatch<CR>

" fzf bindings
nmap <C-p> :Files<CR>
nmap <C-f> :Ag<CR>

" run syntastic
nnoremap <leader>c :Neomake<CR>

"-----------------------
" COMMAND MODE MAPPINGS
"-----------------------

" When you forget to sudo a file
cmap w!! w !sudo tee % >/dev/null

" Open files in dir of current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

"-----------------------
" VISUAL MODE MAPPINGS
"-----------------------

" Visual block git blame
vmap <Leader>b :! git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" Visual mode duplicate below
vmap D y'>p<S-O><Esc>

" EXPERIMENT
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Open rails routes file
command! Rroutes :e config/routes.rb

" Open rails factories file
command! Rfactories :e spec/factories.rb

" See rails test log
command! Rtestlog :vs | terminal tail -n 200 log/test.log

" xmpfilter mappings
nmap <buffer> <leader>r <Plug>(xmpfilter-run)
xmap <buffer> <leader>r <Plug>(xmpfilter-run)
nmap <buffer> <leader>m <Plug>(xmpfilter-mark)
xmap <buffer> <leader>m <Plug>(xmpfilter-mark)
