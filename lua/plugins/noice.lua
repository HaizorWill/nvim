return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    opts = {
      cmdline = {
        enabled = true,
      },
      lsp = {
        signature = {
          enabled = false,
          auto_open = {
            enabled = false,
          },
        },
      },
      notify = {
        enabled = true,
        view = "virtualtext",
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
      routes = {
        {
          filter = { event = "lsp", kind = "progress", find = "basedpyright" },
          opts = { skip = true },
        },
      },
    },
  },
}
