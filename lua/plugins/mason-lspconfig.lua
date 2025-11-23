return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "clangd",
        "lua_ls",
        "ansiblels",
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
