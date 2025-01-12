local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        {
            'rose-pine/neovim',
            name = 'rose-pine',
        },
        {
            'nvim-telescope/telescope.nvim',
            tag = '0.1.4',
            dependencies = { { 'nvim-lua/plenary.nvim' } }
        },
        {
            'nvim-treesitter/nvim-treesitter',
            build = ':TSUpdate' -- Correct use of build key
        },
        { 'mbbill/undotree' },
        { 'nvim-tree/nvim-web-devicons' },
        { 'editorconfig/editorconfig-vim' },
        { 'numToStr/Comment.nvim' },
        {
            'folke/todo-comments.nvim', -- Fixed the plugin name
            dependencies = { "nvim-lua/plenary.nvim" },
        },
        {
            'nvim-lualine/lualine.nvim',
            dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
        },
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x',
            dependencies = {
                {
                    'williamboman/mason.nvim',
                },
                { 'williamboman/mason-lspconfig.nvim' },
                { 'neovim/nvim-lspconfig' }, -- LSP Support
                { 'hrsh7th/nvim-cmp' },      -- Autocompletion
                { 'hrsh7th/cmp-nvim-lsp' },  -- LSP source for nvim-cmp
                { 'L3MON4D3/LuaSnip' },      -- Snippet engine
            }
        },
        {
            'jay-babu/mason-null-ls.nvim',
            dependencies = {
                'williamboman/mason.nvim',
                'jose-elias-alvarez/null-ls.nvim',
            },
        },
        {
            "jose-elias-alvarez/null-ls.nvim", -- Integration for formatters (Black, isort)
            dependencies = { "nvim-lua/plenary.nvim" },
        },
        {
            'echasnovski/mini.nvim',
            branch = 'stable'
        }
    },
    install = { colorscheme = { "rose-pine" } }, -- Set rose-pine as default colorscheme
    checker = { enabled = true },                -- Automatically check for plugin updates
})

vim.cmd("colorscheme rose-pine")
