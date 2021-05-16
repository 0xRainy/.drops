" Mappings
nnoremap <C-t>      <cmd>Telescope<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>of <cmd>Telescope oldfiles<cr>
nnoremap <leader>qf <cmd>Telescope quickfix<cr>
nnoremap <leader>fs <cmd>Telescope lsp_dynamic_workspace_symbols<cr>
nnoremap <silent> <Leader>b :Telescope buffers<CR>

" Uncomment if on windows
let g:sql_clib_path = 'C:\sqlite3\sqlite3.dll'
