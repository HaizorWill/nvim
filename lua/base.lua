local opt = vim.opt

vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.filetype = "unix"

opt.number = true
opt.numberwidth = 2
opt.relativenumber = true

opt.laststatus = 3
opt.title = true
opt.autoindent = true
opt.hlsearch = true
opt.iskeyword:remove("_")
opt.ignorecase = true
opt.smartcase = true

--opt.backup = true
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.scrolloff = 10

-- Indentation
opt.wrap = false
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.smarttab = true
opt.tabstop = 2
opt.softtabstop = 2

opt.updatetime = 300

opt.clipboard = "unnamedplus"
