return {
  'rebelot/kanagawa.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    vim.o.background = 'dark' -- or "light" for light mode. Don't every try light with lotus

    ---@diagnostic disable-next-line: missing-fields
    require('kanagawa').setup {
      styles = {
        comments = { italic = false }, -- Disable italics in comments
      },
      dimInactive = true,
      overrides = function(--[[ colors ]])
        -- local theme = colors.theme
        return {
          NoiceCmdlineIcon = { link = 'CursorLineNr' },
          NoiceCmdlinePopupBorder = { link = 'TelescopeBorder' },
          NoiceCmdlinePopupTitle = { link = 'TelescopeTitle' },
        }
      end,
    }

    vim.cmd.colorscheme 'kanagawa-wave'
  end,
}
