-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Delete Defaults
--
-- vim.keymap.del("n", "<leader>ft")
-- vim.keymap.del("n", "<leader>fT")
-- vim.keymap.del("n", "<leader>fe")
-- vim.keymap.del("n", "<leader>fE")
-- vim.keymap.del("n", "<leader>fE")
vim.keymap.del("i", "<A-j>")
vim.keymap.del("i", "<A-k>")

vim.keymap.del("n", "<leader><Tab>[")
vim.keymap.del("n", "<leader><Tab>]")
vim.keymap.del("n", "<leader><Tab><Tab>")
vim.keymap.del("n", "<leader><Tab>d")
vim.keymap.del("n", "<leader><Tab>f")
vim.keymap.del("n", "<leader><Tab>l")
vim.keymap.del("n", "<leader>bb")
vim.keymap.del("n", "<leader>-")
vim.keymap.del("n", "<leader>`")
vim.keymap.del("n", "<leader>|")

-- Code Lens
--
-- vim.keymap.del("n", "<leader>cc")
-- vim.keymap.del("n", "<leader>cC")

-- FILES
--
vim.keymap.set("n", "<leader>ft", vim.cmd.NvimTreeToggle, { desc = "Toggle file tree" })

-- BUFFERS
--
vim.keymap.set("n", "<leader><Tab>", ":b#<CR>", { desc = "Switch to last buffer" })

-- TABS
--
vim.keymap.set("n", "<leader>td", ":tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tD", ":tabonly<CR>", { desc = "Close all other tabs" })

-- Navigate tabs
vim.keymap.set("n", "<leader>th", ":-tabnext<CR>", { desc = "Move to tab left" })
vim.keymap.set("n", "<leader>tH", ":1tabnext<CR>", { desc = "Move to first tab" })
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", { desc = "Move to tab right" })
vim.keymap.set("n", "<leader>tL", ":$tabnext<CR>", { desc = "Move to last tab" })

-- New tabs
vim.keymap.set("n", "<leader>ts", ":tab split<CR>", { desc = "Open buffer in new tab" })
vim.keymap.set("n", "<leader>tnh", ":-tabnew<CR>", { desc = "Open new tab to left" })
vim.keymap.set("n", "<leader>tnH", ":0tabnew<CR>", { desc = "Open new tab to far left" })
vim.keymap.set("n", "<leader>tnl", ":tabnew<CR>", { desc = "Open new tab to right" })

vim.keymap.set("n", "<leader>tnL", ":$tabnew<CR>", { desc = "open new tab to far right" })
-- move tabs
vim.keymap.set("n", "<leader>tmh", ":-tabnext split<CR>", { desc = "Move to tab left" })
vim.keymap.set("n", "<leader>tmH", ":1tabnext split<CR>", { desc = "Move to first tab" })
vim.keymap.set("n", "<leader>tml", ":tabnext split<CR>", { desc = "Move to tab right" })
vim.keymap.set("n", "<leader>tmL", ":$tabnext split<CR>", { desc = "Move to last tab" })

-- WINDOWS
--
-- navigatge windows
vim.keymap.set("n", "<leader>wh", ":wincmd h<CR>", { desc = "Move to window left" })
vim.keymap.set("n", "<leader>wj", ":wincmd j<CR>", { desc = "Move to window below" })
vim.keymap.set("n", "<leader>wk", ":wincmd k<CR>", { desc = "Move to window above" })
vim.keymap.set("n", "<leader>wl", ":wincmd l<CR>", { desc = "Move to window right" })

-- split windows
vim.keymap.set("n", "<leader>ws", ":wincmd s<CR>", { desc = "Split window horizontal" })
vim.keymap.set("n", "<leader>wv", ":wincmd v<CR>", { desc = "Split window vertical" })

-- resize windows
vim.keymap.set("n", "<leader>wf", ":wincmd ><CR>", { desc = "Make window wider" })
vim.keymap.set("n", "<leader>wa", ":wincmd <<CR>", { desc = "Make window narrower" })

-- move windows around
vim.keymap.set("n", "<leader>wmh", ":wincmd H<CR>", { desc = "Move window to far left" })
vim.keymap.set("n", "<leader>wmj", ":wincmd J<CR>", { desc = "Move window to bottom" })
vim.keymap.set("n", "<leader>wmk", ":wincmd K<CR>", { desc = "Move window to top" })
vim.keymap.set("n", "<leader>wml", ":wincmd L<CR>", { desc = "Move window to far right" })

--Telescope
--
vim.keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Telescope Buffers" })

-- CodeCompanion
vim.keymap.set("n", "<leader>cca", ":CodeCompanionActions<CR>", { desc = "CodeCompanionActions" })
vim.keymap.set("n", "<leader>ccc", ":CodeCompanionChat<CR>", { desc = "CodeCompanionChat" })
vim.keymap.set("n", "<leader>ccC", ":CodeCompanionCmd<CR>", { desc = "CodeCompanionCmd" })
vim.keymap.set("n", "<leader>ccp", ":CodeCompanion<CR>", { desc = "CodeCompanion - Prompt" })
