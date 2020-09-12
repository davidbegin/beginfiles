set t_Co=256                         " Enable 256 colors
" set termguicolors                  " Enable GUI colors for the terminal to get truecolor

" We have to load the colorscheme first
" and then customize the other colors
colorscheme wal

" colorscheme challenger_deep

hi Search guibg=#0478A4 guifg=wheat

" =====================
" = PMENU PMENU PMENU =
" =====================

" Black and Purple
" highlight Pmenu guibg=Black guifg=Magenta
" highlight PmenuSel guibg=Black guifg=#66ff00 gui=bold

" Navy and Wheat
" highlight Pmenu guibg=#000593 guifg=wheat
" highlight PmenuSel guibg=#000593 guifg=#66ff00 gui=bold

" highlight Pmenu ctermbg=blue ctermfg=white
" highlight Pmenu ctermbg=150 ctermfg=white
" highlight PmenuSbar ctermbg=red ctermfg=red
" highlight PmenuThumb ctermbg=black ctermfg=black
" highlight PmenuSel ctermbg=black ctermfg=Magenta
" highlight NormalFloat ctermbg=black ctermfg=Magenta

" For easier Choosing
":VCoolIns r
" highlight Pmenu ctermbg=33 ctermfg=white
"
" Nice Blue
highlight Pmenu ctermbg=26  ctermfg=white

" Nice Green
" highlight Pmenu ctermbg=35  ctermfg=white

" Gray and White
" highlight Pmenu ctermbg=0  ctermfg=white

" Surf Green
" highlight Pmenu ctermbg=36  ctermfg=white

" Teal Green
" highlight Pmenu ctermbg=37  ctermfg=white

" highlight PmenuSel ctermbg=219

" ==========
" = Cursor =
" ==========

" This is not working with Tmux
highlight Cursor guibg=#626262

" Easter Pack
" highlight CursorLine guibg=#09F953 guifg=black
" highlight CursorColumn guibg=#FC78DE guifg=white

" Goth Pack
" highlight CursorLine ctermbg=darkred ctermfg=white
" highlight CursorColumn ctermbg=black ctermfg=darkred

" Joker Theme
" highlight CursorLine ctermbg=#21FF13 ctermfg=black
" highlight CursorColumn ctermbg=#9E00FF ctermfg=darkred

" 70's Xmas
" highlight CursorLine ctermbg=#660007 ctermfg=black
" highlight CursorColumn ctermbg=#083700 ctermfg=darkred

" ==============
" = Hightlight =
" ==============

" What Color to highlight hlsearches
highlight Visual guibg=#07C7CF guifg=Black

" highlight SignColumn ctermbg=0
highlight SignColumn guibg=0

" hi! VertSplit"  .s:fmt_none   .s:fg_red .s:bg_red
