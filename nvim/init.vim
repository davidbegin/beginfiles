" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~ General Settings ~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" set filetype on

set hlsearch
set linebreak
set nocursorcolumn
set nocursorline
set nolist
set nonumber
set noshowmode
set shiftwidth=2
set softtabstop=0 expandtab
set spell spelllang=en_us
set tabstop=2
set textwidth=80
set ttyfast
set wrap



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

" === Folding Settings ===
" open folds when opening a file
" autocmd FileType * exe "normal zR"
" set nofoldenable
" set foldmethod=indent
" set foldlevel=99
set foldmethod=marker


" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
" autocmd BufWritePost *.py !black %

" Reload this vimrc when edited
" This is commented out, while I am doing heavy editing of the file
" because I can't stop saving, triggering resourcing
" autocmd BufWritePost ~/.config/dotfiles/nvim/init.vim source %

" ===============================================================
" ================= THE LAND OF SHORTCUTS =======================
" ===============================================================

" I use this for creating code blocks in Markdownfiles
noremap <leader>` <cr>i```bash<cr>```<Esc>O

" Correct Spelling
noremap <leader>s 1z=

" Vim Specific
nnoremap <leader>h :set cursorline!<CR>
nnoremap <leader>H :set cursorline! cursorcolumn!<CR>
noremap ,, <esc>:w!<cr>
noremap ff :resize 100 <cr> <bar> :vertical resize 220<cr>
noremap fm <C-w>=
noremap <leader>e :edit %:h<cr>

noremap <leader>pp :set paste<cr>
noremap <leader>pk :set nopaste<cr>

noremap <leader>cs :colorscheme
noremap <silent><leader>jl :!wal --theme random_dark &<cr>
noremap <silent><leader>Y :!wal --theme random_dark &<cr>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" === Shortcuts to custom functions ===

" Turn Off all Sounds and Gifs
nnoremap <leader>os :!nomeme<cr>

" nojam cuts off all fluidsynth processes
nnoremap <leader>nj :!nojam<cr>

" Twitch Commands
nnoremap <silent> <leader>im :call AddImport()<CR>
nnoremap <leader>m :call <SID>Emojis()<cr>
nnoremap <leader>te :call <SID>TwitchCommands()<cr>
vnoremap <leader>tw :call <SID>SendToTwitch()<cr>
nnoremap <leader>tw :call <SID>SendToTwitch()<cr>
nnoremap <leader>ll :call <SID>MdLink()<cr>
nnoremap <leader>pd :call <SID>PyDocSearch()<cr>
nnoremap <leader>tl :call <SID>LastTwitchMsg()<cr>
nnoremap <leader>rr :call <SID>DecryptTheChat()<cr>
nnoremap <leader>tr :call <SID>PostChat()<cr>
nnoremap <leader>ob :call <SID>ObsSceneCommands()<cr>
nnoremap <leader>oa :call <SID>ObsSourceCommands()<cr>
nnoremap <leader>ts :call <SID>PostChatByUser()<cr>
vmap <leader>gi :call <SID>GistAndPost(mode())<cr>
nmap <leader>gi :call <SID>GistAndPost(mode())<cr>
" nnoremap <leader>h1 :call <SID>MdTitle('=')<cr>
" nnoremap <leader>h2 :call <SID>MdTitle('-')<cr>


" _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
" _-_-_-_-_-_-_ Plugin Specific Configuration _-_-_-_-_-_-_
" _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

" ====== Plug 'vimwiki/vimwiki' ======

" We want to use the hotlinking of wiki files
" With Markdown highlighting
" We should explore how we can use .md
" let g:vimwiki_list = [{'path': '/home/begin/vimwiki/',
"                      \ 'syntax': 'markdown', 'ext': '.wiki'}]


" ======= Plug 'junegunn/limelight.vim' ======

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
" We must have this set of we will see the following error:
"   Unsupported color scheme. g:limelight_conceal_ctermfg required.
" Note: I have also haven't found what this configures

" What color the unfocused text should be
" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = '#777777'
" We must have this set of we will see the following error:
"   Cannot calculate background color.

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1


" ====== Plug 'junegunn/goyo.vim' ======

" We always want to use Goyo when using limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
noremap <leader>gg :Goyo<cr>


" ======= Plug 'frazrepo/vim-rainbow' =====

let g:rainbow_active = 1


" ====== Plug 'ripxorip/aerojump.nvim' ======

nmap <Leader>as <Plug>(AerojumpSpace)
nmap <Leader>ab <Plug>(AerojumpBolt)
nmap <Leader>aa <Plug>(AerojumpFromCursorBolt)
nmap <Leader>ad <Plug>(AerojumpDefault) " Boring mode


" ======= Plug 'KabbAmine/vCoolor.vim' =======

nnoremap <leader>C :VCoolor<CR>


" ====== Plug 'bronson/vim-trailing-whitespace' ======

noremap <leader>ff :FixWhitespace<cr>


" ====== Plug 'godlygeek/tabular' ======

noremap <leader>tt  :Tabularize/


" ======= Plug 'cloudhead/neovim-fuzzy' ======

nnoremap <C-t> :FuzzyOpen<CR>
nnoremap <C-p> :FuzzyGrep<CR>


" ======= Plug 'vim-test/vim-test' ======

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>


" ======= Plug 'autozimu/LanguageClient-neovim' ======

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ 'go': ['gopls']
    \ }

" Run gofmt on save
" autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> rn :call LanguageClient#textDocument_rename()<CR>


" ====== Plugins Plugins Plugins =======

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
  silent !mkdir -p ~/.config/nvim/autoload/
  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
  Plug 'KabbAmine/vCoolor.vim'
  Plug 'PotatoesMaster/i3-vim-syntax'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'cloudhead/neovim-fuzzy'
  Plug 'dylanaraps/wal.vim'
  Plug 'frazrepo/vim-rainbow'
  Plug 'godlygeek/tabular'
  Plug 'jreybert/vimagit'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'mattn/gist-vim'
  Plug 'mattn/webapi-vim'
  Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'

  Plug 'mitsuhiko/vim-jinja'
  Plug 'hashivim/vim-terraform'

  Plug 'kshenoy/vim-signature'
  " Plug 'vimwiki/vimwiki'
  " Plug 'ctrlpvim/ctrlp.vim'
  " Plug 'jacquesbh/vim-showmarks'
  " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
  Plug 'rhysd/committia.vim'
  Plug 'janko/vim-test'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'unkiwii/vim-nerdtree-sync'
  Plug 'mattn/emmet-vim'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" This is for COC?
let g:python3_host_prog = '/usr/bin/python3'

" ================
" ===== COC ======
" ================

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
" set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
" Use `complete_info` if your (Neo)Vim version supports it.
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)


" GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
if (index(['vim','help'], &filetype) >= 0)
  execute 'h '.expand('<cword>')
else
  call CocAction('doHover')
endif
endfunction

nnoremap <leader>c :call <SID>toggle_extension()<CR>
function! s:toggle_extension()
  call CocAction('toggleExtension')
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
autocmd!
" Setup formatexpr specified filetype(s).
autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
" Update signature help on jump placeholder.
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
",set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


" =======================
" ====== FUNCTIONS ======
" =======================

function! s:PostChatByUser()
  let s:viewer = input('SearcSearchh: ')
  let s:chat=system('beginchat -a | grep -i ' . s:viewer . ' | tail -5 ')
  let @+ = s:chat
endfunction

function! s:LastTwitchMsg()
  let s:chat=system('beginchat -c 2')
  let @+ = s:chat
  execute "normal! p"
endfunction

function! s:ObsSceneCommands()
  let s:chat=system('echo "codin\ncubin\nbrb\nstartin\nlecture\nbreakin\nnews" | dmenu -l 29 | xargs scene')
endfunction

function! s:ObsSourceCommands()
  let s:chat=system('echo "jdi\nidk\nwyp\ni_like_that_thing\ni_hate_that_thing\nrevolution\npeace" | dmenu -l 30 | xargs so')
endfunction

function! s:Emojis()
  let s:emoji=system('cat ~/.local/share/larbs/emoji | dmenu -l 30  ')
  let @+ = s:emoji
  execute "normal! pld$"
endfunction

function! s:TwitchCommands()
  let s:chat=system('cat ~/.config/TWITCH_CHAT_COMMANDS | dmenu -l 30 | xargs beginbot')
endfunction

function! s:DecryptTheChat()
  let s:chat=system('beginchat -c 1')
  let @+ = s:chat
  execute "normal! p"
endfunction

function! s:PyDocSearch()
  let s:search = input("Python Doc Keyword: ")
  " pydoc3 -k <keyword>
  " Search for a keyword in the synopsis lines of all available modules.
  let s:module=system('pydoc3 -k string | dmenu -l 30')
  let @+ = s:module
endfunction

function! s:PostChat()
  let s:chat=system('beginchat')
  let @+ = s:chat
endfunction

function! s:SendToTwitch()
  let s:msg=getline('.')
  " Escape "'s or we won't be able to send lines with "
  let s:msg=substitute(s:msg, '"', '\\\"', '')
  let s:regexForUrl='[a-z]*:\/\/[^ >,;)]*'
  let s:uri=matchstr(s:msg, s:regexForUrl)
  if len(s:uri)>0
      let s:twitch_call=system('beginbot " ' .  s:uri. '"')
  else
      let s:twitch_call=system('beginbot " ' .  s:msg . '"')
  endif
endfunction

" ❤Viewer supplied ❤

function! s:MdTitle(sign)
  let cnt=strwidth(getline('.'))
  execute "normal! o" repeat(a:sign,cnt)
  execute "normal! 0xj"
endfunction

" function and shortcut to add 'import <word under cursor>' to the top of the file
function! AddImport()
  let module = expand("<cword>")
  call append(0, "import " . module)
endfunction

function! s:GistAndPost(type)
  if a:type ==# 'V'
    let l:lines = getline("'<", "'>")
  else
    let l:lines = getline('^', '$')
  endif
  let l:uri = system('gist', l:lines)
  let s:chat=system('beginbot ' . l:uri . ' ')
endfunction

" Get title of youtube link
function! s:YoutubeTitle(ytUrl)
  " what is . and the a: ????
  let l:ytTitle=system('youtube-dl -e "' . a:ytUrl . '"')
  return l:ytTitle
endfunction

function! s:CurlTitle(url)
  let s:rawTitle=system('curl -s ' . a:url . ' | grep "<title>"')
  if len(s:rawTitle)>0
      let s:title=substitute(substitute(s:rawTitle, '<title>', '', ''), '</title>', '', '')
  else
      let s:title=''
  endif
  return s:title
endfunction

function s:MdCreateLink(title, url, posStart, posEnd)
  let l:curPos=getcurpos()[1:]
  " set cursor to end of url to add ")"
  call cursor(l:curPos[0], a:posEnd)
  execute "normal! a)"
  " set cursor to start of url
  call cursor(l:curPos[0], a:posStart)
  execute "normal! i[" . a:title . "](\<esc>"
endfunction

" Create Markdown link getting title from url
function! s:MdLink()
  " Should reach cannonicial regex for URLs
  let s:regexForUrl='[a-z]*:\/\/[^ >,;)]*'

  " matchstr is part vimscript?
  " getline means grab the whole line
  let s:uri=matchstr(getline('.'), s:regexForUrl)

  let s:posStart=match(getline('.'), s:regexForUrl) + 1
  let s:posEnd=matchend(getline('.'), s:regexForUrl)

  if len(matchstr(s:uri, 'youtube\.com'))>0
      let s:title=s:YoutubeTitle(s:uri)
  elseif len(matchstr(s:uri, 'youtu.be'))>0
      let s:title=s:YoutubeTitle(s:uri)
  else
      let s:title=s:CurlTitle(s:uri)
  endif
  let s:cleanTitle=substitute(s:title, '\n\+$', '', '')
  call s:MdCreateLink(s:cleanTitle, s:uri, s:posStart, s:posEnd)
endfunction


" ~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~ Colors ~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~


" colorscheme murphy
" colorscheme torte
set t_Co=256                         " Enable 256 colors
" set termguicolors                    " Enable GUI colors for the terminal to get truecolor
"
" We have to load the colorscheme first
" and then customize the other colors
colorscheme wal


hi Search guibg=#0478A4 guifg=wheat

" Black and Purple
" highlight Pmenu guibg=Black guifg=Magenta
" highlight PmenuSel guibg=Black guifg=#66ff00 gui=bold

" Navy and Wheat
highlight Pmenu guibg=#000593 guifg=wheat
highlight PmenuSel guibg=#000593 guifg=#66ff00 gui=bold

" This is not working with Tmux
highlight Cursor guibg=#626262

" Easter Pack
" highlight CursorLine guibg=#09F953 guifg=black
" highlight CursorColumn guibg=#FC78DE guifg=white

" Goth Pack
" highlight CursorLine guibg=darkred guifg=white
" highlight CursorColumn guibg=black guifg=darkred

" Joker Theme
highlight CursorLine guibg=#21FF13 guifg=black
highlight CursorColumn guibg=#9E00FF guifg=darkred

" 70's Xmas
" highlight CursorLine guibg=#660007 guifg=black
" highlight CursorColumn guibg=#083700 guifg=darkred

" What Color to highlight hlsearches
highlight Visual guibg=#07C7CF guifg=Black

" highlight SignColumn ctermbg=0
highlight SignColumn guibg=0

" hi! VertSplit"  .s:fmt_none   .s:fg_red .s:bg_red
"
" ==============================
" ====== Begin Can't Type ======
" ==============================

iab teh the
iab eth the
iab wikipedia Wikipedia
iab beginbux BeginBux™
iab startup sTaRtUp

" ----- Term ------
tnoremap <C-[><C-[> <C-\><C-n>








let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

" nnoremap <S-h> :call ToggleHiddenAll()<CR>

nnoremap <leader>re :call ClearRegs()<CR>

function ClearRegs() abort
  let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"*+', '\zs')
  for r in regs
    call setreg(r, @_)
  endfor
endfunction

function FillNames() abort
  let regs=split('abcdefghijklmnopqrstuvwxyz', '\zs')
  for r in regs
    let word=system("cat /usr/share/dict/words | grep " . "^" . toupper(shellescape(r)) .  " | shuf -n 1")
    call setreg(r, substitute(word, '\n$', '', 'g'))
  endfor
endfunction

function FillRegs() abort
  let regs=split('abcdefghijklmnopqrstuvwxyz', '\zs')
  for r in regs
    let word=system("cat /usr/share/dict/words | grep " . "^" . shellescape(r) .  " | shuf -n 1")
    call setreg(r, substitute(word, '\n$', '', 'g'))
  endfor
endfunction

nnoremap <leader>te :call OpenTests()<CR>

function! OpenTests()
  let test_file=substitute(expand('%:t'), '^', "test_", "")
  execute "rightbelow vsplit " .. test_file
endfunction

function! AltTestFile()
  let test_file=substitute(expand('%:t'), '^', "test_", "")
  execute ":bad " .. test_file
  let @#=test_file
endfunction

nnoremap <leader>bp :call GoBreakpoint()<CR>
function! GoBreakpoint()
  let current_line=line(".")
  let breakpoint=expand("%:t") . ":" . current_line
  echo breakpoint
  let @+="break " . breakpoint
endfunction

" :set scl=no   " force the signcolumn to disappear
" :set scl=yes  " force the signcolumn to appear
" :set scl=auto " return the signcolumn to the default behaviour

nnoremap <leader>mm :set scl=no<CR>
nnoremap <leader>nn :set scl=auto<CR>

nnoremap <leader>tm :SignatureToggle<CR>

nnoremap <leader>mg :marks ABCDEFGHIJKLMNOPQRSTUVWYXZ<CR>
nnoremap <leader>mA :marks ABCDEFGHIJKLMNOPQRSTUVWYXZ<CR>
nnoremap <leader>ma :marks abcdefghijklmnopqrstuvwyxz<CR>
nnoremap <leader>m0 :marks 0123456789<CR>
nnoremap <leader>ms :marks \"\[\]\^\.\<\>\'\`<CR>

nnoremap <leader>no :set rnu!<CR>

noremap <leader>rc :source ~/.config/nvim/init.vim<cr>
" imap <c-u> <esc>gUiwA
" noremap <c-u> gUiw
" The final ma onlu works because it's vim-signature
"
" nmap <c-u> magUiw`a:delm a<CR>
" nmap <c-u> m"gUiw`"
nmap <c-u> m`gUiw``

nnoremap <leader>md :call DeleteAllMarks()<CR>
function! DeleteAllMarks()
  execute ":delmarks!"
  execute ":delmarks 0123456789"
  " I want to save my marks now
  " execute ":delmarks ABCDEFGHIJKLMNOPQRSTUVWYXZ"
  execute ":wsh!"
endfunction

let maplocalleader=","
" autocmd FileType *.py nnoremap <LocalLeader>r !python %<CR>
" autocmd FileType *.go nnoremap <LocalLeader>r !go run ./%<CR>
"

:nnoremap <leader>ev :vs $MYVIMRC<CR>

:iabbrev @@    https://davidbegin.com
:iabbrev ccopy Copyright 2020 David Begin, all rights reserved.

:iabbrev ssig -- <cr>David Begin<cr>https://davidbegin.com

:nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
:nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
:vnoremap <localleader>" <esc>m`'<i"<esc>A"<esc>``

:inoremap jk <esc>
