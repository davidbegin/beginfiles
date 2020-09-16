
" Y8b Y88888P ,e,                   e88'Y88
"  Y8b Y888P   "  888 888 8e       d888  'Y   e88 88e
"   Y8b Y8P   888 888 888 88b 888 C8888 eeee d888 888b
"    Y8b Y    888 888 888 888      Y888 888P Y888 888P
"     Y8P     888 888 888 888       "88 88"   "88 88"


compiler go

set autowrite

" https://github.com/fatih/vim-go/wiki/Tutorial
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
nnoremap <buffer> <space> :silent make <bar> redraw!<CR>
nnoremap <leader>rn :GoRename<CR>
noremap ,g :GoRun ./%<cr>
noremap ,b :GoBuild<cr>
noremap ,t :!make test<cr>

let g:go_highlight_extra_types = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

let g:go_metalinter_deadline = "5s"

" Automatically get signature/type info for object under cursor
let g:go_auto_type_info = 0
let g:go_auto_sameids = 0

" Run goimports along gofmt on each save
let g:go_fmt_command = "goimports"
nnoremap H <cmd> lua vim.lsp.buf.hover()<CR>
