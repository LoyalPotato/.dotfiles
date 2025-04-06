vim.g.have_nerd_font = true

-- :h option-list

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.signcolumn = 'yes'

vim.opt.scrolloff = 8

-- Not needed since it's done in the status line
vim.opt.showmode = false

-- Save undo history
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

-- Highlights line where cursor is at
vim.opt.cursorline = true

vim.opt.termguicolors = true

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true

-- Smart case enables using patterns for searching with case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 250

-- Reduce time to wait for mapped sequence to complete
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

-- How neovim displays some whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live
vim.opt.inccommand = 'split'

-- Opens a dialog that prompts to save file, in case we do an operation that would fail due to unsaved
-- changes (like `:q`)
vim.opt.confirm = true

vim.opt.wrap = false

-- From what I understand, it doesn't jump around when searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
