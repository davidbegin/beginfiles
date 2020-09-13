function! ClearRegs() abort
  let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"*+', '\zs')
  for r in regs
    call setreg(r, @_)
  endfor
endfunction

function! FillNames() abort
  let regs=split('abcdefghijklmnopqrstuvwxyz', '\zs')
  for r in regs
    let word=system("cat /usr/share/dict/words | grep " . "^" . toupper(shellescape(r)) .  " | shuf -n 1")
    call setreg(r, substitute(word, '\n$', '', 'g'))
  endfor
endfunction

function! FillRegs() abort
  let regs=split('abcdefghijklmnopqrstuvwxyz', '\zs')
  for r in regs
    let word=system("cat /usr/share/dict/words | grep " . "^" . shellescape(r) .  " | shuf -n 1")
    call setreg(r, substitute(word, '\n$', '', 'g'))
  endfor
endfunction

"   let test_file=substitute(expand('%:t'), '^', "test_", "")
"   execute "rightbelow vsplit " .. test_file
" endfunction

" function! AltTestFile()
"   let test_file=substitute(expand('%:t'), '^', "test_", "")
"   execute ":bad " .. test_file
"   let @#=test_file
" endfunction
