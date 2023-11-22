local action_state = require "telescope.actions.state"

require("telescope").setup {
    defaults = {
        winblend = 0,
        sorting_strategy =  "ascending",

        layout_strategy = "flex",
        layout_config = {
            -- These are the generics
            width = 0.95,
            height = 0.85,
            prompt_position = "top",

            vertical = {
                mirror = true,
            },

            flex = {
                horizontal = {
                    preview_width = function(_, cols, _)
                        if cols > 200 then
                            return math.floor(cols * 0.6)
                        else
                            return math.floor(cols * 0.5)
                        end
                    end,
                },
                vertical = {
                    preview_height = 0.5,
                }
            },
        },

        color_devicons = true,
        mappings = {
            ["i"] = {
                -- https://github.com/nvim-telescope/telescope-file-browser.nvim/issues/191#issuecomment-1648280373
                ["<C-y>"] = function()
                    local path = require("telescope.actions.state").get_selected_entry().value
                    local clipboardOpt = vim.opt.clipboard:get()
                    local useSystemClipb = #clipboardOpt > 0 and clipboardOpt[1]:find("unnamed")
                    local reg = useSystemClipb and "+" or '"'
                    vim.fn.setreg(reg, path)
                    -- notify has been overriden in notify.lua
                    vim.notify(path, "info", {title = "COPIED"})
                end,
            }
        }
    },
    extensions = {
        file_browser = {
            -- theme = "ivy", -- This puts it in the bottom instead of center
            auto_depth = true,
            hidden = { file_browser = true, folder_browser = true },
            -- unstaged = "", -- can't use :(
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    -- Overrides the issue with delete going up one
                    ["<bs>"] = function(prompt_bufnr)
                        local current_picker = action_state.get_current_picker(prompt_bufnr)

                        if current_picker:_get_prompt() ~= "" then
                            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<bs>", true, false, true), "tn", false)
                        end
                    end
                }
            }
        },
    },
}

-- Keymaps

local builtin = require('telescope.builtin')

-- TODO: Check which ones I'll actually need

-- Regular Telescope
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sG', ':LiveGrepGitRoot<cr>', { desc = '[S]earch by [G]rep on Git Root' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
-- vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
--
-- These functions seem interesting
-- builtin.git_commits({opts})                  *telescope.builtin.git_commits()*
-- builtin.git_branches({opts})    *telescope.builtin.git_branches()*
-- 

-- file_browser 

-- reference
--[[ 
mappings = {
    ["i"] = {
        ["<A-c>"] = fb_actions.create,
        ["<S-CR>"] = fb_actions.create_from_prompt,
        ["<A-r>"] = fb_actions.rename,
        ["<A-m>"] = fb_actions.move,
        ["<A-y>"] = fb_actions.copy,
        ["<A-d>"] = fb_actions.remove,
        ["<C-o>"] = fb_actions.open,
        ["<C-g>"] = fb_actions.goto_parent_dir,
        ["<C-e>"] = fb_actions.goto_home_dir,
        ["<C-w>"] = fb_actions.goto_cwd,
        ["<C-t>"] = fb_actions.change_cwd,
        ["<C-f>"] = fb_actions.toggle_browser,
        ["<C-h>"] = fb_actions.toggle_hidden,
        ["<C-s>"] = fb_actions.toggle_all,
        ["<bs>"] = fb_actions.backspace,
    },
    ["n"] = {
        ["c"] = fb_actions.create,
        ["r"] = fb_actions.rename,
        ["m"] = fb_actions.move,
        ["y"] = fb_actions.copy,
        ["d"] = fb_actions.remove,
        ["o"] = fb_actions.open,
        ["g"] = fb_actions.goto_parent_dir,
        ["e"] = fb_actions.goto_home_dir,
        ["w"] = fb_actions.goto_cwd,
        ["t"] = fb_actions.change_cwd,
        ["f"] = fb_actions.toggle_browser,
        ["h"] = fb_actions.toggle_hidden,
        ["s"] = fb_actions.toggle_all,
    },
},
]]

local fb = require "telescope".extensions.file_browser

vim.keymap.set("n", "<leader>fbr", fb.file_browser, { desc = '[F]ile [B]rowser [R]oot'})
vim.keymap.set("n", "<leader>cfb", function() return fb.file_browser({ path = "%:p:h"}) end, { desc = '[C]urrent [F]ile [B]rowser'})


-- Extension Loading

require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
require("telescope").load_extension("noice")
