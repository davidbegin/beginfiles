" function! s:Emojis()
"   let s:emoji=system('cat ~/.local/share/larbs/emoji | dmenu -l 30  ')
"   let @+ = s:emoji
"   execute "normal! pld$"
" endfunction

" function! s:PyDocSearch()
"   let s:search = input("Python Doc Keyword: ")
"   " pydoc3 -k <keyword>
"   " Search for a keyword in the synopsis lines of all available modules.
"   let s:module=system('pydoc3 -k string | dmenu -l 30')
"   let @+ = s:module
" endfunction

" I use this for creating code blocks in Markdownfiles
" noremap <leader>` <cr>i```bash<cr>```<Esc>O

" nmap <S-Enter> O<Esc>
" nmap <CR> o<Esc>
" nnoremap <leader>os :!nomeme<cr>


" let s:hidden_all = 0
" function! ToggleHiddenAll()
"     if s:hidden_all  == 0
"         let s:hidden_all = 1
"         set noshowmode
"         set noruler
"         set laststatus=0
"         set noshowcmd
"     else
"         let s:hidden_all = 0
"         set showmode
"         set ruler
"         set laststatus=2
"         set showcmd
"     endif
" endfunction
" nnoremap <S-h> :call ToggleHiddenAll()<CR>

" :set scl=no   " force the signcolumn to disappear
" :set scl=yes  " force the signcolumn to appear
" :set scl=auto " return the signcolumn to the default behaviour

" nnoremap <silent> <leader>ts :call <SID>UserSearch()<cr>
" function! s:UserSearch()
"   let s:viewer = input('New Search: ')
"   let UserSearch = luaeval('require("twitchchat").user_search')
"   let @+=UserSearch(s:viewer)
" endfunction

" Do we have a filetupe cmd for netrw
" :let g:loaded_netrw       = 1
" :let g:loaded_netrwPlugin = 1

" IS THIS WORKING HOW I WANT????
" set tags=/home/begin/.tags,tags;$HOME
" What is this for???
" set filetype=on
" let $RPT=split(&runtimepath, ',')[0]
" let $RC=".config/nvim/init.vim"
" set path=.,**
" set hidden

" Folding Settings
" open folds when opening a file
" autocmd FileType * exe "normal zR"
" set nofoldenable
" set foldmethod=indent
" set foldlevel=99

" nnoremap <c-Q> :call LoudHJKL()<CR>
" nnoremap <c-C> :echo Cmaj()<CR>
" nnoremap <c-F> :echo Fmaj()<CR>
" nnoremap <c-A> :echo Amin()<CR>
" nnoremap <c-S> :echo Stop()<CR>
" nnoremap <c-Q> :echo Intro()<CR>
" nnoremap <c-N> :echo ChangeInsertInstrument(input("inst: "))<CR>
" nnoremap <c-M> :echo ChangeCompleteInstrument(input("inst: "))<CR>
" nnoremap <c-H> :echo EnableInsertMode()<CR>
" nnoremap <c-J> :echo DisableInsertMode()<CR>

" nnoremap <leader>oa :call <SID>ObsSourceCommands()<cr>
" nnoremap <leader>ob :call <SID>ObsSceneCommands()<cr>
" nnoremap <leader>pd :call <SID>PyDocSearch()<cr>
" nnoremap <leader>rr :call <SID>DecryptTheChat()<cr>
" nnoremap <leader>u :echo DisableCursorMode()<CR>
" nnoremap <leader>y :echo EnableCursorMode()<CR>
" nnoremap <silent> <leader>ns :call <SID>CageTheSpy()<cr>
" nnoremap <silent> <leader>sp :call <SID>UnleashTheSpam()<cr>

" Should be in python only
" nnoremap <silent> <leader>im :call AddImport()<CR>

" nnoremap <leader>m :call <SID>Emojis()<cr>
" nnoremap <leader>i :echo RandomInstrument(input("inst: "))<CR>
" :inoremap jk <esc>
" :nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
" nnoremap <leader>h1 :call <SID>MdTitle('=')<cr>
" nnoremap <leader>h2 :call <SID>MdTitle('-')<cr>
" nnoremap <leader>te :call OpenTests()<CR>
" noremap <silent><leader>Y :!wal --theme random_dark &<cr>

" lua require'nvim_lsp'.gopls.setup{on_attach=require'completion'.on_attach}
" autocmd BufEnter * lua require'completion'.on_attach()


  " ==================
  " Plugin Graveyard =
  " ==================

  " Plug 'juliosueiras/terraform-lsp'
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
