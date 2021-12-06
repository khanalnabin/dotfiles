let g:ale_enabled=1
let g:ale_completion_enabled= 1
let g:ale_fixers = ['clang-format']
let g:ale_linters={'cpp':['clang', 'ccls']}

nnoremap <buffer> <leader>r <cmd>w<CR><cmd>FloatermNew g++ -o main % && ./main && rm main<CR>
