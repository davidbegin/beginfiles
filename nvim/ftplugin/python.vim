" I am not updating the command, to know about filetype
" I am placing it in a specific directory so it will be loaded
"
" Do I need to add the line, setting *.py to python filetype

" autocmd FileType *.py noremap ,t :w!\|!make t<cr>

noremap ,t :w!\|!make t<cr>
noremap ,p :w!\|!make t<cr>

noremap <leader>bb <cr>ibreakpoint()<cr>
noremap <leader>bl :!black %<cr><Esc>
noremap <leader>fo <cr>i@pytest.mark.focus<cr><Esc>
noremap ,p :w!\|!python3 %<cr>
" noremap ,f :w!\|!make f<cr>
"
set shiftwidth=4
set tabstop=4
set softtabstop

" setlocal path=.,**
setlocal wildignore="*.pyc"

setlocal include=^\\s*import
setlocal define=^\\s*\\<\\(def\\\|class\\)\\>
