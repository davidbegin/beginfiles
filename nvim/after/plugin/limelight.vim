" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
" We must have this set of we will see the following error:
"   Unsupported color scheme. g:limelight_conceal_ctermfg required.
" Note: I have also haven't found what this configures

" What color the unfocused text should be
" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = '#777777'
" We must have this set of we will see the following error:
"   Cannot calculate background color.

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
