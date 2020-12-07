command! GolangTestCurrentPackage :call GolangTestCurrentPackage()
command! GolangTestFocused :call GolangTestFocused()
command! GolangRun :call GolangRun()

function! ShellCommandSeperator()
  if empty(matchstr($SHELL, 'fish'))
    return '&&'
  else
    return '; and'
  endif
endfunction

let s:separator = ShellCommandSeperator()

function! GolangUsingExamples()
  let examples_import_line_number = search("github.com\/lionelbarrow\/examples", "bs")
  if examples_import_line_number
    ''
  endif

  return examples_import_line_number
endfunction

function! GolangCurrentPackage()
  return "."
endfunction

function! GolangCwd()
  return escape(shellescape(expand("%:p:h"), 1), '$')
endfunction

function! GolangTestCurrentPackage()
  call VimuxRunCommand("cd " . GolangCwd() . " " . s:separator . " clear " . s:separator . " gotest -v " . GolangCurrentPackage())
endfunction

function! GolangRun()
  call VimuxRunCommand("cd " . GolangCwd() . " " . s:separator . " clear " . s:separator . " go run " . expand('%:t'))
endfunction

function! GolangTestFocused()
  let test_line = search("func Test", "bs")
  ''

  if test_line > 0
    let line = getline(test_line)
    let test_name_raw = split(line, " ")[1]
    let test_name = split(test_name_raw, "(")[0]

    call VimuxRunCommand("cd " . GolangCwd() . " " . s:separator . " clear " . s:separator . " gotest " . GolangFocusedCommand(test_name) . " -v " . GolangCurrentPackage())
  else
    echo "No test found"
  endif
endfunction

function! GolangFocusedCommand(test_name)
  if GolangUsingExamples()
    return "-run '" . a:test_name . "$' -examples.run '" . GolangFocusedExampleName() . "'"
  else
    return "-run '" . a:test_name . "$'"
  endif
endfunction

function! GolangFocusedExampleName()
  let test_line = search("It(", "bs")
  ''

  if test_line > 0
    let line = getline(test_line)
    let raw_test_description = substitute(matchstr(line, 'It(".*"'), 'It(', '', '')
    let test_name = substitute(raw_test_description, '"', '', 'g')
    return substitute(test_name, "'", '', '')
  else
    echo "No example test found"
    return ""
  endif
endfunction

function! GolangRunOnChange()
  if executable("inotifywait")
    call VimuxRunCommand("while true; do inotifywait -q ".bufname("%")."; clear; go run play.go; done")
  else
    echo "You must have inotify-tools installed"
  endif
endfunction
