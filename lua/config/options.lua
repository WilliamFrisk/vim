-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- absolute line numbers
vim.opt.number = true
vim.opt.relativenumber = false

-- gb for go back
vim.keymap.set("n", "gb", "<C-o>", { noremap = true, silent = true })
