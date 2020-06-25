" Settings for Clap

" Layout
let g:clap_layout = { 'relative': 'editor' }

" Open actions
let g:clap_open_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }

" Grep options
let g:clap_provider_grep_opts = '--hidden'

"Mappings

" Open base Clap window
nnoremap <Leader>c :Clap

" File search
nnoremap <Leader>f :Clap files --hidden<CR>

" Text search
nnoremap <Leader>t :Clap grep<CR>

" Grep word under cursor
nnoremap <Leader>cw :Clap grep ++query=<cword><CR>

" Grep visual selection
vnoremap <Leader>cv :Clap grep ++query=@visual<CR>

" Buffers
nnoremap <Leader>cb :Clap buffers<CR>

" Commands
nnoremap <Leader>cc :Clap command<CR>

" Search history
nnoremap <Leader>ch :Clap hist/<CR>

" Git files
nnoremap <Leader>cg :Clap gfiles<CR>

" Git uncommited changes
nnoremap <Leader>cgd :Clap git_diff_files<CR>

" Tags in current buffer
nnoremap <Leader>ct :Clap tags<CR>

" Tags in project
nnoremap <Leader>ctt :Clap proj_tags<CR>

" Yanks
nnoremap <Leader>cy :Clap yanks<CR>

" Lines in current buffer
nnoremap <Leader>cl :Clap lines<CR>

" Quickfix
nnoremap <Leader>cq :Clap quickfix<CR>

