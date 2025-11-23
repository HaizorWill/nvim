return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    opts = {
      lsp = {
        signature = {
          enabled = false,
          auto_open = {
            enabled = false,
          },
        },
      },
      views = {
        cmdline_popup = {
          position = {
            row = "90%",
            col = "50%",
          },
        },
      },
      presets = {
        bottom_search = true,
      },
    },
  },
}
