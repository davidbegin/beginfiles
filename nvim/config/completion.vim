" These settings are from the following Repo:
" https://github.com/nvim-lua/completion-nvim

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

let g:completion_enable_auto_popup = 0
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

" lua require'nvim_lsp'.gopls.setup{on_attach=require'completion'.on_attach}
autocmd BufEnter * lua require'completion'.on_attach()

let g:completion_chain_complete_list = {
    \ 'default': [
    \    {'complete_items': ['buffers']},
    \    {'mode': '<c-p>'},
    \    {'mode': '<c-n>'}
    \],
    \   'go': [
    \    {'complete_items': ['lsp']},
    \    {'mode': '<c-p>'},
    \    {'mode': '<c-n>'}
    \   ]
\}

