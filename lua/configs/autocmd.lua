-- local function check_triggeredChars(triggerChars)
--   local cur_line = api.nvim_get_current_line()
--   local pos = api.nvim_win_get_cursor(0)[2]
--   local prev_char = cur_line:sub(pos - 1, pos - 1)
--   local cur_char = cur_line:sub(pos, pos)
--
--   for _, char in ipairs(triggerChars) do
--     if cur_char == char or prev_char == char then
--       return true
--     end
--   end
-- end

vim.api.nvim_create_autocmd("BufReadPost", {
  group = vim.api.nvim_create_augroup("Restore", { clear = true }),
  pattern = { "*" },
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
  desc = "Restore cursor position",
})

-- vim.api.nvim_create_autocmd("CursorHold", {
--   callback = function()
--     local clients = vim.lsp.get_clients({ bufnr = vim.api.nvim_get_current_buf() })
--     if #clients > 0 then
--       vim.lsp.buf.signature_help({
--         focus = false,
--         silent = true,
--         max_height = 7,
--         border = "single",
--       })
--     end
--   end,
-- })

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})

vim.api.nvim_create_autocmd("BufRead", {
  pattern = { "*.tf", "*.tfvars" },
  callback = function()
    vim.opt.filetype = "terraform"
  end,
})

vim.api.nvim_create_autocmd("BufRead", {
  pattern = {
    "*/tasks/*.yml",
    "*/tasks/*.yaml",
    "*/handlers/*.yml",
    "*/handlers/*.yaml",
    "*/defaults/*.yml",
    "*/defaults/*.yaml",
    "*/playbooks/*.yml",
    "*/playbooks/*.yaml",
    "*/roles/*/tasks/*.yml",
    "*/roles/*/tasks/*.yaml",
    "*/vars/*.yml",
    "*/vars/*.yaml",
    "local.yml",
  },
  callback = function()
    vim.opt.filetype = "yaml.ansible"
  end,
})
-- vim.api.nvim_create_autocmd("CursorHold", {
--   callback = function()
--     -- vim.diagnostic.open_float(nil, { focus = false })
--   end,
-- })
