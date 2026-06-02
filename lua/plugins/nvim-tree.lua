return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local opts = {
        view = { number = true, relativenumber = true },
      }
      require("nvim-tree").setup(opts)

      vim.api.nvim_create_autocmd("BufReadPost", {
        callback = function(data)
          local api = require("nvim-tree.api")

          api.tree.open()
        end,
      })
    end,
  },
}
