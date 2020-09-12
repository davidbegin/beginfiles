" VIM CONF WACKINESS ====================

function! s:UnleashTheSpam()
  lua require("spy").activate()
endfunction

function! s:CageTheSpy()
  lua require("spy").deactivate()
endfunction

let s:loud_home = 0
function! LoudHJKL()
    if s:loud_home  == 0
        let s:loud_home = 1
        nnoremap h h:echo H()<CR>
        nnoremap j j:echo J()<CR>
        nnoremap k k:echo K()<CR>
        nnoremap l l:echo L()<CR>
        nnoremap c c:echo C()<CR>
        nnoremap d d:echo D()<CR>
    else
        let s:loud_home = 0
        unmap h
        unmap j
        unmap k
        unmap l
        unmap c
        unmap d
    endif
endfunction
