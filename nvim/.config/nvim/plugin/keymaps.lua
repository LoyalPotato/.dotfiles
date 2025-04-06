local set = vim.keymap.set
local k = vim.keycode

-- From TJ's. Toggle hlsearch with "enter"
set('n', '<CR>', function()
  if vim.v.hlsearch == 1 then
    vim.cmd.nohl()
    return ''
  else
    return k '<CR>'
  end
end, { expr = true })

-- TEST: Taken from TJ's. Need to see if I actually like it or not
-- TODO: Also, want this to be in a specific file for diagnostic?
set('n', ']d', function()
  vim.diagnostic.jump { count = 1, float = true }
end)

set('n', '[d', function()
  vim.diagnostic.jump { count = -1, float = true }
end)

-- Center screen when moving with C-<d|u>
set('n', '<C-d>', '<C-d>zz')
set('n', '<C-u>', '<C-u>zz')

-- Deletes text without affecting the normal registers
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- This is what primeagen uses to switch projects
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

-- Sources current file
vim.keymap.set('n', '<leader><leader>', '<cmd>so<CR>')

--
-- Control split sizing
--

vim.api.nvim_set_keymap('n', '<leader>ve', ':vertical resize +10<CR>', { noremap = true, desc = '[V]ertical [E]xpand' })
vim.api.nvim_set_keymap('n', '<leader>vt', ':vertical resize -10<CR>', { noremap = true, desc = '[V]ertical [T]runcate' })

vim.api.nvim_set_keymap('n', '<leader>he', ':horizontal resize +10<CR>', { noremap = true, desc = '[H]orizontal [E]xpand' })
vim.api.nvim_set_keymap('n', '<leader>ht', ':horizontal resize -10<CR>', { noremap = true, desc = '[H]orizontal [T]runcate' })

-- NOTE: Some helpful maps
-- This flips the current buffer according to the action
-- Ctrl-W [H|J|K|L]
-- h split (Has the mappings for how to split vertical and horizontal)
-- Ctrl-y and Ctrl-e only change the cursor position if it would be moved off screen.

-- Clipboard

-- Copy/paste from system clipboard
-- https://askubuntu.com/a/1533840
set({ 'n', 'x' }, '<leader>cp', '"+y')
set({ 'n', 'x' }, '<leader>cv', '"+p')
-- Delete without changing the registers
set({ 'n', 'x' }, 'x', '"_x')

-- Old one from primeagen
-- set({ 'n', 'v' }, '<leader>y', [["+y]])
-- set({ 'n' }, '<leader>Y', [["+Y]])

-- NOTE: Just a split between mine down low

-- vim.keymap.set('n', '<leader>fe', vim.cmd.Ex, { desc = '[F]ile [E]xplorer' })

-- I believe these are to move the lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')

-- From primeagen
vim.keymap.set('x', '<leader>p', [["_dP]])

-- C-c is more convenient for now
vim.keymap.set('i', '<C-c>', '<Esc>')

-- TODO: Not sure I need this?
-- vim.keymap.set('n', 'Q', '<nop>')

-- quickfix
-- this conflicts with harpoon atm
--[[ vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
]]
-- Don't remember what this does... but it's conflicting with some other one
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Use this to change perms easily
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
