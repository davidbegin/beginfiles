" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" let g:UltiSnipsExpandTrigger = "<S-Tab>"
"
" pumvisible()						*pumvisible()*
" 		Returns non-zero when the popup menu is visible, zero
" 		otherwise.  See |ins-completion-menu|.
" 		This can be used to avoid some things that would remove the
" 		popup ,enu.

" function! CleverTab()
"    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"       return "\<Tab>"
"    else
"       " Keywords in the current and included files		|i_CTRL-X_CTRL-I|
"       return "\<C-X>\<C-I>"
"    endif
" endfunction

" inoremap <Tab> <C-R>=CleverTab()<CR>

" Not working for me
" inoremap ^] ^X^]
" inoremap ^F ^X^F
" inoremap ^D ^X^D
" inoremap ^L ^X^L
