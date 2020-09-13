" These settings are from the following Repo:
" https://github.com/nvim-lua/completion-nvim

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

let g:completion_enable_auto_popup = 1
inoremap <silent><expr> <c-p> completion#trigger_completion()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ completion#trigger_completion()

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

setlocal omnifunc=v:lua.vim.lsp.omnifunc

let g:completion_chain_complete_list = [
    \{'complete_items': ['lsp', 'buffers', 'snippet']},
    \{'mode': '<c-p>'},
    \{'mode': '<c-n>'}
\]
