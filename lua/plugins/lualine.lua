return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        always_show_tabline = false,
        globalstatus = true,
      },
      sections = {
        lualine_c = { "filename" },
        lualine_x = {
          {
            require("noice").api.statusline.mode.get,
            cond = require("noice").api.statusline.mode.has,
          },
        },
        lualine_y = {
          "encoding",
          "fileformat",
          "filetype",
        },
        lualine_z = {
          "progress",
          "location",
        },
      },
      tabline = {},
    },
  },
}
