vim.o.background = "dark" -- or "light" for light mode. Don't every try light with lotus

require('kanagawa').setup({
    dimInactive = true,
    overrides = function(--[[ colors ]])
        -- local theme = colors.theme

        return {
            NoiceCmdlineIcon = { link = 'CursorLineNr' },
            NoiceCmdlinePopupBorder = { link = 'TelescopeBorder' },
            NoiceCmdlinePopupTitle = { link = 'TelescopeTitle' }
        }
    end,
})

vim.cmd("colorscheme kanagawa-wave")
