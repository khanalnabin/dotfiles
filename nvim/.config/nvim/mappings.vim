" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" nnoremap   <silent>   <C-t>   :FloatermToggle<CR>
" tnoremap   <silent>   <C-t>   <C-\><C-n>:FloatermToggle<CR>

inoremap <silent> <C-l> <Esc><C-w>li
inoremap <silent> <C-h> <Esc><C-w>hi


nnoremap J m`YP``
vnoremap J m`YP``v``

nnoremap f ^
vnoremap f ^

nnoremap F $
vnoremap F $

nnoremap X dd
vnoremap X x

nnoremap Y y$

inoremap , ,<c-g>u
inoremap <space>  <space><c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

nmap <silent>  <M-;> <Plug>(caw:hatpos:toggle)<CR>
vmap <silent>  <M-;> <Plug>(caw:hatpos:toggle)<CR>
imap <silent>  <M-;> <Esc><Plug>(caw:hatpos:toggle)<CR>i

nnoremap <C-a>  G$vgg^
nnoremap <C-t> <cmd>FloatermToggle<CR>
tnoremap <C-t> <C-\><C-n><cmd>FloatermToggle<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

imap <M-BS> <C-W>

nnoremap <silent> H  <cmd>bprevious<CR>
nnoremap <silent> L <cmd>bnext<CR>


nnoremap <silent> <leader>w <cmd>w<CR>

" nnoremap <silent> <C-n> <cmd>ALENextWrap<CR>
" nnoremap <silent> <C-p> <cmd>ALEPreviousWrap<CR>
" 
" nnoremap <silent> K <cmd>ALEHover<CR>
" inoremap <silent><C-Space> <C-\><C-O>:ALEComplete<CR>

nnoremap <silent> <leader>bd <cmd>bdelete<CR>

nnoremap <silent>  <C-C> "+y
vnoremap <silent>  <C-C> "+y
nnoremap <silent>  <C-X> "+x
vnoremap <silent>  <C-X> "+x

nnoremap <silent> <leader>gg <cmd>LazyGit<CR>

nnoremap <leader>z za

nnoremap gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>

nnoremap <silent> <C-k> :lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>

nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_next()<cr>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_prev()<cr>




