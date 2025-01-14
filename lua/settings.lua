--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- i keep the default tabstop 4. fuck 8 spaces indenting on random shit
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.g.have_nerd_font = true

vim.opt.conceallevel = 1
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = ''

vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Save undo his/ory
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = false
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
