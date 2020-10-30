
\ \   / (_)_ __ ___       | | ___  _   _ _ __ _ __   __ _| |
 \ \ / /| | '_ ` _ \   _  | |/ _ \| | | | '__| '_ \ / _` | |
  \ V / | | | | | | | | |_| | (_) | |_| | |  | | | | (_| | |
   \_/  |_|_| |_| |_|  \___/ \___/ \__,_|_|  |_| |_|\__,_|_|

## What is this for?

To help organize and focus my current vim efforts.
Listing what I am researching, annoyed with, working on, feeling unsure about etc.

## Weekly Habits

- Use H, M, L more

- use cw more

- CTRL-O and CTRL-I -> Hop forward and back

- f after search ; to repeat
- F after search ; to repeat

- You can use _ to jump the beginning
- $ -> end   Layer-1(s)
- ^ -> front Layer-1(x)
  - c$ -> change this lin""
    - C  ->
  - d^ -> delete to the front

- zt / zb

]s (vs) -> Next MisSpelling (Layer-1+v)
[s (cs) -> Next MisSpelling (Layer-1+v)

### Indent

Normal/Visual Mode:
- >
- <

Insert Mode:
- <c-t> <- indent
- <c-d> <- dedent

### Vim Commentary

gcap
gcip
gcc

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

## Testing in Vim

Vim-Test (I use it for python)
Vim-Go   (nearest go-test)
Vimux for the Tmux splitting

## BEGIN Project

- Telescope menu of Global Marks

## Desires

## Annoyed with

## Plugins to checkout

- https://github.com/tpope/vim-tbone

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
