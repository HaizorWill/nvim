return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {},
    },
  },
  -- {
  --   "aktersnurra/no-clown-fiesta.nvim",
  --   priority = 1000,
  --   -- config = function()
  --   --   vim.cmd("colorscheme no-clown-fiesta-dark")
  --   -- end,
  -- },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   opts = {
  --     undercurl = true,
  --     commentStyle = { italic = true },
  --     keywordStyle = { italic = true },
  --     statementStyle = { bold = true },
  --     transparent = true,
  --     dimInactive = true,
  --     theme = "dragon",
  --   },
  -- },
  {
    "vague-theme/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("vague").setup({
        transparent = true,
        bold = true,
        italic = true,
        style = {
          functions = "bold",
        },
        colors = {
          bg = "#141415",
          fg = "#cdcdcd",
          hint = "#90a0b5", --#d1416c default #7e98e8
        },
      })
    end,
  },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   opts = {},
  --   config = function()
  --     require("catppuccin").setup({
  --       term_colors = true,
  --       transparent_background = false,
  --       float = {
  --         transparent = true,
  --       },
  --       dim_inactive = {
  --         enabled = true,
  --         shade = "dark",
  --         percentage = 0.2,
  --       },
  --       styles = {
  --         comments = { "italic" },
  --         conditionals = { "italic" },
  --         functions = { "bold" },
  --       },
  --       color_overrides = {
  --         mocha = {
  --           base = "#181818", --#14171a
  --           mantle = "#141414",
  --           crust = "#141414",
  --         },
  --       },
  --       integrations = {
  --         cmp = true,
  --         gitsigns = true,
  --         nvimtree = true,
  --         barbar = true,
  --         dap = true,
  --         treesitter_context = true,
  --         snacks = {
  --           enabled = true,
  --         },
  --         telescope = {
  --           enabled = true,
  --         },
  --       },
  --     })
  --   end,
  -- },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    opts = {
      bind = true,
      doc_lines = 7,
      max_height = 9,
      wrap = true,
      floating_window_above_cur_line = true,
      hint_prefix = "",
      handler_opts = {
        border = "single",
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<space>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
    -- "akinsho/toggleterm.nvim",
    -- opts = {
    --
    -- },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
    keys = {
      { "<space>md", "<cmd>RenderMarkdown toggle<cr>", desc = "Markdown" },
    },
  },
}
