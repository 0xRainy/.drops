" Leader Key
let mapleader=" "
let maplocalleader="\\"
nnoremap <SPACE> <Nop>

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
nnoremap <c-l> :call OpenTerminal()<CR>
tnoremap <Esc> <C-\><C-n> " normal mode with esc

" Tab switch buffers in General Mode
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" Move selection Up/Down in Visual Mode
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Leader+Leader go to previous buffer
nnoremap <Leader><Leader> :bprevious<CR>

" Leader+q :q
nnoremap <Leader>q :q<CR>

" Leader+d :bd
nnoremap <Leader>d :bd<CR>

" Open Startify
nnoremap <Leader>, :Startify<CR>
