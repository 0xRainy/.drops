local nvim_lsp = require'lspconfig'

nvim_lsp.rust_analyzer.setup{}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}
require('lspconfig').rust_analyzer.setup{}
require('rust-tools').setup {}

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = {
          severity_limit = "hint",
          enable = true,
        },
        signs = {
            severity_limit = "hint",
            enable = true,
        },
    underline = false,
    update_in_insert = true,
    })

