"
"  _ __ | |_   _  __ _(_)_ __  ___
" | '_ \| | | | |/ _` | | '_ \/ __|
" | |_) | | |_| | (_| | | | | \__ \
" | .__/|_|\__,_|\__, |_|_| |_|___/
" |_|            |___/

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
  silent !mkdir -p ~/.config/nvim/autoload/
  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

  Plug '~/code/marks.nvim'
  " Snippets
  Plug 'SirVer/ultisnips'

  " Go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'sebdah/vim-delve'
  " Startup Profiling
  Plug 'dstein64/vim-startuptime'

  Plug 'rhysd/git-messenger.vim'

  " Misc
  Plug 'KabbAmine/vCoolor.vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'dylanaraps/wal.vim'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'frazrepo/vim-rainbow'
  Plug 'godlygeek/tabular'
  Plug 'janko/vim-test'

  " Tmux and Vim Together at Last!
  Plug 'hupfdule/vimux'
  " Plug 'benmills/vimux-golang'

  " Calm the ADHD
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'

  " Just to be able to be Post Gists
  Plug 'mattn/gist-vim'
  Plug 'mattn/webapi-vim'

  " Navigating Directories
  Plug 'justinmk/vim-dirvish'

  " All Hail TPope
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-markdown'
  Plug 'tpope/vim-projectionist'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-dadbod'

  " Neovim LSP Autocompletion, Diagnostic Stuff
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'steelsojka/completion-buffers'
  Plug 'voldikss/vim-floaterm'
  Plug 'dense-analysis/ale'


  " Sitting on the Top of a Tree
  " Plug 'nvim-treesitter/completion-treesitter'
  " Plug 'nvim-treesitter/nvim-treesitter'

  " Tele Pack
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/telescope.nvim'

  " Colors and Whatnot
  Plug 'norcalli/nvim-colorizer.lua' " This brings me the most joy
  Plug 'norcalli/nvim-terminal.lua'
  Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
  Plug 'jaredgorski/spacecamp'
  Plug 'whatyouhide/vim-gotham'
  Plug 'gilgigilgil/anderson.vim'

  " Terraform
  Plug 'hashivim/vim-terraform'
  Plug 'hashicorp/terraform-ls'
  " Plug 'juliosueiras/terraform-lsp'

  " For Generating My Begin Tag
  Plug 'johannesthyssen/vim-signit'

  Plug 'kshenoy/vim-signature'
  Plug 'kshenoy/vim-signature'
call plug#end()
