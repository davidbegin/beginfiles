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

" luafile $HOME/.config/nvim/lua/init.lua
lua require('init')

" We have to load the colorscheme first
" and then customize the other colors
" colorscheme wal
let mapleader = "\<Space>"

colorscheme gotham
let g:lightline = { 'colorscheme': 'gotham' }

color begin

" ==================================
" ======= General Settings =========
" ==================================

let mapleader = "\<Space>"

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

" Should these go in after/plugin/completion.vim
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

let g:completion_enable_auto_popup = 0

inoremap <silent><expr> <c-p> completion#trigger_completion()

function! CheckBackSpace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ CheckBackSpace() ? "\<TAB>" :
  \ completion#trigger_completion()

" setlocal omnifunc=v:lua.vim.lsp.omnifunc
let g:completion_enable_snippet = 'UltiSnips'
let g:UltiSnipsExpandTrigger = "<S-Tab>"

let g:completion_chain_complete_list = [
    \{'complete_items': ['lsp', 'buffers', 'snippet']},
    \{'mode': '<c-p>'},
    \{'mode': '<c-n>'}
\]
