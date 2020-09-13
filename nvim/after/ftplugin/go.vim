compiler go

noremap ,g :GoRun ./%<cr>
noremap ,b :GoBuild<cr>
noremap ,t :!make test<cr>

setlocal omnifunc=v:lua.vim.lsp.omnifunc

nnoremap <buffer> <space> :silent make <bar> redraw!<CR>

" Run goimports along gofmt on each save
let g:go_fmt_command = "goimports"

" Automatically get signature/type info for object under cursor
let g:go_auto_type_info = 1

" This only works not for vim-go
" inoremap <buffer> . .<C-x><C-o>

set autowrite

" Not using these really
" https://github.com/fatih/vim-go/wiki/Tutorial
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" I either want it off, or the trigger higher
let g:completion_trigger_keyword_length = 3 " default = 1
let g:completion_enable_auto_popup = 0

" let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_insert_delay = 0
let g:diagnostic_auto_popup_while_jump = 0

let g:completion_enable_auto_signature = 0

let g:go_highlight_extra_types = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

let g:go_metalinter_deadline = "5s"

let g:go_auto_type_info = 0

let g:go_auto_sameids = 0
