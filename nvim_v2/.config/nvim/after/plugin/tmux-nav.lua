local m_set = vim.keymap.set
local opts = { silent = true }

m_set("n", "<M-h>", "<cmd> TmuxNavigateLeft<CR>", opts)
m_set("n", "<M-j>", "<cmd> TmuxNavigateUp<CR>", opts)
m_set("n", "<M-k>", "<cmd> TmuxNavigateDown<CR>", opts)
m_set("n", "<M-l>", "<cmd> TmuxNavigateRight<CR>", opts)

