vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.g.nvim_tree_icons = {
   git = {
        unstaged = "",
        staged = "S",
        untracked = "U"
   }
}

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  filters = {
    dotfiles = false,
  },
  view = {
    --adaptive_size = true,
    width = 30,
    hide_root_folder = false,
    side = 'left',
    preserve_window_proportions = false,
    mappings = {
      custom_only = false,
      list = {
          { key = "u", action = "dir_up" },
          { key = { "l", "<CR>" }, cb = tree_cb "edit"},
          { key = "h", cb = tree_cb "close_node"},
          { key = "v", cb = tree_cb "vsplit"},
          { key = "<C-i>", cb = tree_cb "toggle_file_info"}
      }
    },
    number = false,
    relativenumber = true,
    signcolumn = "yes"
  },
  renderer = {
    group_empty = true,
  },
  actions = {
    open_file = {
      quit_on_open = true,
      resize_window = false,
    }
  },
  log = {
    enable = false,
    types = {
      all = false,
      config = false,
      git = false,
    },
  },
})

vim.cmd('highlight NvimTreeGitDirty guifg=#fabd2f gui=NONE')

-- Keymaps

vim.keymap.set("n", "<leader>ttg", vim.cmd.NvimTreeToggle)
