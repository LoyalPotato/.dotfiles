if exists('g:loaded_undotree')
    finish
endif

if !exists('g:undotree_ShortIndicators')
    let g:undotree_ShortIndicators = 0
endif

if !exists('g:undotree_SetFocusWhenToggle')
    let g:undotree_SetFocusWhenToggle = 1
endif

if !exists('g:undotree_TreeNodeShape')
    let g:undotree_TreeNodeShape = ''
endif

if !exists('g:undotree_HighlightChangedText')
    let g:undotree_HighlightChangedText = 0
endif
