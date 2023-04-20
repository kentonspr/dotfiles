-- Sets colors to line numbers Above, Current and Below  in this order
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#51B3EC' })
vim.api.nvim_set_hl(0, 'LineNr', { fg = 'white', bold = true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#FB508F' })
