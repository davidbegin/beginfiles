" function and shortcut to add 'import <word under cursor>' to the top of the file
function! AddImport()
  let module = expand("<cword>")
  call append(0, "import " . module)
endfunction

function! GoBreakpoint()
  let current_line=line(".")
  let breakpoint=expand("%:t") . ":" . current_line
  echo breakpoint
  let @+="break " . breakpoint
endfunction
