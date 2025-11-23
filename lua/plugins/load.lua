return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {},
    },
  },
  {
    "aktersnurra/no-clown-fiesta.nvim",
    priority = 1000,
    -- config = function()
    --   vim.cmd("colorscheme no-clown-fiesta-dark")
    -- end,
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      undercurl = true,
      commentStyle = { italic = true },
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      transparent = true,
      dimInactive = true,
      theme = "dragon",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {},
    config = function()
      require("catppuccin").setup({
        term_colors = true,
        transparent_background = false,
        color_overrides = {
          mocha = {
            base = "#14171a",
            mantle = "#14171a",
            crust = "#14171a",
          },
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
        },
      })
      vim.cmd("colorscheme catppuccin-mocha")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
