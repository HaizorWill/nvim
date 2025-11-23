return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = {},
    config = function()
      local ts = require("nvim-treesitter.configs")

      ts.setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        textobjects = { enable = true },
        indent = { enable = true },
        autotag = { enable = true },
        auto_install = true,
        ensure_installed = {
          "vim",
          "vimdoc",
          "markdown",
          "query",
          "go",
          "gomod",
          "gosum",
          "goctl",
          "gowork",
          "c",
          "cpp",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
      })
    end,
  },
}
