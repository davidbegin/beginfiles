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
