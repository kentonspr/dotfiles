local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

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

cmp.setup({
    mapping = {
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
                -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
                -- this way you will only jump inside the snippet region
                -- elseif luasnip.expand_or_jumpable() then
                --     luasnip.expand_or_jump()
                -- elseif has_words_before() then
                --     cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
                -- elseif luasnip.jumpable(-1) then
                --     luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    },
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    lsp_format_on_save(bufnr)
end)

-- lsp.format_on_save({
--     servers = {
--         ['lua_ls'] = { 'lua' },
--         ['rust_analyzer'] = { 'rust' },
--         ['tflint'] = { 'terraform' },
--         -- if you have a working setup with null-ls
--         -- you can specify filetypes it can format.
--         ['null-ls'] = { 'python' },
--     }
-- })

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
