vim.keymap.set("n", "<leader>fe", vim.cmd.Ex, { desc = "[F]ile [E]xplorer" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- This is what primeagen uses to switch projects
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

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

vim.keymap.set("n", "<leader><leader>", "<cmd>so<CR>")

-- Formatting

local fmter = function()
	local opts = {
		lsp_fallback = true,
	}
	require("conform").format(opts, function()
		vim.notify("Formatted", "info")
	end)
end

vim.keymap.set("n", "<leader>fa", fmter, { desc = "[F]ormat [A]ll" })
vim.keymap.set("v", "<leader>fs", fmter, { desc = "[F]ormat [S]ection" })
-- this is for lsp_config <F3>: Format code in current buffer. See :help vim.lsp.buf.format().

-- window management

--
vim.api.nvim_set_keymap("n", "<leader>ve", ":vertical resize +10<CR>", { noremap = true, desc = "[V]ertical [E]xpand" })
vim.api.nvim_set_keymap(
	"n",
	"<leader>vt",
	":vertical resize -10<CR>",
	{ noremap = true, desc = "[V]ertical [T]runcate" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>he",
	":horizontal resize +10<CR>",
	{ noremap = true, desc = "[H]orizontal [E]xpand" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>ht",
	":horizontal resize -10<CR>",
	{ noremap = true, desc = "[H]orizontal [T]runcate" }
)

-- NOTE: Some helpful maps
-- This flips the current buffer according to the action
-- Ctrl-W [H|J|K|L]
-- h split (Has the mappings for how to split vertical and horizontal)
-- Ctrl-y and Ctrl-e only change the cursor position if it would be moved off screen.
