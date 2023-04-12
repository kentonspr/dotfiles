vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pt", vim.cmd.NvimTreeToggle, { desc = "view project tree" })

-- move to windows
vim.keymap.set("n", "<leader>wh", ':wincmd h<CR>', { desc = "move to window left" })
vim.keymap.set("n", "<leader>wj", ':wincmd j<CR>', { desc = "move to window below" })
vim.keymap.set("n", "<leader>wk", ':wincmd k<CR>', { desc = "move to window above" })
vim.keymap.set("n", "<leader>wl", ':wincmd l<CR>', { desc = "move to window right" })

-- split windows
vim.keymap.set("n", "<leader>ws", ':wincmd s<CR>', { desc = "split window horizontal" })
vim.keymap.set("n", "<leader>wv", ':wincmd v<CR>', { desc = "split window vertical" })

-- resize windows
vim.keymap.set("n", "<leader>wf", ':wincmd ><CR>', { desc = "make window wider" })
vim.keymap.set("n", "<leader>wa", ':wincmd <<CR>', { desc = "make window narrower" })

-- move windows around
-- vim.keymap.set("n", "<leader>wH", ':wincmd H<CR>', { desc = "move to window far left" })
-- vim.keymap.set("n", "<leader>wJ", ':wincmd J<CR>', { desc = "move to window bottom" })
-- vim.keymap.set("n", "<leader>wK", ':wincmd K<CR>', { desc = "move to window top" })
-- vim.keymap.set("n", "<leader>wL", ':wincmd L<CR>', { desc = "move to window far right" })

