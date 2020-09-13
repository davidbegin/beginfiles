" let g:completion_enable_auto_popup = 0

" inoremap <silent><expr> <c-p> completion#trigger_completion()

" function! CheckBackSpace() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~ '\s'
" endfunction

" inoremap <silent><expr> <TAB>
"   \ pumvisible() ? "\<C-n>" :
"   \ CheckBackSpace() ? "\<TAB>" :
"   \ completion#trigger_completion()

" " setlocal omnifunc=v:lua.vim.lsp.omnifunc
" " let g:completion_enable_snippet = 'UltiSnips'

" let g:completion_chain_complete_list = [
"     \{'complete_items': ['lsp', 'buffers']},
"     \{'mode': '<c-p>'},
"     \{'mode': '<c-n>'}
" \]
