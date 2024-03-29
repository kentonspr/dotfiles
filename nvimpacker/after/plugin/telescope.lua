local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "find files" })
vim.keymap.set('n', '<leader>fr', builtin.git_files, { desc = "find repo files" })
vim.keymap.set('n', '<leader>bb', builtin.buffers, { desc = "find buffers" })
vim.keymap.set('n', '<leader>fg', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "find with grep" })
