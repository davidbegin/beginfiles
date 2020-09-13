nnoremap <leader>m0 :marks 0123456789<CR>
nnoremap <leader>mA :marks ABCDEFGHIJKLMNOPQRSTUVWYXZ<CR>
nnoremap <leader>ma :marks abcdefghijklmnopqrstuvwyxz<CR>
nnoremap <leader>md :call DeleteAllMarks()<CR>
nnoremap <leader>mg :marks ABCDEFGHIJKLMNOPQRSTUVWYXZ<CR>
nnoremap <leader>mm :set scl=no<CR>
nnoremap <leader>ms :marks \"\[\]\^\.\<\>\'\`<CR>

" imap <c-u> <esc>gUiwA
" noremap <c-u> gUiw
" The final ma onlu works because it's vim-signature
" nmap <c-u> magUiw`a:delm a<CR>
" nmap <c-u> m"gUiw`"
nmap <c-u> m`gUiw``
