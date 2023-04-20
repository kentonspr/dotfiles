vim.g.mapleader = " "

-- BUFFERS
--
vim.keymap.set("n", "<leader><Tab>", ':b#<CR>', { desc = "changes to last buffer" })
vim.keymap.set("n", "<leader>bd", ':bd<CR>', { desc = "close current buffer safe" })
vim.keymap.set("n", "<leader>bD", ':bw<CR>', { desc = "close current buffer unsafe" })

-- EDITING
--
vim.keymap.set("n", "<C-j>", '<ESC>:m .+1<CR>==gi', { desc = "move line down in normal mode" })
vim.keymap.set("n", "<C-k>", '<ESC>:m .-2<CR>==gi', { desc = "move line up in normal mode" })
vim.keymap.set("i", "<C-j>", '<ESC>:m .+1<CR>==gi', { desc = "move line down in insert mode" })
vim.keymap.set("i", "<C-k>", '<ESC>:m .-2<CR>==gi', { desc = "move line up in insert mode" })
-- This doesn't work so well in visual mode
-- vim.keymap.set("v", "<C-j>", "<ESC>:m '>+1<CR>==gi", { desc = "move line down in visual mode" })
-- vim.keymap.set("v", "<C-k>", "<ESC>:m '<-2<CR>==gi", { desc = "move line up in visual mode" })

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
vim.keymap.set("n", "<leader>td", ':tabclose<CR>', { desc = "close current tab" })
vim.keymap.set("n", "<leader>tD", ':tabonly<CR>', { desc = "close all other tabs" })

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
vim.keymap.set("n", "<leader>wd", ':close<CR>', { desc = "close current window" })

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
vim.keymap.set("n", "<leader>wmh", ':wincmd H<CR>', { desc = "move window to far left" })
vim.keymap.set("n", "<leader>wmj", ':wincmd J<CR>', { desc = "move window to bottom" })
vim.keymap.set("n", "<leader>wmk", ':wincmd K<CR>', { desc = "move window to top" })
vim.keymap.set("n", "<leader>wml", ':wincmd L<CR>', { desc = "move window to far right" })
