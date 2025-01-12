local lsp_zero = require('lsp-zero')
local mason_null_ls = require('mason-null-ls')

-- Ensure capabilities and on_attach are properly defined
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    -- Keybindings for LSP actions
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end

-- Mason setup
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'html', 'ts_ls', 'tailwindcss', 'pyright', 'gopls', 'cssls', 'eslint' },
    handlers = {
        lsp_zero.default_setup,
    },
})

mason_null_ls.setup({
    ensure_installed = { 'mypy', 'isort', 'black', 'eslint_d', 'prettierd' }, -- List of formatters/linters
    automatic_setup = true,                                                   -- Automatically configure installed tools
})

-- CMP setup
local cmp = require('cmp')
local cmp_mappings = lsp_zero.defaults.cmp_mappings({
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

cmp.setup({
    mapping = cmp_mappings,
})
