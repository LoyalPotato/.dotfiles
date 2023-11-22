-- Defaults

local navic = require('nvim-navic')

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {
            'encoding',
            'fileformat',
            'filetype',
            -- {
            --     require("noice").api.status.search.get,
            --     cond = require("noice").api.status.search.has,
            --     color = { fg = "#ff9e64" },
            -- }
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {
        lualine_c = {
            {
                function()
                    if navic.is_available() then
                        local loc = navic.get_location()
                        if (loc == nil or loc == '') then
                            return '' -- TODO: Show filename or smt. This is just so that the buffer isn't jumping up and down
                        end
                        return loc
                    end
                end,
                draw_empty = true,
            }
        }
    },
    extensions = {}
}

