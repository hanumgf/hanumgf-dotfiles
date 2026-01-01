-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- encoding
vim.o.encoding = "utf-8"
vim.scriptencoding = "utf-8"

-- visual
-- vim.o.ambiwidth = "double"
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

vim.o.visualbell = true
vim.o.number = true
vim.o.showmatch = true
vim.o.matchtime = 1

-- search
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.api.nvim_set_keymap("n", "<Esc><Esc>", ":nohl<CR>", { noremap = true, silent = true })

-- manipulatoin
vim.g.mapleader = " "
vim.opt.clipboard:append({ "unnamedplus" })
vim.o.ttimeout = true
vim.o.ttimeoutlen = 50

vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath("cache") .. "/undo"

vim.opt.wrap = true
vim.opt.linebreak = true

vim.keymap.set("n", "dd", '"_dd')
vim.keymap.set("n", "d", '"_d')
vim.keymap.set("n", "x", '"_x')
