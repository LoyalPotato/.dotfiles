" Navigation

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-w>V <cmd>vnew<CR>

" Search

nnoremap <leader>sr :%s/\<<C-r><C-w>\>/

" Manipulations

 " Line movements
nnoremap <leader><C-j> <cmd>m .+1<CR>==
nnoremap <leader><C-k> <cmd>m .-2<CR>==
inoremap <C-j> <Esc><cmd>m .+1<CR>==gi
inoremap <C-k> <Esc><cmd>m .-2<CR>==gi
vnoremap <leader><M-j> <cmd>m '>+1<CR>gv=gv " Not working with mac option 
vnoremap <leader><M-k> <cmd>m '<-2<CR>gv=gv " Not working with mac option

 " windows
nnoremap <leader>wse <C-w>=<CR>

" Coc-nvim

" use <CR> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent> <leader>cda  :<C-u>CocList diagnostics<cr>

" Telescope

nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fm <cmd>Telescope treesitter<cr>

" Nvim-tree

nnoremap <leader>ttg :NvimTreeToggle<CR>

" Undotree

nnoremap <leader>utg <cmd>UndotreeToggle<CR>

" Fugitive (Git)

nmap <leader>gs :G<CR>
nmap <leader>gps :Git push<CR>
nmap <leader>gpl :Git pull<CR>
nmap <leader>gc :Git checkout<CR>

nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>
