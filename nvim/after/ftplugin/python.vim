noremap ,t :w!\|!make t<cr>
noremap ,p :w!\|!make t<cr>

noremap <leader>bb <cr>ibreakpoint()<cr>
noremap <leader>bl :!black %<cr><Esc>
noremap <leader>fo <cr>i@pytest.mark.focus<cr><Esc>
noremap ,p :w!\|!python3 %<cr>
" noremap ,f :w!\|!make f<cr>

" setlocal path=.,**
setlocal wildignore="*.pyc"

setlocal include=^\\s*import
setlocal define=^\\s*\\<\\(def\\\|class\\)\\>

" vim-test
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
