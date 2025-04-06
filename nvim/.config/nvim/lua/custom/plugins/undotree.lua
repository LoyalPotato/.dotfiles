return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>utt', vim.cmd.UndotreeToggle, { desc = '[U]ndo [T]ree [T]oggle)' })
  end,
}
