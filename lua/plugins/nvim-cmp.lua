return {
  {
    "hrsh7th/nvim-cmp",
    event = { "BufReadPre", "BufNewFile", },
    dependencies = {
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/vim-vsnip",
    },
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        completion = {
          completeopt = "menu,menuone,preview,noselect",
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "vsnip" },
        }, {
          { name = "buffer" },
        }),
        mapping = cmp.mapping.preset.insert({
          ['<Tab>'] = cmp.mapping.confirm(),
        }),
      })
    end,
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    event = { "BufReadPre", "BufNewFile", },
    config = function()
      local cmp_nvim_lsp = require('cmp_nvim_lsp')
      local capabilities = cmp_nvim_lsp.default_capabilities()

      vim.lsp.config("*", {
        capabilities = capabilities,
      })
    end,
  },
}
