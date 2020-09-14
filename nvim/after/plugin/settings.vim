
" :'######::'########:'########:'########:'####:'##::: ##::'######::::'######::
" '##... ##: ##.....::... ##..::... ##..::. ##:: ###:: ##:'##... ##::'##... ##:
"  ##:::..:: ##:::::::::: ##::::::: ##::::: ##:: ####: ##: ##:::..::: ##:::..::
" . ######:: ######:::::: ##::::::: ##::::: ##:: ## ## ##: ##::'####:. ######::
" :..... ##: ##...::::::: ##::::::: ##::::: ##:: ##. ####: ##::: ##:::..... ##:
" '##::: ##: ##:::::::::: ##::::::: ##::::: ##:: ##:. ###: ##::: ##::'##::: ##:
" . ######:: ########:::: ##::::::: ##::::'####: ##::. ##:. ######:::. ######::
" :......:::........:::::..::::::::..:::::....::..::::..:::......:::::......:::


" I have been annoyed by swapfiles for years
" and never thought to turn them off
" instead choosing to bad mouth them
" and treat them with increasing amounts of disrespect
" now I am choosing to turn them off, and am not sure
" of the consequences I will face
set noswapfile

" I like to see my searches highlighted
set hlsearch

" If on, Vim will wrap long lines at a character in 'breakat' rather
" than at the last character that fits on the screen.  Unlike
" 'wrapmargin' and 'textwidth', this does not insert <EOL>s in the file,
" it only affects the way the file is displayed, not its contents.
" If 'breakindent' is set, line is visually indented. Then, the value
" of 'showbreak' is used to put in front of wrapped lines. This option
" is not used when the 'wrap' option is off.
" Note that <Tab> characters after an <EOL> are mostly not displayed
" with the right amount of white space.
set linebreak

" By default we hide the cursor column and line
" because Twitch chat hates it
" ...but we can make them appear at a moments notice
set nocursorcolumn
set nocursorline

" Not sure if I can about this
set nolist

" I am a minimalist
set nonumber
set noshowmode

" I cannot spell any words
set spell spelllang=en_us

" WHO CHOSE 80!?!?
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

let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Reload this vimrc when edited
" This is commented out, while I am doing heavy editing of the file
" because I can't stop saving, triggering resourcing
" autocmd BufWritePost ~/.config/dotfiles/nvim/init.vim source %

" " in general, performance problems only come from the fact you don't redefine the autocmd but add a new one.
" just make sure not to run autocmd over and over again when sourcing vimrc and you will not even notice it.
" if !exists('g:vimrc_loaded')
" let g:vimrc_loaded = 1
" autocmd BufWritePost ~/.config/dotfiles/nvim/init.vim source %
" endif

" if you use terminal in vim.. Which I've never seen you do.
" this will exit to normal mode by hitting escape twice when in terminal mode.
if (exists(":terminal"))
tnoremap <Esc><Esc> <C-\><C-N>
endif

" I don't think matters
" As I have no swap files!!!
set updatetime=100
" set updatetime=800
