# TODO

- Add keymap for fzf to fuzzy find in custom dir (like theprimeagen in his dev workflow vid)

## New todo

- [x] Add mapping to collapse and open (vim has this integrated I think, used nvim-ufo)
  - [ ] on change, ufo closes everything?
  - [ ] remove the weird numbers and lines in the icons col. There's an issue in their github
- [ ] In telescope, there's a [git_branches picker](https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/lua/tj/telescope/setup.lua#L160C5-L160C17)??
  - [ ] Look into the functions, to see if there's any that I'd use quickly
- [ ] How to undo close of buffer/file
- [ ] Live grep with a ignore glob list (like vscode search where we can exclude files from the search...)
- [ ] Debugging <https://www.youtube.com/watch?v=RziPWdTzSV8>
- [ ] Change the tmux status line to match the colors of vim/lualine [interesting](https://www.reddit.com/r/unixporn/comments/10qovte/kanagawa_neovim_obsidian_chromebrave_kitty_tmux/)
- [ ] Have markdown autocompletes, like the vscode extension, such as creating a new checkbox on entering a new line
- [ ] How to close another session in tmux. For example I open two sessions, but I no longer need the other one. So I open the session viewer and wanted to just select and kill selected with a key combo or so
- [ ] Auto close html tags
- [ ] How to open a buffer across a specific number of buffers. For example I have 3 vertical, but want to open an horizontal buffer that spans only the two left ones.
- [ ] How to expand only the selected buffer and not all the vertical buffers and what not.
- [ ] How to add numbers to buffers so that I can just jump to whichever I want on the pane and not the current buffer.
- [ ] Do something with this, so that it's hidden instead of closing
   CTRL-W o                                                CTRL-W_o E445
   CTRL-W CTRL-O                                   CTRL-W_CTRL-O :on :only
                   Make the current window the only one on the screen. All other
                   windows are closed.  For {count} see the :quit command
                   above :count_quit.

                   When the 'hidden' option is set, all buffers in closed windows
                   become hidden.

                   When 'hidden' is not set, and the 'autowrite' option is set,
                   modified buffers are written.  Otherwise, windows that have
                   buffers that are modified are not removed, unless the [!] is
                   given, then they become hidden.  But modified buffers are
                   never abandoned, so changes cannot get lost. 
- [ ] ~~How to search highlighted section with telescope live grep~~?
- [ ] In the gitsigns blame, how do I open the link? I think I was looking at vim-fugitive and the browse about this
- [ ] How to view git file history
- [ ] Colorized brackets pairs
- [ ] Add scrollbars to telescope pickers
- [ ] How to make git push async/non blocking. Since I don't have any indication that it's pushing I don't know what it's doing while blocked, and if it's related to pushing
- [ ] Fix grep_string in telescope
- [ ] Fix snippets not jumpting to the next choice or wtv it's called. Not sure why the keymap isn't working. Basically what happened in vscode and snippets where we used tab to go to the next "to fill" section
- [ ] How to get the preview for the class name in less files (scss too perhaps) when nested?
- [ ] How to preview markdown files
- [ ] Fix errors on saving yml files <https://github.com/redhat-developer/yaml-language-server/issues/912>
- [ ] Figure out how to use emmet language (eg: div.class*2)
- [ ] I haven't figured it out, but sometimes Ctrl-C doesn't work the first time. Maybe something else is using it? Something tells me its fucking ufo... If I spam it, errors in ufo show up
- [ ] In a snippet, how do I go to the next "to fill" section?
- [ ] Why are block comments weird in JS (at least JS)

### Unsure

- [ ] Maybe change the fast wrap map? It's meta-e

### Completed

- [ ] ~~Change the git status icons. I got good ones in the old config~~ Not possible :/

- [x] Fix git asking for password or pulling or wtv it does everytime I open nvim
- [x] Get the files to show on top of the picker. No clue :(.  It's telescope, not the extension
- [x] Disable the backspace going up a folder if there are no keywords
- [x] Make sure that the lsp is how I like
  - [x] C-Space: Should show completion options
  - [x] CR/Tab/C-y should all allow the selected item to be chosen
  - [x] Refactoring (lsp handles)<https://youtu.be/NL8D8EkphUw?si=NgJM77W51MOc8qTE&t=1414>
- [x] Get highlight on note, todo, bug, dev_only. <https://github.com/folke/todo-comments.nvim>
- [x] Icons are not working for navic winbar. nerdfix seems like a way to test what are the options. Just needed to update the font
- [x] <https://youtu.be/LKW_SUucO-k?si=43b5USFLU3ww_86n&t=40> Has a cool layout for telescope. Maybe this is what I need to change how the file browser looks as well
- [x] Auto opening closing (){} etc
- [x] Comment/uncomment selected lines
- [x] Change the formatting keymap
- [x] Keep navic from making the page jump
- [x] Mapping to open file browser in current dir and not prj dir
- [x] Format selection, full file formatting, like option + shift + a <https://www.youtube.com/watch?v=ybUE4D80XSk>
- [x] Keymap for single line comment
- [x] Comment for multi line commment
- [x] A way to copy relative and absolute paths of the file I've selected in the file browser
- [x] How to switch layouts. For example, I have two verticals, but I want to put the left on the right and vice versa. Same with horizontal
- [x] ~~Path auto complete.~~It supposedly already does this
- [x] Configure gitsign hunks. I think this allows for staging sections
- [x] Keymap to increase size of current buffer, in either direction
- [x] Check if the lsp-inlayhints are working. This shows like an IDE with the options. I didn't really find it that useful
- [x] Put the notify at the bottom?
- [x] How to move just the screen and not cursor. I've seen it done on a nvim video
- [x] How to duplicate current buffer in both directions. Ctrl W + v works, don't know for horizontal
- [x] How to open a tmux session from within vim. (Just run the command)
- [x] When selection the auto complete, if it's a function, it's putting () at the end of it, to call. Don't want that :/
- [x] Telescope explorer (search files & the whole file browser extension) not ignoring . files
- [x] Work with eslint (linting)
- [x] Work with prettier
- [x] Highlight current row that cursor is in (<https://www.youtube.com/watch?v=6ivxInASPdM>)
