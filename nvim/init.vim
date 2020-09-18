
" BBBBB   EEEEEEE   GGGG  IIIII NN   NN BBBBB    OOOOO  TTTTTTT
" BB   B  EE       GG  GG  III  NNN  NN BB   B  OO   OO   TTT
" BBBBBB  EEEEE   GG       III  NN N NN BBBBBB  OO   OO   TTT
" BB   BB EE      GG   GG  III  NN  NNN BB   BB OO   OO   TTT
" BBBBBB  EEEEEEE  GGGGGG IIIII NN   NN BBBBBB   OOOO0    TTT

" This is just something I decided I liked aesthically better
source $HOME/.config/nvim/plug_init.vim

set termguicolors                  " Enable GUI colors for the terminal to get truecolor
" set t_Co=256                     " Enable 256 colors

" This must be loaded after we set termguicolors
lua require('init')

" colorscheme spacecamp

colorscheme challenger_deep
let g:lightline = { 'colorscheme': 'challenger_deep' }

" colorscheme anderson
" I cannot move this to the color file
" colorscheme gotham
" let g:lightline = { 'colorscheme': 'gotham' }

" colorscheme wal
" We have to load the colorscheme first
" and then customize the other colors

color begin

" =====================================
" ======= Completion Settings =========
" =====================================

inoremap <silent><expr> <c-p> completion#trigger_completion()

function! CheckBackSpace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ CheckBackSpace() ? "\<TAB>" :
  \ completion#trigger_completion()

" This is very important to be loaded here
" or Tab will not work, for completion
let g:UltiSnipsExpandTrigger = "<S-Tab>"

autocmd BufEnter * lua require'completion'.on_attach()

" ----

" This is not that robust
" Only just happens to work with the current pattern
" I am using in beginsounds
function! GoCmd()
  let cwd = expand("%:p:h")
  let fname = split(cwd, '/')[-1]
  return (cwd . '/' . fname)
endfunction

" map <leader>gh :call VimuxRunCommand("clear; go build . && " . GoCmd())<CR>
map <Leader>gj :VimuxCloseRunner<CR>

let g:VimuxOrientation = "h"
let g:VimuxHeight = "50"

map <leader>gk :call VimuxRunCommand("clear; go build consumer.go && " . "./consumer -f $HOME/.confluent/librdkafka.config -t demo-topic-1")<CR>
map <leader>gh :call VimuxRunCommand("clear; go build producer.go && " . "./producer -f $HOME/.confluent/librdkafka.config -t demo-topic-1")<CR>

" setl filetype=terminal
" :h terminal.lua
lua require'terminal'.setup()
