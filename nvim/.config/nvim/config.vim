
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           
let g:VM_maps['Find Subword Under'] = '<C-d>'           

let g:VM_mouse_mappings = 1

let g:floaterm_width=1.0
let g:floaterm_height=1.0

let g:highlightedyank_highlight_duration = 100 
highlight HighlightedyankRegion cterm=reverse gui=reverse

set guifont=Space\ Mono\ for\ Powerline:h10

colorscheme tokyonight 

autocmd FileType cpp let b:caw_oneline_comment = '//'
autocmd FileType cpp let b:caw_wrap_oneline_comment = '//'
