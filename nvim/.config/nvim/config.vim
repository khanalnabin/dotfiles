
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           
let g:VM_maps['Find Subword Under'] = '<C-d>'           

let g:VM_mouse_mappings = 1

let g:floaterm_width=1.0
let g:floaterm_height=1.0

let g:highlightedyank_highlight_duration = 100 
highlight HighlightedyankRegion cterm=reverse gui=reverse

set foldmethod=syntax
set foldlevel=99
let g:anyfold_fold_comments=1
hi Folded term=NONE cterm=NONE


augroup folding
  autocmd!
  au FileType * AnyFoldActivate
  au BufWritePre *.* lua vim.lsp.buf.formatting()
augroup END

let g:onedark_style='darker'
colorscheme onedark
