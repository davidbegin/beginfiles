
" __/\\\\\\\\\\\\\____/\\\______________/\\\________/\\\_____/\\\\\\\\\\\\__/\\\\\\\\\\\__/\\\\\_____/\\\_____/\\\\\\\\\\\___
"  _\/\\\/////////\\\_\/\\\_____________\/\\\_______\/\\\___/\\\//////////__\/////\\\///__\/\\\\\\___\/\\\___/\\\/////////\\\_
"   _\/\\\_______\/\\\_\/\\\_____________\/\\\_______\/\\\__/\\\_________________\/\\\_____\/\\\/\\\__\/\\\__\//\\\______\///__
"    _\/\\\\\\\\\\\\\/__\/\\\_____________\/\\\_______\/\\\_\/\\\____/\\\\\\\_____\/\\\_____\/\\\//\\\_\/\\\___\////\\\_________
"     _\/\\\/////////____\/\\\_____________\/\\\_______\/\\\_\/\\\___\/////\\\_____\/\\\_____\/\\\\//\\\\/\\\______\////\\\______
"      _\/\\\_____________\/\\\_____________\/\\\_______\/\\\_\/\\\_______\/\\\_____\/\\\_____\/\\\_\//\\\/\\\_________\////\\\___
"       _\/\\\_____________\/\\\_____________\//\\\______/\\\__\/\\\_______\/\\\_____\/\\\_____\/\\\__\//\\\\\\__/\\\______\//\\\__
"        _\/\\\_____________\/\\\\\\\\\\\\\\\__\///\\\\\\\\\/___\//\\\\\\\\\\\\/___/\\\\\\\\\\\_\/\\\___\//\\\\\_\///\\\\\\\\\\\/___
"         _\///______________\///////////////_____\/////////______\////////////____\///////////__\///_____\/////____\///////////_____


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

  " Sitting on the Top of a Tree
  Plug 'nvim-treesitter/completion-treesitter'
  Plug 'nvim-treesitter/nvim-treesitter'

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
