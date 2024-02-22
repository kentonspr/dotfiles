-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.g.python3_host_prog = "/home/kenton/.pyenv/versions/nvim/bin/python"

-- Sets colors to line numbers Above, Current and Below  in this order
-- vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#51B3EC' })
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#adadad" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "white", bold = true })
-- vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#FB508F' })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#adadad" })
