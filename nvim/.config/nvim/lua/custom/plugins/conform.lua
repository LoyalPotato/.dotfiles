return {
  -- Autoformat
  'stevearc/conform.nvim',
  dependencies = {
    'rcarriga/nvim-notify',
  },
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  config = function()
    require 'custom.conform'
  end,
}
