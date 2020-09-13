" BBBBB   EEEEEEE   GGGG  IIIII NN   NN BBBBB    OOOOO  TTTTTTT
" BB   B  EE       GG  GG  III  NNN  NN BB   B  OO   OO   TTT
" BBBBBB  EEEEE   GG       III  NN N NN BBBBBB  OO   OO   TTT
" BB   BB EE      GG   GG  III  NN  NNN BB   BB OO   OO   TTT
" BBBBBB  EEEEEEE  GGGGGG IIIII NN   NN BBBBBB   OOOO0    TTT

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
  silent !mkdir -p ~/.config/nvim/autoload/
  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

  " Go
  Plug 'SirVer/ultisnips'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  " Misc
  Plug 'KabbAmine/vCoolor.vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'dylanaraps/wal.vim'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'frazrepo/vim-rainbow'
  Plug 'godlygeek/tabular'
  Plug 'janko/vim-test'
  Plug 'kshenoy/vim-signature'

  " Calm the ADHD
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'

  " Just to be able to be Post Gists
  Plug 'mattn/gist-vim'
  Plug 'mattn/webapi-vim'

  " Navigating Directories
  Plug 'justinmk/vim-dirvish'

  " Hail Tpope
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'

  " Neovim LSP Autocompletion, Diagnostic Stuff
  Plug 'neovim/nvim-lsp'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/diagnostic-nvim'
  Plug 'steelsojka/completion-buffers'
  Plug 'voldikss/vim-floaterm'


  " Plug 'nvim-treesitter/completion-treesitter'
  " Plug 'nvim-treesitter/nvim-treesitter'

  " Tele Pack
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/telescope.nvim'

  " Colors and Whatnot
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
  Plug 'jaredgorski/spacecamp'
  Plug 'whatyouhide/vim-gotham'

  " Terraform
  Plug 'hashivim/vim-terraform'
  Plug 'hashicorp/terraform-ls'

call plug#end()


" ================================
" ======= Color Settings =========
" ================================

" set t_Co=256                     " Enable 256 colors
set termguicolors                  " Enable GUI colors for the terminal to get truecolor

" We have to load the colorscheme first
" and then customize the other colors
" colorscheme wal
let mapleader = "\<Space>"

colorscheme gotham
let g:lightline = { 'colorscheme': 'gotham' }

hi SpellBad gui=undercurl

hi clear SpellBad
" highlight SignColumn guibg=Red ctermbg=Red

" ==================================
" ======= General Settings =========
" ==================================

let mapleader = "\<Space>"

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

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

nnoremap <esc> :noh<return><esc>

" Lets us yank in vim and then paste to other programs
set clipboard+=unnamedplus

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

let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

" This is the default apparently
" But I have seen Emojis cut in half, when not set
set emoji

let g:python3_host_prog = '/usr/bin/python3'

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsListSnippets="<C-Tab>"

set foldmethod=marker
