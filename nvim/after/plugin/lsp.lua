-- Format on save
local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
local lsp_format_on_save = function(bufnr)
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format()
        end,
    })
end

local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
    'ansiblels',
    'bashls',
    'cssls',
    'dockerls',
    'eslint',
    'html',
    'jsonls',
    'lua_ls',
    'pyright',
    'rust_analyzer',
    'terraformls',
    'tflint',
    'tsserver',
    'volar',
    'yamlls'
})

local cmp = require('cmp')

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    lsp_format_on_save(bufnr)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
