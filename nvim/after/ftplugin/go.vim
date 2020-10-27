
" Y8b Y88888P ,e,                   e88'Y88
"  Y8b Y888P   "  888 888 8e       d888  'Y   e88 88e
"   Y8b Y8P   888 888 888 88b 888 C8888 eeee d888 888b
"    Y8b Y    888 888 888 888      Y888 888P Y888 888P
"     Y8P     888 888 888 888       "88 88"   "88 88"


compiler go

set autowrite

" https://github.com/fatih/vim-go/wiki/Tutorial map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>z :cclose<CR>
nnoremap <leader>a :GoAlternate<CR>

" Not sure about this
nnoremap <buffer> <leader>c :silent make <bar> redraw!<CR>
nnoremap <buffer> <leader>t :silent make <bar> redraw!<CR>

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

let g:go_doc_keywordprg_enabled=0
let g:go_diagnostics_enabled=0

" This is not that robust
" Only just happens to work with the current pattern
" I am using in beginsounds
function! GoCmd()
  let cwd = expand("%:p:h")
  let fname = split(cwd, '/')[-1]
  return (cwd . '/' . fname)
endfunction


" map <leader>gh :call VimuxRunCommand("clear; go build cmd/server/main.go && ./main")<CR>
" map <leader>gh :call VimuxRunCommand("clear; go build . && " . GoCmd())<CR>
" map <leader>gh :call VimuxRunCommand("clear; go build . && ./beginsounds")<CR>
map <leader>gh :call VimuxRunCommand("clear; go build . && ./main")<CR>
map <Leader>gj :VimuxCloseRunner<CR>
map <leader>gn :GolangTestFocused<CR>
map <leader>gm :call VimuxRunCommand("clear; gotest ./...")<CR>
map <leader>gk :call VimuxRunLastCommand()<CR>


" nnoremap <leader>k :GoDiagnostics<CR>
" nnoremap <leader>j :PrevDiagnostic<CR>
" map <leader>gk :call VimuxRunCommand("clear; go build consumer.go && " . "./consumer -f $HOME/.confluent/librdkafka.config -t demo-topic-1")<CR>
" map <leader>gh :call VimuxRunCommand("clear; go build producer.go && " . "./producer -f $HOME/.confluent/librdkafka.config -t demo-topic-1")<CR>

" vim-test
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
