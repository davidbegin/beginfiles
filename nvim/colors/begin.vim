
"   e88'Y88   e88 88e   888       e88 88e   888 88e   dP"8
"  d888  'Y  d888 888b  888      d888 888b  888 888D C8b Y
" C8888     C8888 8888D 888     C8888 8888D 888 88"   Y8b
"  Y888  ,d  Y888 888P  888  ,d  Y888 888P  888 b,   b Y8D
"   "88,d88   "88 88"   888,d88   "88 88"   888 88b, 8edP

highlight LspDiagnosticsDefaultError guibg=#D7001B
highlight LspDiagnosticsSignError guibg=none
highlight LspDiagnosticsUnderlineWarn guibg=#D77600

" LspDiagnosticsVirtualTextError
" LspDiagnosticsVirtualTextWarning
" LspDiagnosticsVirtualTextInformation
" LspDiagnosticsVirtualTextHint

" I like my spelling mistakes to be highlighted more subtle
" with a underline.....called undercurl for some reason here
highlight clear SpellBad
highlight SpellBad gui=undercurl

" We Need to Highlight Rare words
" ....and maybe one day we will discover one other than vim
" highlight SpellRare guibg=#FF009F

" enable to make the background transparent
" highlight normal guibg=none ctermbg=none
highlight normal guibg=none
" ctermbg=none
" highlight Normal guibg=Black ctermbg=Black
" highlight Normal guibg=#121212
" highlight Normal guibg=#8F005E
" highlight Normal guibg=#1e1c31

" Enable to make SignColumn transparent
highlight SignColumn guibg=NONE

" Nice Blue Pmenu
" highlight Pmenu ctermbg=26  ctermfg=white

" Red Sign Column Why????
" highlight SignColumn guibg=Red ctermbg=Red

" hi Search guibg=#0478A4 guifg=wheat

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

" Not sure if we want this
" This is not working with Tmux
" highlight Cursor guibg=#626262

" Easter Pack
" highlight CursorLine guibg=#09F953 guifg=black
" highlight CursorColumn guibg=#FC78DE guifg=white

" Goth Pack
" highlight CursorLine ctermbg=darkred ctermfg=white
" highlight CursorColumn ctermbg=black ctermfg=darkred
" highlight CursorLine guibg=darkred guifg=white
" highlight CursorColumn guibg=black guifg=darkred

" Joker Theme
" highlight CursorLine ctermbg=#21FF13 ctermfg=black
" highlight CursorColumn ctermbg=#9E00FF ctermfg=darkred
"
highlight CursorLine guibg=#21FF13 guifg=black
highlight CursorColumn guibg=#9E00FF guifg=darkred

" 70's Xmas
" highlight CursorLine ctermbg=#660007 ctermfg=black
" highlight CursorColumn ctermbg=#083700 ctermfg=darkred
" highlight CursorLine guibg=#660007 guifg=black
" highlight CursorColumn guibg=#083700 guifg=darkred

" ==============
" = Hightlight =
" ==============

" What Color to highlight hlsearches
" highlight Visual guibg=#07C7CF guifg=Black

" This is for the spacetheme
" highlight SignColumn guibg=121212 ctermbg=121212

" Gotham
" highlight SignColumn guibg=0c1014 ctermbg=0c1014
" highlight SignColumn guibg=Red ctermbg=Red
" its not loading the after, on reload

" highlight SignColumn guibg=Red ctermbg=Red

" highlight SignColumn ctermbg=0
" highlight SignColumn guibg=0

" hi! VertSplit"  .s:fmt_none   .s:fg_red .s:bg_red
