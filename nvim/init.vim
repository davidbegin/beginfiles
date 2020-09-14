
" BBBBB   EEEEEEE   GGGG  IIIII NN   NN BBBBB    OOOOO  TTTTTTT
" BB   B  EE       GG  GG  III  NNN  NN BB   B  OO   OO   TTT
" BBBBBB  EEEEE   GG       III  NN N NN BBBBBB  OO   OO   TTT
" BB   BB EE      GG   GG  III  NN  NNN BB   BB OO   OO   TTT
" BBBBBB  EEEEEEE  GGGGGG IIIII NN   NN BBBBBB   OOOO0    TTT


source $HOME/.config/nvim/plug_init.vim

set termguicolors                  " Enable GUI colors for the terminal to get truecolor
" set t_Co=256                     " Enable 256 colors

" This must be loaded after we set termguicolors
lua require('init')

" colorscheme wal
" We have to load the colorscheme first
" and then customize the other colors

colorscheme gotham
let g:lightline = { 'colorscheme': 'gotham' }

color begin

" Not sure why I need this here
" I moved it before and it stopped
" working, could have been other Night Begin problems tho
let mapleader = "\<Space>"

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

let g:completion_enable_snippet = 'UltiSnips'
let g:UltiSnipsExpandTrigger = "<S-Tab>"
