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
nmap <silent> ,. :hlsearch!<CR>

" Do not jump over wrapped lines
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Stupid 'murichans
map º [
map ´ ]

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR><CR>

" Bind <C-f> to grep shortcut
nnoremap <C-f> :Ack<SPACE>

nnoremap <C-n> :call NumberToggle()<cr>

" Remap buffer closing
nnoremap <silent> <Leader>q <Esc>:q<cr>

" Open this file
map vimrc :tabe ~/.vim/vimrc<CR>

" Open zshrc
map sh :tabe ~/.zshrc

" Change all double to single quotes
map <silent> sq <esc>:%s/"\([^"]*\)"/'\1'/g<CR>

" Ruby test
map <Leader>r <Plug>RubyTestRun
map <Leader>R <Plug>RubyFileRun

" NERDTree
map <silent> <Leader>o :NERDTreeToggle<CR>

" Indent complete file
map <Leader>i gg=G''

" Sideways vim
map mr :SidewaysRight<CR>
map ml :SidewaysLeft<CR>

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
