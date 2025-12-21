local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Swap buffers forward/backward
map("n", "<space>n", "<Cmd>bprevious<CR>", opts)
map("n", "<space>N", "<Cmd>bnext<CR>", opts)

-- Close/Open something
map("n", "<space>W", "<Cmd>BufferClose!<CR>", opts)
map("n", "<space>q", "<Cmd>NvimTreeToggle<CR>", opts)

-- Indentation
map("n", "<Tab>", ">>", opts)
map("n", "<S-Tab>", "<<", opts)
map("i", "<S-Tab>", "<Cmd><<CR>", opts)

-- Lsp mappings
--map("n", "<space>/", "<Cmd>lua vim.lsp.buf.signature_help()<CR>", opts)

-- Resizing window
map("n", "<C-Up>", "<Cmd>resize +2<CR>", { desc = "Increase height" })
map("n", "<C-Down>", "<Cmd>resize -2<CR>", { desc = "Increase height" })
map("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "Decrease width" })
map("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "Increase width" })
