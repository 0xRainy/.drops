" Settings for nvim native LSP
lua << END
require 'nvim_lsp'.vimls.setup{}
require 'nvim_lsp'.pyls.setup{}
require 'nvim_lsp'.jsonls.setup{}
require 'nvim_lsp'.rls.setup{}
require 'nvim_lsp'.rust_analyzer.setup{}
END

" Mappings
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

" Use LSP omni-completion in Python files.
" autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
" autocmd Filetype vim setlocal omnifunc=v:lua.vim.lsp.omnifunc
" autocmd Filetype json setlocal omnifunc=v:lua.vim.lsp.omnifunc
" autocmd Filetype rust setlocal omnifunc=v:lua.vim.lsp.omnifunc

" Custom signs
sign define LspDiagnosticsErrorSign text=✖
sign define LspDiagnosticsWarningSign text=⚠
sign define LspDiagnosticsInformationSign text=ℹ
sign define LspDiagnosticsHintSign text=➤
