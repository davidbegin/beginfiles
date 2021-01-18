
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
nnoremap <buffer> <leader>u :silent make <bar> redraw!<CR>

" I don't know if theres a good way to call
" :cg after this Make! call
nnoremap <buffer> <leader>t :Make!<CR>
nnoremap <buffer> <leader>y :Dispatch make test<CR>

nnoremap <buffer> <leader>po :DB postgres://localhost:5432/beginsounds4<CR>
nnoremap <buffer> <leader>pi :DB postgres://localhost:5432/test_beginsounds3<CR>

nnoremap <buffer> <leader>bp :DlvToggleBreakpoint<CR>
nnoremap <buffer> <leader>bt :DlvToggleTracepoint<CR>
" nnoremap <buffer> <leader>tp :DlvToggleTracepoint<CR>
nnoremap <buffer> <leader>cl :DlvClearAll<CR>
nnoremap <buffer> <leader>db :DlvDebug<CR>
nnoremap <buffer> <leader>dt :DlvTest<CR>


" Inside of delve CLI, press escape and we use regular Vim style again
tnoremap <Esc> <C-\><C-n>

" :DB g:prod = postgres://user:pass@db.example.com/production_database
let g:testdb="postgres://localhost:5432/test_beginsounds3"
let g:bsdb= "postgres://localhost:5432/beginsounds2"


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
"
map <leader>gy :call VimuxRunCommand("clear; cd playground; go build . && ./playground")<CR>
map <leader>gh :call VimuxRunCommand("clear; go build . && ./beginsounds")<CR>
map <leader>gl :call VimuxRunCommand("clear; go run . ")<CR>
map <Leader>gj :VimuxCloseRunner<CR>

" We have forked and are using gotest instead of go test
" https://github.com/benmills/vimux-golang
map <leader>gn :GolangTestFocused<CR>
map <leader>gm :GolangTestCurrentPackage<CR>

" map <leader>gn :TestNearest<CR>
" map <leader>gm :call VimuxRunCommand("clear; gotest ./...")<CR>
map <leader>gk :call VimuxRunLastCommand()<CR>

" vim-test
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" nnoremap <leader>k :GoDiagnostics<CR>
" nnoremap <leader>j :PrevDiagnostic<CR>
" map <leader>gk :call VimuxRunCommand("clear; go build consumer.go && " . "./consumer -f $HOME/.confluent/librdkafka.config -t demo-topic-1")<CR>
" map <leader>gh :call VimuxRunCommand("clear; go build producer.go && " . "./producer -f $HOME/.confluent/librdkafka.config -t demo-topic-1")<CR>
