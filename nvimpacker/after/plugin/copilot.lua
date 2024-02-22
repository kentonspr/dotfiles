-- local copilot_chat = function()
--   vim.ui.input({prompt = "Copilot chat prompt: "}, function(input)
--     vim.cmd.CopilotChat input
--     require('telescope.builtin').find_files({cwd = input})
--   end)
-- end

-- vim.keymap.set("n", "<leader>f", function() cool_input() end, {desc = "Input cwd

vim.keymap.set('n', "<leader>ca", ':Copilot attach<CR>', { desc = "attach" })
vim.keymap.set('n', "<leader>cD", ':Copilot detach<CR>', { desc = "detach" })
vim.keymap.set('n', "<leader>cd", ':Copilot disable<CR>', { desc = "disable" })
vim.keymap.set('n', "<leader>ce", ':Copilot enable<CR>', { desc = "enable" })
vim.keymap.set('n', "<leader>cp", ':Copilot panel<CR>', { desc = "panel" })
vim.keymap.set('n', "<leader>cS", ':Copilot status<CR>', { desc = "status" })
vim.keymap.set('n', "<leader>cs", ':Copilot suggestion<CR>', { desc = "suggestion" })
vim.keymap.set('n', "<leader>ct", ':Copilot toggle<CR>', { desc = "toggle" })
