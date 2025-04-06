vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = '[G]it [S]tatus' })

local group = vim.api.nvim_create_augroup('LoyalPotato_Fugitive', {})
local autocmd = vim.api.nvim_create_autocmd
autocmd('BufWinEnter', {
  group = group,
  pattern = '*',
  callback = function()
    if vim.bo.ft ~= 'fugitive' then
      return
    end

    local bufnr = vim.api.nvim_get_current_buf()
    local opts = { buffer = bufnr, remap = false }
    -- TODO: Review these keymaps
    vim.keymap.set(
      'n',
      '<leader>gp',
      function()
        vim.cmd.Git 'push'
      end,
      vim.tbl_extend('force', opts, {
        desc = '[G]it [P]ush',
      })
    )

    -- rebase always
    vim.keymap.set(
      'n',
      '<leader>gpl',
      function()
        vim.cmd.Git { 'pull', '--rebase' }
      end,
      vim.tbl_extend('force', opts, {
        desc = '[G]it [P]ul[L]',
      })
    )

    -- NOTE: It allows me to easily set the branch i am pushing and any tracking
    -- needed if i did not set the branch up correctly
    vim.keymap.set(
      'n',
      '<leader>gpo',
      ':Git push -u origin ',
      vim.tbl_extend('force', opts, {
        desc = '[G]it [P]ull [O]rigin',
      })
    )
  end,
})
