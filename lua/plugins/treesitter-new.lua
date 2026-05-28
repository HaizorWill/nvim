return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install({
        "vim",
        "bash",
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
        "hcl",
      })

      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local buf = args.buf
          local lang = vim.treesitter.language.get_lang(vim.bo[buf].filetype)
          if not (lang and vim.treesitter.language.add(lang)) then
            return
          end
          vim.treesitter.start(buf)
          vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim-treesitter-textobjects").setup({
        select = { lookahead = true },
        move = { set_jumps = true },
      })
      local select = require("nvim-treesitter-textobjects.select")
      local swap = require("nvim-treesitter-textobjects.swap")
      local move = require("nvim-treesitter-textobjects.move")
      local rep = require("nvim-treesitter-textobjects.repeatable_move")
      local sel = function(lhs, capture)
        vim.keymap.set({ "x", "o" }, lhs, function()
          select.select_textobject(capture, "textobjects")
        end)
      end
      sel("af", "@function.outer")
      sel("if", "@function.inner")
      sel("ac", "@class.outer")
      sel("ic", "@class.inner")
      sel("aa", "@parameter.outer")
      sel("ia", "@parameter.inner")
      vim.keymap.set("n", "<leader>a", function()
        swap.swap_next("@parameter.inner")
      end)
      vim.keymap.set("n", "<leader>A", function()
        swap.swap_previous("@parameter.inner")
      end)
      local m = function(lhs, fn, capture)
        vim.keymap.set({ "n", "x", "o" }, lhs, function()
          fn(capture, "textobjects")
        end)
      end
      m("]m", move.goto_next_start, "@function.outer")
      m("[m", move.goto_previous_start, "@function.outer")
      m("]M", move.goto_next_end, "@function.outer")
      m("[M", move.goto_previous_end, "@function.outer")
      m("]]", move.goto_next_start, "@class.outer")
      m("[[", move.goto_previous_start, "@class.outer")
      vim.keymap.set({ "n", "x", "o" }, ";", rep.repeat_last_move_next)
      vim.keymap.set({ "n", "x", "o" }, ",", rep.repeat_last_move_previous)
      vim.keymap.set({ "n", "x", "o" }, "f", rep.builtin_f_expr, { expr = true })
      vim.keymap.set({ "n", "x", "o" }, "F", rep.builtin_F_expr, { expr = true })
      vim.keymap.set({ "n", "x", "o" }, "t", rep.builtin_t_expr, { expr = true })
      vim.keymap.set({ "n", "x", "o" }, "T", rep.builtin_T_expr, { expr = true })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      local ts = require("treesitter-context")
      ts.setup({
        enable = true,
        line_numbers = true,
        multiline_threshold = 10,
        mode = "topline",
        max_lines = 4,
        separator = "─",
      })
    end,
  },
}
