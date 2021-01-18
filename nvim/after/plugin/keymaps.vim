"       :::    ::: :::::::::: :::   :::  :::   :::       :::     :::::::::   ::::::::
"      :+:   :+:  :+:        :+:   :+: :+:+: :+:+:    :+: :+:   :+:    :+: :+:    :+:
"     +:+  +:+   +:+         +:+ +:+ +:+ +:+:+ +:+  +:+   +:+  +:+    +:+ +:+
"    +#++:++    +#++:++#     +#++:  +#+  +:+  +#+ +#++:++#++: +#++:++#+  +#++:++#++
"   +#+  +#+   +#+           +#+   +#+       +#+ +#+     +#+ +#+               +#+
"  #+#   #+#  #+#           #+#   #+#       #+# #+#     #+# #+#        #+#    #+#
" ###    ### ##########    ###   ###       ### ###     ### ###         ########


" map <leader>gb :call VimuxRunCommand("clear; go build .")<CR>
" map <leader>bl :!black % -l 120<CR>

" I've done it and have seen the light
" To be honest, I have enjoyed my life
" more since adding this mapping
let mapleader = "\<Space>"

" Easier Escaping
inoremap jj <Esc>
inoremap kj <Esc>

" To remove highlighting for hlsearchs easier
" I think this might slow down other
" escaping, and :noh ain't that big of deal
" for now, maybe we rethink a new key mapping
" nnoremap <esc> :noh<return><esc>

" Move Split Panes with more Vimlike Motions
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Split to a Vertical split easily
" nnoremap <leader>pv :wincmd v<bar> :e . <bar> :vertical resize 30<CR>
nnoremap <leader>pv :wincmd v<bar> :e %:h <bar><CR>

" Prime real estate
"
" vim-projectionist for navigating to Alternate files
nnoremap <leader>a :A<CR>
nnoremap <leader>v :AV<CR>

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

" This was messing up using C-] to jump to refs in :help
" nnoremap <silent><c-]>      <cmd> lua vim.lsp.buf.definition()<CR>

" :help ins-completion
" Easier Insert mode completion mappings
" These don't seem to be working
" inoremap ^] ^X^]
" inoremap ^F ^X^F
" inoremap ^D ^X^D
" inoremap ^L ^X^L


" nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> H     <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
" nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
" nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" nnoremap gd    <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent>gd    <cmd>lua vim.lsp.buf.definition()<CR>


" We will continue to check this out
nnoremap <leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ results_width=0.8}))<cr>
" nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>


" Telescope
nnoremap <silent>gr    <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
" nnoremap <silent><C-g> <cmd>lua require'telescope.builtin'.live_grep{}<CR>
" nnoremap <silent><C-p> <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <silent><leader>tg <cmd>lua require'telescope.builtin'.live_grep{}<CR>
nnoremap <silent><leader>tp <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <silent><leader>tm <cmd>lua require'telescope.builtin'.marks{}<CR>
" Not really using this yet, but might in the future
" nnoremap <silent><leader>qf :lua require'telescope.builtin'.quickfix{}<CR>
nnoremap <silent><leader>q :lua MakeAndPopulateQFList()<CR>
nnoremap <silent><leader>ls :lua require'telescope.builtin'.loclist{}<CR>

" require('telescope.themes').get_dropdown({})

" We learned writing this, but no sure if it's useful
" nnoremap <silent><leader>cf <cmd>lua require('begin.tele').cfwd()<CR>

" Seems useful, but not using yet
nnoremap <silent><leader>ch <cmd>lua require('telescope.builtin').command_history{}<CR>

" This works sporadically
nnoremap <silent><leader>fz <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find{}<CR>


" Useful in searching in our vim config as it gets more split up
nnoremap <silent><leader>vv <cmd>lua require'telescope.builtin'.find_files{ cwd = "~/.config/dotfiles/nvim" }<CR>

" For the astronaut in all of us
nnoremap <silent><leader>pl <cmd>lua require('telescope.builtin').planets{show_pluto=true}<CR>

" This doesn't work yet
" nnoremap <silent><leader>ss <cmd>lua require('begin.tele').spellcheck()<CR>

" Lazy Git with Floatterm
nnoremap <silent><leader>lg :FloatermNew lazygit<CR>

" Ranger with Floatterm
nnoremap <silent><leader>rr :FloatermNew --height=0.9 --width=0.9 ranger<CR>

" Color Picker
nnoremap <silent><leader>C :VCoolor<CR>

" Vim-Signature Toggle for showing Marks
" nnoremap <silent><leader>tm :SignatureToggle<CR>

" vim-trailing-whitespace
noremap <silent><leader>ff :FixWhitespace<cr>

