return {
  'christoomey/vim-tmux-navigator',
  cmd = {
    'TmuxNavigateLeft',
    'TmuxNavigateDown',
    'TmuxNavigateUp',
    'TmuxNavigateRight',
    'TmuxNavigatePrevious',
    'TmuxNavigatorProcessList',
  },
  -- TODO: Figure out if this clashes with anything
  keys = {
    { '<M-H>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
    { '<M-J>', '<cmd><C-U>TmuxNavigateDown<cr>' },
    { '<M-K>', '<cmd><C-U>TmuxNavigateUp<cr>' },
    { '<M-L>', '<cmd><C-U>TmuxNavigateRight<cr>' },
    { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
  },
}
