return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "clangd",
        "lua_ls",
        "ansiblels",
        "postgres_lsp",
      },
    },
    dependencies = {
      "mason-org/mason.nvim",
    },
  },
  {
    "neovim/nvim-lspconfig",
  },
}
