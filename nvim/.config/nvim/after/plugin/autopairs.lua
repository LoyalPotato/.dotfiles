local npairs = require("nvim-autopairs")

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
    }
})

-- This plugin supports fast wrap :0

-- Before        Input                    After         Note
-----------------------------------------------------------------
-- (|foobar      <M-e> then press $       (|foobar)
-- (|)(foobar)   <M-e> then press q       (|(foobar))
-- (|foo bar     <M-e> then press qh      (|foo) bar
-- (|foo bar     <M-e> then press qH      (foo|) bar
-- (|foo bar     <M-e> then press qH      (foo)| bar    if cursor_pos_before = false
