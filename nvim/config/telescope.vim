let g:has_run_telescope = v:false
function! TeleReminder()
  if !g:has_run_telescope
    :call TeleRock()
    let g:has_run_telescope = v:true
  endif
endfunction
autocmd Filetype TelescopePrompt :call TeleReminder()
