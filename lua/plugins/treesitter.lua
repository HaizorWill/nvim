return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile", },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo", },
    build = ":TSUpdate",
    opts = {
    },
    config = function()
      local ts = require("nvim-treesitter.configs")

      ts.setup({
        highlight = { enable = true, },
        textobjects = { enable = true, },
        indent = { enable = true, },
        autotag = { enable = true, },
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
        },
        rainbow = {
          enable = true,
        },
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
      })
    end
  },
}
