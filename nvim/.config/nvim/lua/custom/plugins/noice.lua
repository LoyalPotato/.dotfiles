return {
  'folke/noice.nvim',
  requires = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  config = function()
    require 'custom.noice'
  end,
}
