vim.g.mapleader = " "

-- HELP
--
vim.keymap.set("n", "<leader>hh", ':help<CR>', { desc = "open help in new window" })
vim.keymap.set("n", "<leader>ht", ':tab help<CR>', { desc = "open help in new tab to right" })
vim.keymap.set("n", "<leader>hT", ':-tab help<CR>', { desc = "open help in new tab to left" })

-- PROJECTS
--
vim.keymap.set("n", "<leader>pt", vim.cmd.NvimTreeToggle, { desc = "view project tree" })

-- TABS
--
vim.keymap.set("n", "<leader>tc", ':tabclose<CR>', { desc = "closes current tab" })
vim.keymap.set("n", "<leader>tC", ':tabonly<CR>', { desc = "closes all other tabs" })

-- Navigate tabs
vim.keymap.set("n", "<leader>th", ':-tabnext split<CR>', { desc = "move to tab left" })
vim.keymap.set("n", "<leader>tH", ':1tabnext split<CR>', { desc = "move to first tab" })
vim.keymap.set("n", "<leader>tl", ':tabnext split<CR>', { desc = "move to tab right" })
vim.keymap.set("n", "<leader>tL", ':$tabnext split<CR>', { desc = "move to last tab" })

-- New tabs
vim.keymap.set("n", "<leader>ts", ':tab split<CR>', { desc = "open buffer in new tab" })
vim.keymap.set("n", "<leader>tnb", ':-tabnew<CR>', { desc = "open new tab to left" })
vim.keymap.set("n", "<leader>tnB", ':0tabnew<CR>', { desc = "open new tab to far left" })
vim.keymap.set("n", "<leader>tnn", ':tabnew<CR>', { desc = "open new tab to right" })
vim.keymap.set("n", "<leader>tnN", ':$tabnew<CR>', { desc = "open new tab to far right" })

-- move tabs
vim.keymap.set("n", "<leader>tmh", ':-tabnext split<CR>', { desc = "move to tab left" })
vim.keymap.set("n", "<leader>tmH", ':1tabnext split<CR>', { desc = "move to first tab" })
vim.keymap.set("n", "<leader>tml", ':tabnext split<CR>', { desc = "move to tab right" })
vim.keymap.set("n", "<leader>tmL", ':$tabnext split<CR>', { desc = "move to last tab" })

-- WINDOWS
--
-- navigatge windows
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
vim.keymap.set("n", "<leader>wmH", ':wincmd H<CR>', { desc = "move window to far left" })
vim.keymap.set("n", "<leader>wmJ", ':wincmd J<CR>', { desc = "move window to bottom" })
vim.keymap.set("n", "<leader>wmK", ':wincmd K<CR>', { desc = "move window to top" })
vim.keymap.set("n", "<leader>wmL", ':wincmd L<CR>', { desc = "move window to far right" })


