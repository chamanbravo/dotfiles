vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4      -- Number of spaces for a tab
vim.opt.softtabstop = 4  -- Number of spaces for <Tab> in insert mode
vim.opt.shiftwidth = 4   -- Number of spaces for auto-indents
vim.opt.expandtab = true -- Convert tabs to spaces

-- Enable smart indentation
vim.opt.smartindent = true

-- Enable line wrapping
vim.opt.wrap = true

-- Disable swap files and backups, enable undo files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("~/.vim/undodir") -- Ensure compatibility
vim.opt.undofile = true

-- Search settings
vim.opt.hlsearch = false -- Disable highlight search
vim.opt.incsearch = true -- Enable incremental search

-- Enable true color support
vim.opt.termguicolors = true

-- Scrolling and display tweaks
vim.opt.scrolloff = 8         -- Keep 8 lines visible around the cursor
vim.opt.isfname:append("@-@") -- Allow '@-' in file names

-- Reduce update time for better responsiveness
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.opt.clipboard = "unnamed"

vim.opt.shada = ""
