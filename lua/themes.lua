vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "double",
  focusable = false,
})
