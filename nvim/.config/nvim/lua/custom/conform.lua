require('conform').setup {
  notify_on_error = false,
  format_on_save = function(bufnr)
    -- Disable "format_on_save lsp_fallback" for languages that don't
    -- have a well standardized coding style. You can add additional
    -- languages here or re-enable it for the disabled ones.
    local disable_filetypes = { c = true, cpp = true }
    if disable_filetypes[vim.bo[bufnr].filetype] then
      return nil
    else
      return {
        timeout_ms = 500,
        lsp_format = 'fallback',
      }
    end
  end,
  formatters_by_ft = {
    lua = { 'stylua' },
    -- Conform will run multiple formatters sequentially
    python = { 'isort', 'black' },
    -- Use a sub-list to run only the first available formatter
    go = { 'goimports', 'gofmt' },

    javascript = { 'prettierd', 'prettier' },
    javascriptreact = { 'prettierd', 'prettier' },
    typescript = { 'prettierd', 'prettier' },
    typescriptreact = { 'prettierd', 'prettier' },
    json = { 'prettierd' },
  },
}

-- Formatting

local fmter = function()
  local opts = {
    lsp_fallback = true,
  }
  require('conform').format(opts, function()
    vim.notify('Formatted', vim.log.levels.INFO)
  end)
end

vim.keymap.set('n', '<leader>fa', fmter, { desc = '[F]ormat [A]ll' })
vim.keymap.set('v', '<leader>fs', fmter, { desc = '[F]ormat [S]ection' })
-- this is for lsp_config <F3>: Format code in current buffer. See :help vim.lsp.buf.format().
