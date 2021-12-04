let g:ale_fixers = ['clangtidy']

nnoremap <buffer> <leader>r <cmd>w<CR><cmd>FloatermNew g++ -o main % && ./main && rm main<CR>
