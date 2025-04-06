local lint = require 'lint'
lint.linters_by_ft = {
  markdown = { 'vale' },
  go = { 'golangcilint' },
  javascript = { 'eslint_d' },
  typescript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  typescriptreact = { 'eslint_d' },
  json = { 'jsonlint' },
}

--[[
--I don't know where the filetype list are, but all I could find was a link (https://github.com/vim/vim/issues/4830)
--pointing to this: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocumentItem
]]
local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

vim.api.nvim_create_autocmd({
  'BufEnter',
  'BufWritePost',
  'InsertLeave' --[[ :h events]],
}, {
  group = lint_augroup,
  callback = function()
    lint.try_lint()
  end,
})
