set noswapfile

set hlsearch
set linebreak
set nocursorcolumn
set nocursorline
set nolist
set nonumber
set noshowmode

set spell spelllang=en_us
set textwidth=80
set ttyfast
set wrap

" Are these proper defaults?
set shiftwidth=2
set softtabstop=0 expandtab
set tabstop=2

" Enable incremental search, so we see what we are matching as we are typing!
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" Hide the last status
set laststatus=0

" Lets us yank in vim and then paste to other programs
set clipboard+=unnamedplus


" This is the default apparently
" But I have seen Emojis cut in half, when not set
set emoji

let g:python3_host_prog = '/usr/bin/python3'
set foldmethod=marker

" These settings are from the following Repo:
" https://github.com/nvim-lua/completion-nvim

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
