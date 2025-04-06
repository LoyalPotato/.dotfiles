-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

require 'lazy-bootstrap'

require 'lazy-setup'

-- Load dotenv, if it exists
-- require('custom.dotenv').eval(vim.fs.joinpath(vim.fn.stdpath 'config', '.env')) ---@diagnostic disable-line: param-type-mismatch
-- change_detection = {
--   notify = false,
-- },
