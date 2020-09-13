function! DeleteAllMarks()
  execute ":delmarks!"
  execute ":delmarks 0123456789"
  " I want to save my marks now
  " execute ":delmarks ABCDEFGHIJKLMNOPQRSTUVWYXZ"
  execute ":wsh!"
endfunction
