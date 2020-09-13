" nnoremap <silent> gr         <cmd> lua vim.lsp.buf.references()<CR>

" Easier Escaping
inoremap jj <Esc>
inoremap kj <Esc>

" Move Split Panes with more Vimlike Motions
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" LSP
nnoremap <silent>1gD        <cmd> lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent><C-k>      <cmd> lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent><leader>rn <cmd> lua vim.lsp.buf.rename()<CR>

" This was messing up searching in search files
" nnoremap <silent><c-]>      <cmd> lua vim.lsp.buf.definition()<CR>
"
"   nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>


nnoremap <silent><c-k>      <cmd> lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent>K          <cmd> lua vim.lsp.buf.hover()<CR>
nnoremap <silent>g0         <cmd> lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent>gD         <cmd> lua vim.lsp.buf.implementation()<CR>
nnoremap <silent>gW         <cmd> lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent>gd         <cmd> lua vim.lsp.buf.declaration()<CR>

" Telescope
nnoremap <silent>gr    <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
nnoremap <silent><C-g> <cmd>lua require('telescope.builtin').live_grep{}<CR>
nnoremap <silent><C-p> <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <silent><leader>cf <cmd>lua require('begin.tele').cfwd()<CR>
nnoremap <silent><leader>ch <cmd>lua require('telescope.builtin').command_history{}<CR>
nnoremap <silent><leader>fz <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find{}<CR>
nnoremap <silent><leader>pl <cmd>lua require('telescope.builtin').planets{show_pluto=true}<CR>
nnoremap <silent><leader>qf :lua require'telescope.builtin'.quickfix{}<CR>
nnoremap <silent><leader>ss <cmd>lua require('begin.tele').spellcheck()<CR>

" Misc Plugins
nnoremap <silent><leader>C :VCoolor<CR>
nnoremap <silent><leader>lg :FloatermNew lazygit<CR>
nnoremap <silent><leader>rr :FloatermNew --height=0.9 --width=0.9 ranger<CR>
nnoremap <silent><leader>tm :SignatureToggle<CR>
noremap <silent><leader>ff :FixWhitespace<cr>
noremap <silent><leader>gg :Goyo<cr>
noremap <silent><leader>jl :!wal --theme random_dark &<cr>
noremap <silent><leader>tt  :Tabularize/

" Custom Functions
nnoremap <silent><leader>ll :call MdLink()<cr>
vnoremap <silent><leader>gi :call GistAndPost(mode())<cr>

" Built in Vim Mappings
nnoremap <silent><leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <silent><leader>H :set cursorline! cursorcolumn!<CR>
nnoremap <silent><leader>h :set cursorline!<CR>
nnoremap <silent><leader>nn :set scl=auto<CR>
nnoremap <silent><leader>no :set rnu!<CR>
noremap ,, <esc>:w!<cr>
noremap <silent><leader>cs :colorscheme 
noremap <silent><leader>e :edit %:h<cr>
noremap <silent><leader>E :edit ../.<cr>
noremap <silent><leader>s 1z=e
noremap ff :resize 100 <cr> <bar> :vertical resize 220<cr>
noremap fm <C-w>

" Misc
nnoremap <silent><leader>bp :call GoBreakpoint()<CR>
nnoremap <silent><leader>ev :vs $MYVIMRC<CR>
noremap <silent><leader>jq :%!python -m json.tool<cr>
noremap <silent><leader>rc :source ~/.config/nvim/init.vim<cr>
vnoremap <localleader>" <esc>m`'<i"<esc>A"<esc>``

" Maybe consolidate into one
noremap <leader>pk :set nopaste<cr>
" noremap <leader>pp :set paste<cr>
noremap <leader>pp :call PasteIt()<CR>

" Twitch
nnoremap <leader>te :call TwitchCommands()<cr>
nnoremap <leader>tl :call LastTwitchMsg()<cr>
nnoremap <leader>tr :call PostChat()<cr>
nnoremap <leader>ts :call PostChatByUser()<cr>
nnoremap <leader>tw :call SendToTwitch()<cr>

" nojam cuts off all fluidsynth processes
nnoremap <leader>nj :!nojam<cr>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" What Should I have the secondary escape as?
" https://github.com/neovim/neovim/issues/7648
tnoremap <C-[><C-[> <C-\><C-n>

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
