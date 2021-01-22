
\ \   / (_)_ __ ___       | | ___  _   _ _ __ _ __   __ _| |
 \ \ / /| | '_ ` _ \   _  | |/ _ \| | | | '__| '_ \ / _` | |
  \ V / | | | | | | | | |_| | (_) | |_| | |  | | | | (_| | |
   \_/  |_|_| |_| |_|  \___/ \___/ \__,_|_|  |_| |_|\__,_|_|


## Potential Day

- Snippets
- Removing Vim-go, Customizing

## The worst Begin is doing

- Changing my font-size to diagnostics

:copen
<leader>qf -> opens up quickfixlist with telescope

## Vim Day

- https://vimawesome.com/plugin/unimpaired-vim
- Repeat of Go debugging

What does this mean??

```
cpoptions=aABceFs_
```









## Cpoptions Game?

Game 1: name you Cpoptions?

Game 2: identify what all of them do?
























I want to meet someone who doesn't use B in cpopotions
  -> to be able to get CTRl-V like behavior from \

- Quellus: hot take: I've never used B but that's due to a lack of proper education

Do I want to use f?
		- f	When included, a ":read" command with a file name
			argument will set the file name for the current buffer,
			if the current buffer doesn't have a file name yet.

3.0???? What the heck??? What do I want??k
  -s	Set buffer options when entering the buffer for the
    first time.  This is like it is in Vim version 3.0.
    And it is the default.  If not present the options are
    set when the buffer is created.

IS THIS WHAT I WANT???
  _	When using |cw| on a word, do not include the
    whitespace following the word in the motion.


## What is this for?

To help organize and focus my current vim efforts.
Listing what I am researching, annoyed with, working on, feeling unsure about etc.

## Vim Confessions

I use :vs to split
then asbjorn told me about CTRL-w v
....but prime uses <leader>pv
....and I messed with it, switched  it to dirvish


## Habits We Are Trying to Build

- Ctrl-w v -> vertical split

:help terminal-emulator
- delve
  Set breakpoint  <leader>bp
  Run DlvDebug    <leader>db
  Run DlvTest     <leader>dt

- Moving around:
  {} -> to scan up and down

- % for matching thang
  (Hello There)
  {Hello There}
  [Hello There]

- H M, L more
  - H -> Top
  - M -> Middle
  - L -> Bottom
- zt / zb

- use c more
  - cw
  - C

- CTRL-O and CTRL-I -> Hop forward and back

- f/F -> ; to repeat

- $ -> end   Layer-1(s)
- ^ -> front Layer-1(x)
- _ -> front Layer-1(-)

]s (vs) -> Next Misspelling (Layer-1+)
[s (cs) -> Next Misspelling (Layer-1+v)

### Indenting

Normal/Visual Mode:
- >
- <

Insert Mode:
- <CTRL-t> <- indent
- <CTRL-d> <- dedent

This still feels like I'm not powerful/natural enough

### Vim Commentary

gcap/gcip -> comment out outer/inner paragraph
gcc       -> comment out line

### Surround

- CTRL-S vim-surround shortcuts
  - b -> )
  - B -> }
  - r -> ]
  - a -> >
  - " -> ""
  - Insert Mode:
    - You don't need this
    - CTRL-Gs B -> {}
- https://cheatography.com/mutanclan/cheat-sheets/vim-tpope-vim-surround/

### Dirvish

  - - current directory
  - a or v -> open in new split
  - %
  - Shdo
    - x to mark a file
    - :Shdo! to operate on the files
    - Z! to execute the command
  - I am ignorant of all the ways of creating files, just in vim.
  - When do you need to !mv and when can you just move

### QuickFixlist

<leader>t -> make and store errors in QuickFixlist
<leader>qf -> Telescope for QuickFixlist errors
:cp -> navigate to prev error
:cn -> navigate to next error
:cl -> list all errors
:cbe
  - 2cbe
    -> go to error below
:cabo
  - 2cabo
    -> go to error above

:cf -> take me to the next error

How do I navigate to the next quickfix error, wrapping around in a file

## Testing in Go

```
map <Leader>gj :VimuxCloseRunner<CR>
map <leader>gn :GolangTestFocused<CR>
map <leader>gm :GolangTestCurrentPackage<CR>
map <leader>gk :call VimuxRunLastCommand()<CR>

nnoremap <buffer> <leader>t :Make!<CR>
nnoremap <buffer> <leader>y :Dispatch make test<CR>
  -> sometimes these errors aren't populating
```

- running individual tests/file tests
  - Vimux and Vimux-GO (Really don't need)
    -> to run focused tests in a vertical split
- Running the whole test-suite
  -> vim-dispatch
    -> runs in a horizontal Tmux split
- we compile with dispatch inthe background, and populate our quickfix list
  with errors

## Desires

## Annoyed with

- Redoing
  - Sometimes I accidently deleted text and
    it's not in my undo
    CTRL-R -> already at newest change

:help undo-redo

## Plugins to checkout

- https://github.com/tpope/vim-tbone
- https://github.com/tpope/vim-dispatch
- https://github.com/tpope/vim-tbone
- https://github.com/tpope/vim-abolish
- https://github.com/tpope/vim-speeddating
- https://github.com/tpope/vim-projectionist
- https://github.com/tpope/vim-dadbod
  - For Postgresql
- https://github.com/tpope/vim-fugitive
  - Versus lazygit


## Vim Insults / Vimsults

- Shutup bwipe

## General Vim Philosophy

- I avoid adding lots of things on save
  ....since I save soooo much

## Tmux (NOT VIM!)

- prefix-$ rename Session
- prefix-!
  - Break out Window from Pane

## Explore

```
theprimeagen: fun! TrimWhitespace() let l:save = winsaveview() keeppatterns %s/\s\+$//e call winrestview(l:save) endfun
```

theprimeagen: Then put your cursor on it and type gF
~/.config/dotfiles/nvim/plug_init.vim:30
Try these commands on this path:
  - gf
  - gF
  - CTRL-w f -> open in a split
  - CTRL-w F -> open in split on exact line

dzintars_dev: Begin... can you tell bit more about :mksession workspace.vim? Do you use it? How? Is it worth?

dzintars_dev: today tried to capture tmux layout in the script. Turns out i should set the window size explicitly with tmux new -s "$SESSION" -n 'Code' -d -x "$(tput cols)" -y "$(tput lines)"

## This to explore


smokingears: Hey begin you ever set the scrolloff command to keep your cursor in the middle?
stupac62: yes for goyo mode
stupac62: set scrolloff=999
stupac62: i thought you had it set like that for goyo

help setreg

---

## Confused Begin

- My debug workflow

- https://github.com/ThePrimeagen/harpoon
