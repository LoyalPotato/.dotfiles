# TODO

- Add keymap for fzf to fuzzy find in custom dir (like theprimeagen in his dev workflow vid)

## New todo

- [x] Fix git asking for password or pulling or wtv it does everytime I open nvim

- [x] Get the files to show on top of the picker. No clue :(.  It's telescope, not the extension
- [ ] ~~Change the git status icons. I got good ones in the old config~~ Not possible :/
- [x] Disable the backspace going up a folder if there are no keywords
- [ ] Make sure that the lsp is how I like
  - [x] C-Space: Should show completion options
  - [x] CR/Tab/C-y should all allow the selected item to be chosen
  - [x] Refactoring (lsp handles)<https://youtu.be/NL8D8EkphUw?si=NgJM77W51MOc8qTE&t=1414>
<!-- 
NOTE: Removed nvim-ufo. Wasn't being worth the trouble
- [ ] Add mapping to collapse and open (vim has this integrated I think)
  - [ ] on change, ufo closes everything...
  - [ ] remove the weird numbers and lines in the icons col. There's an issue in their github -->
- [x] Get highlight on note, todo, bug, dev_only. <https://github.com/folke/todo-comments.nvim>
- [x] Icons are not working for navic winbar. nerdfix seems like a way to test what are the options. Just needed to update the font
- [x] <https://youtu.be/LKW_SUucO-k?si=43b5USFLU3ww_86n&t=40> Has a cool layout for telescope. Maybe this is what I need to change how the file browser looks as well
- [ ] In telescope, there's a [git_branches picker](https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/lua/tj/telescope/setup.lua#L160C5-L160C17)??
  - [ ] Look into the functions, to see if there's any that I'd use quickly
- [x] Auto opening closing (){} etc
- [x] Comment/uncomment selected lines
- [x] Change the formatting keymap
- [x] Keep navic from making the page jump
- [x] Mapping to open file browser in current dir and not prj dir
- [x] Format selection, full file formatting, like option + shift + a <https://www.youtube.com/watch?v=ybUE4D80XSk>
- [x] Keymap for single line comment
- [x] Comment for multi line commment
- [x] A way to copy relative and absolute paths of the file I've selected in the file browser
- [ ] Work with eslint
- [ ] Work with prettier
- [x] ~~Path auto complete.~~It supposedly already does this
- [ ] How to undo close of buffer/file
- [x] How to switch layouts. For example, I have two verticals, but I want to put the left on the right and vice versa. Same with horizontal
- [ ] ~~Live grep with a ignore glob list (like vscode...)~~ Not sure what I meant here
- [ ] Debugging <https://www.youtube.com/watch?v=RziPWdTzSV8>
- [x] Configure gitsign hunks. I think this allows for staging sections
- [x] Keymap to increase size of current buffer, in either direction
- [x] Check if the lsp-inlayhints are working. This shows like an IDE with the options. I didn't really find it that useful
- [x] Put the notify at the bottom?
- [x] How to move just the screen and not cursor. I've seen it done on a nvim video
- [x] How to duplicate current buffer in both directions. Ctrl W + v works, don't know for horizontal
- [ ] How to search files in telescope with glob pattern

### Unsure

- [ ] Maybe change the fast wrap map? It's meta-e
