return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    opts = {
      preset = "classic",
      transparent_bg = true,
      transparent_cursorline = true,
      multulines = {
        enabled = true,
      },
      show_source = {
        enabled = true,
      },
      signs = {
        diag = "<-",
        arrow = "",
        up_arrow = "",
      },
    },
  },
}
