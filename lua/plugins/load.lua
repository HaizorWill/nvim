return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {},
    },
  },
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
}
