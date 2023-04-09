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
	'tsserver',
    'volar',
    'yamlls'
})

local cmp = require('cmp')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
