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
    'awk_ls',
    'bashls',
    'clangd',
    'cssls',
    'dockerls',
    'docker_compose_language_service',
    'eslint',
    'helm_ls',
    'html',
    'jsonls',
    'lemminx',  -- XML
    'lua_ls',
    'marksman', -- Markdown
    'pyright',
    'rust_analyzer',
    'spectral', -- OpenAPI
    'sqlls',
    'taplo',    -- TOML
    'terraformls',
    'tflint',
    'tsserver',
    'volar', -- vue
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
