
\ \   / (_)_ __ ___       | | ___  _   _ _ __ _ __   __ _| |
 \ \ / /| | '_ ` _ \   _  | |/ _ \| | | | '__| '_ \ / _` | |
  \ V / | | | | | | | | |_| | (_) | |_| | |  | | | | (_| | |
   \_/  |_|_| |_| |_|  \___/ \___/ \__,_|_|  |_| |_|\__,_|_|

## What is this for?

To help organize and focus my current vim efforts.
Listing what I am researching, annoyed with, working on, feeling unsure about etc.

## Habits We Are Trying to Build

- Use H, M, L more
- zt / zb

- use c more
  - cw
  - C

- CTRL-O and CTRL-I -> Hop forward and back

- f/F -> ; to repeat

- $ -> end   Layer-1(s)
- ^ -> front Layer-1(x)
- _ -> front Layer-1(-)

]s (vs) -> Next MisSpelling (Layer-1+v)
[s (cs) -> Next MisSpelling (Layer-1+v)

### Indenting

Normal/Visual Mode:
- >
- <

Insert Mode:
- <c-t> <- indent
- <c-d> <- dedent

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
    - CTRL-Gs B -> {}

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

## BEGIN Project

- Telescope menu of Global Marks

## Desires

## Annoyed with

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
