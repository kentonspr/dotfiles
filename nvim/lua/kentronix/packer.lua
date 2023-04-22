vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Pretty stuff
    -- Doom Emacs theme
    use({
        'NTBBloodbath/doom-one.nvim',
        setup = function()
            -- Add color to cursor
            vim.g.doom_one_cursor_coloring = false
            -- Set :terminal colors vim.g.doom_one_terminal_colors = false
            -- Enable italic comments
            vim.g.doom_one_italic_comments = false
            -- Enable TS support
            vim.g.doom_one_enable_treesitter = true
            -- Color whole diagnostic text or only underline
            vim.g.doom_one_diagnostics_text_color = false
            -- Enable transparent background
            vim.g.doom_one_transparent_background = false

            -- Pumblend transparency
            vim.g.doom_one_pumblend_enable = false
            vim.g.doom_one_pumblend_transparency = 20

            -- Plugins integration
            vim.g.doom_one_plugin_neorg = false
            vim.g.doom_one_plugin_barbar = false
            vim.g.doom_one_plugin_telescope = true
            vim.g.doom_one_plugin_neogit = false
            vim.g.doom_one_plugin_nvim_tree = true
            vim.g.doom_one_plugin_dashboard = false
            vim.g.doom_one_plugin_startify = false
            vim.g.doom_one_plugin_whichkey = true
            vim.g.doom_one_plugin_indent_blankline = true
            vim.g.doom_one_plugin_vim_illuminate = false
            vim.g.doom_one_plugin_lspsaga = false
        end,
        config = function()
            vim.cmd("colorscheme doom-one")
        end,
    })

    -- Indentation guide
    use "lukas-reineke/indent-blankline.nvim"

    use 'kyazdani42/nvim-web-devicons'

    use({
        'NTBBloodbath/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        config = function()
            require('galaxyline.themes.eviline')
        end,
        -- some optional icons
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    })

    -- Enable/disable transparent background
    use 'xiyaowong/transparent.nvim'

    -- Key combo completion menu
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            -- require("which-key").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- }
        end
    }


    -- Editing stuff
    -- Surround
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    -- Commment lines with motions
    use 'tpope/vim-commentary'

    -- Comment Tag Highlight
    --  TODO:
    --  FIXME: etc...
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }

    -- Business stuff
    -- Setup LSP the easy way apparently
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Syntax tree for your code
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'nvim-treesitter/playground'

    -- Nice undo features with a full undo history that can
    -- be viewed like a commit history
    use 'mbbill/undotree'

    -- Git Integration
    use 'tpope/vim-fugitive'

    -- Better netrw settings and fixes
    -- use 'tpope/vim-vinegar'

    -- File tree
    use {
        'nvim-tree/nvim-tree.lua',
        -- requires = {
        -- 'nvim-tree/nvim-web-devicons', -- optional
        -- }
    }

    -- Different colored open and close delimiters based on depth
    use 'HiPhish/nvim-ts-rainbow2'

    -- Markdown browser preview
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })
end)
