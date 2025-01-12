require('lspconfig').pyright.setup {}

-- Create a group for LSP auto-formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- Null-ls setup
local null_ls = require("null-ls")

-- Configure null-ls with formatters
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettierd.with({
            timeout = 2000,
        }),
        null_ls.builtins.formatting.black.with({
            extra_args = { "--fast" },
            timeout = 2000,
        }),
        null_ls.builtins.formatting.isort.with({
            timeout = 2000,
        }),
        null_ls.builtins.diagnostics.mypy.with({
            extra_args = { "--ignore-missing-imports" },
            diagnostics_postprocess = function(diagnostic)
                diagnostic.severity = vim.diagnostic.severity.WARN
            end,
        }),
    },

    -- Attach format on save functionality
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- Perform formatting asynchronously
                    vim.lsp.buf.format({
                        bufnr = bufnr,
                        async = true, -- Use asynchronous formatting
                    })
                end,
            })
        end
    end,
})

-- Optionally, disable format on save for large files
-- vim.api.nvim_create_autocmd("BufWritePre", {
--     callback = function()
--         local max_size = 1024 * 100 -- 100 KB
--         local stats = vim.loop.fs_stat(vim.fn.expand("<afile>"))
--         if stats and stats.size > max_size then
--             vim.notify("Skipping format on save for large file", vim.log.levels.WARN)
--         end
--     end,
-- })
