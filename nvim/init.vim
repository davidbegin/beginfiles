" ======================================
" ====== Plugins Plugins Plugins =======
" ======================================

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
  silent !mkdir -p ~/.config/nvim/autoload/
  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

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

  " Hail Tpope
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'

  " Neovim LSP Autocompletion, Diagnostic Stuff
  Plug 'neovim/nvim-lsp'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/diagnostic-nvim'
  Plug 'nvim-treesitter/completion-treesitter'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'steelsojka/completion-buffers'
  Plug 'voldikss/vim-floaterm'

  " Tele Pack
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/telescope.nvim'

  " Go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  " Terraform
  Plug 'hashivim/vim-terraform'
  Plug 'hashicorp/terraform-ls'
  " Plug 'juliosueiras/terraform-lsp'

  " Colorschemes
  Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
  Plug 'fcpg/vim-orbital'

  " ==================
  " Plugin Graveyard =
  " ==================

  " Plug 'rhysd/committia.vim'
  " Plug 'mitsuhiko/vim-jinja'
  " Plug 'jiangmiao/auto-pairs'
  " Plug 'jreybert/vimagit'
  " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  " Plug 'Xuyuanp/nerdtree-git-plugin'
  " Plug 'scrooloose/nerdtree'
  " Plug 'unkiwii/vim-nerdtree-sync'
  " Plug 'vimwiki/vimwiki'
  " Plug 'ctrlpvim/ctrlp.vim'
  " Plug 'jacquesbh/vim-showmarks'
  " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
  " Plug 'mattn/emmet-vim'
  " Plug 'autozimu/LanguageClient-neovim', {
  "   \ 'branch': 'next',
  "   \ 'do': 'bash install.sh',
  "   \ }
call plug#end()

source $HOME/.config/nvim/config/completion.vim
source $HOME/.config/nvim/config/graveyard.vim
source $HOME/.config/nvim/config/marks.vim
source $HOME/.config/nvim/config/misc.vim
source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/registers.vim
source $HOME/.config/nvim/config/settings.vim
source $HOME/.config/nvim/config/spelling.vim
source $HOME/.config/nvim/config/twitch.vim
source $HOME/.config/nvim/config/vim_conf.vim
source $HOME/.config/nvim/config/youtube_markdown.vim
source $HOME/.config/nvim/config/lua.vim

" Not needed right now, but don't worry we are indeed
" still using telescope
" source $HOME/.config/nvim/config/telescope.vim

source $HOME/.config/nvim/config/keymaps.vim
source $HOME/.config/nvim/config/colors.vim