" Toggle Folding
" TODO: Make this better
noremap <silent><leader>fo :set fdm=indent<CR>
noremap <silent><leader>fi zR; :set fdm=manual<CR>

" To Focus on the Current Section of the Code
noremap <silent><leader>gg :Goyo<cr>

" Quick flipping of colorschemes to a Random one
" noremap <silent><leader>jl :!wal --theme random_dark &<cr>

" Use Tabularize to line up things
noremap <silent><leader>tt  :Tabularize/

" Convert a Youtube Link to a Markdown link,
" pulling the title with youtube-dl
nnoremap <silent><leader>ll :call MdLink()<cr>

" Create a Gist of the Selected section,
" and post it to Twitch Chat
vnoremap <silent><leader>gi :call GistAndPost(mode())<cr>

" Use Vim spellcheck and chose the first presented option
" for the word under the cursor
noremap <silent><leader>s 1z=e

" Navigate out to current directory
" More likely to use -, instead of this
" TODO: figure out if -, is from dervish
" noremap <silent><leader>e :edit %:h<cr>

" Toggle a cursor for focusing on the cursor
" Twitch chat hates it
nnoremap <silent><leader>H :set cursorline! cursorcolumn!<CR>
nnoremap <silent><leader>h :set cursorline!<CR>

" Built in Vim Mappings
nnoremap <silent><leader>" viw<esc>a"<esc>bi"<esc>lel

" Toggling Line Numbers on
nnoremap <silent><leader>no :set rnu!<CR>
nnoremap <silent><leader>ni :set nu!<CR>

" Faster saving
" ...although maybe this should change
noremap ,, <esc>:w!<cr>

" Focus and redistribute split windows
noremap ff :resize 100 <CR> <BAR> :vertical resize 220<CR>
noremap fm <C-w>=

" Faster Vimrc opening
nnoremap <silent><leader>ev :vs $MYVIMRC<CR>

" Quick reformatting of json
" noremap <silent><leader>jq :%!python -m json.tool<cr>

" Quick reloading .vimrc
noremap <silent><leader>rc :source ~/.config/nvim/init.vim<cr>

" Surround a word in quotes
" I think I should instead use vim-surround more
vnoremap <leader>" <esc>m`'<i"<esc>A"<esc>``<CR>

" Maybe consolidate into one
noremap <leader>pk :set nopaste<cr>
" noremap <leader>pp :set paste<cr>
noremap <leader>pp :call PasteIt()<CR>

" I added this to make using C-] to go to reference in help docs
" What Should I have the secondary escape as?
" https://github.com/neovim/neovim/issues/7648
tnoremap <C-[><C-[> <C-\><C-n>

" These are all for Debugging
tnoremap <Esc> <C-\><C-n>

" tnoremap <A-h> <C-\><C-N><C-w>h
" tnoremap <A-j> <C-\><C-N><C-w>j
" tnoremap <A-k> <C-\><C-N><C-w>k
" tnoremap <A-l> <C-\><C-N><C-w>l
" inoremap <A-h> <C-\><C-N><C-w>h
" inoremap <A-j> <C-\><C-N><C-w>j
" inoremap <A-k> <C-\><C-N><C-w>k
" inoremap <A-l> <C-\><C-N><C-w>l
" nnoremap <A-h> <C-w>h
" nnoremap <A-j> <C-w>j
" nnoremap <A-k> <C-w>k
" nnoremap <A-l> <C-w>l

nnoremap <leader>k <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <leader>j <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>l <cmd>lua vim.lsp.diagnostic.clear()<CR>
" nnoremap <leader>w <cmd>lua vim.lsp.workspace_symbol.All()<CR>
nnoremap <leader>ws <cmd>lua require'telescope'.lsp_workspace_symbols()<CR>

" lukegorilla: workspace_symbol.All() should be right
" rockerboo: lua require'telescope.builtin'.lsp_workspace_symbols()

" Custom Twitch Commands
nnoremap <leader>te :call TwitchCommands()<cr>
nnoremap <leader>tl :call LastTwitchMsg()<cr>
nnoremap <leader>tr :call PostChat()<cr>
nnoremap <leader>ts :call PostChatByUser()<cr>
nnoremap <leader>tw :call SendToTwitch()<cr>

" Clearing Registers
" Was mostly used for recording a video
" about registers
nnoremap <leader>re :call ClearRegs()<CR>

" nojam cuts off all fluidsynth processes
nnoremap <leader>nj :!nojam<cr>

" Not sure if I really need settings for toggling the sign column
" nnoremap <silent><leader>scy :set scl=yes<CR>
" nnoremap <silent><leader>scn :set scl=no<CR>

" This was having issues with vim-go
" and seems to work without this enabled here
" https://github.com/nvim-lua/completion-nvim
" Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
