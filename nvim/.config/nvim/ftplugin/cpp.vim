let g:ale_fixers = ['clang-format']

nnoremap <buffer> <leader>r <cmd>w<CR><cmd>FloatermNew g++ -o main % && ./main && rm main<CR>
