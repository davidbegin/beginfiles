function! PasteIt()
  set paste
  execute "normal! \"*p"
  set nopaste
endfunction
