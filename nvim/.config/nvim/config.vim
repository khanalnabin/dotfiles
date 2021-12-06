colorscheme edge

let g:lightline = {
     \ 'colorscheme': 'edge',
     \ 'active': {
     \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ],
     \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
	    \            [ 'filetype'] ]
     \ },
     \ 'tabline': {
     \   'left': [ ['buffers'] ],
     \   'right': [ ['close'] ]
     \ },
     \ 'component_expand': {
     \   'buffers': 'lightline#bufferline#buffers',
     \  'linter_checking': 'lightline#ale#checking',
     \  'linter_infos': 'lightline#ale#infos',
     \  'linter_warnings': 'lightline#ale#warnings',
     \  'linter_errors': 'lightline#ale#errors',
     \  'linter_ok': 'lightline#ale#ok',
     \ },
     \ 'component_type': {
     \   'buffers': 'tabsel',
     \     'linter_checking': 'right',
     \     'linter_infos': 'right',
     \     'linter_warnings': 'warning',
     \     'linter_errors': 'error',
     \     'linter_ok': 'right',
     \ }
     \ }
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           
let g:VM_maps['Find Subword Under'] = '<C-d>'           

let g:VM_mouse_mappings = 1

let g:floaterm_width=1.0
let g:floaterm_height=1.0

let g:highlightedyank_highlight_duration = 100 
highlight HighlightedyankRegion cterm=reverse gui=reverse

set foldmethod=indent
set foldlevel=99
let g:anyfold_fold_comments=1
hi Folded term=NONE cterm=NONE


highlight EndOfBuffer ctermfg=black ctermbg=black

augroup folding
  autocmd!
  au FileType * AnyFoldActivate
augroup END


