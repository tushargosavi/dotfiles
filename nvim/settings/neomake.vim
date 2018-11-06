autocmd! BufWritePost * Neomake
nnoremap <Leader>l :lopen<CR>

call neomake#configure#automake('w')
let g:neomake_open_list = 2

