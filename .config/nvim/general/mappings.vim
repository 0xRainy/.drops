" Use alt+hjkl to move between splits
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Integrated terminal
nnoremap <silent> <C-l> :12sp\| terminal<CR>
tnoremap <Esc> <C-\><C-n> " normal mode with esc

" Tab switch buffers in General Mode
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" Move selection Up/Down in Visual Mode
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Leader+Leader go to previous buffer
nnoremap <silent> <Leader><Leader> :b #<CR>

" Leader+q :q
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>Q :q!<CR>

" Leader+d :bd
nnoremap <silent> <Leader>d :b #\|bd #<CR>
nnoremap <silent> <Leader>D :b #\|bd! #<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

