-- Jedi settings
vim.g.jedi_show_call_signatures = "on_cursorHold"
vim.g.jedi_environment_path = ".venv"
-- set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
-- set to "ruff_lsp" to use the old lsp implementation version.
vim.g.lazyvim_python_ruff = "ruff"
vim.opt.termguicolors = false
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.virtualedit = "block"
vim.opt.ignorecase = true
--search
vim.opt.smartcase = true
vim.opt.hlsearch = true -- highlights search results
vim.opt.incsearch = true -- searches as you type
vim.opt.wrapscan = true
vim.opt.wrap = false
vim.opt.backup = false -- disable backup files
vim.opt.swapfile = false -- disable swap files
vim.opt.cursorline = true
--vim.opt.cursorcolumn = true
vim.opt.signcolumn = "yes"
vim.opt.backspace = "indent,eol,start"
vim.opt.splitright = true
vim.opt.splitbelow = false

--vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded", width = 20, height = 10 })
--vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
