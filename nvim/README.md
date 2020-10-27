
\ \   / (_)_ __ ___       | | ___  _   _ _ __ _ __   __ _| |
 \ \ / /| | '_ ` _ \   _  | |/ _ \| | | | '__| '_ \ / _` | |
  \ V / | | | | | | | | |_| | (_) | |_| | |  | | | | (_| | |
   \_/  |_|_| |_| |_|  \___/ \___/ \__,_|_|  |_| |_|\__,_|_|

## What is this for?

To help organize and focus my current vim efforts.
Listing what I am researching, annoyed with, working on, feeling unsure about etc.

## Weekly Habits

- f after search ; to repeat
- F after search ; to repeat

- more c in general

- $ -> end   Layer-1(s)
- ^ -> front Layer-1(x)
  - c$ -> change this lin""
    - C  ->
  - d^ -> delete to the front
- You can use _ to jump the beginning

Difference in ^ and _

- zt

]s (vs) -> Next MisSpelling (Layer-1+v)
[s (cs) -> Next MisSpelling (Layer-1+v)

## Indent Problems

Normal/Visual Mode:
- >
- <

Insert Mode:
- <c-t> <- indent
- <c-d> <- dedent

## New Plugins

- CTRL-S vim-surround shortcuts
  - b -> )
  - B -> }
  - r -> ]
  - a -> >
  - " -> ""
  - Insert Mode:
    - CTRL-Gs B -> {}

- Better Dirvish
  - -
  - a or v -> open in new split
  - %
  - Shdo
    - x to mark a file
    - :Shdo! to operate on the files
    - Z! to execute the command
  - I am ignorant of all the ways of creating files, just in vim.
  - When do you need to !mv and when can you just move

hurricanehrndz: If you use netwr (:Explore or :Sexplore) you can move with R,
perhaps you just haven't done enough sexploring

## Projectionist

tpope-projectionist

From a globbing perspective, "*" is actually a stand in for "**/*".  For
advanced cases, you can include both globs explicitly: "test/**/test_*.rb".
When expanding with {}, the ** and * portions are joined with a slash.  If
necessary, the dirname and basename expansions can be used to split the value
back apart.

.projections.json
Go Example:
```
{
  "pkg/*.go": {
    "alternate": "pkg/{dirname}/{basename}_test.go",
    "type": "source"
  },
  "pkg/*_test.go": {
    "alternate": "pkg/{dirname}/{basename}.go",
    "type": "test"
  }
}
```

## QuickFixlist

<leader>t -> make and store errors in QuickFixlist
<leader>qf -> Telescope for QuickFixlist errors

:cp
:cn


:cl -> list all errors

:cbe
  - 2cbe
    -> go to error below
:cabo
  - 2cabo
    -> go to error above


How to hop to next quickfix error

## Shdo Workflow

- mark some files
- record a macro
- run the script

- Editing the macro (let)

:let @a="CTRL-a"

Quick rename of a file
yy !mv CTRL-v Ctrl-v (edit the name an press enter)

Is there a way, to not have to say the filename twice?
  - not using mv

## List of Lists

- quickfix
- location
- arglist
  3. The argument list				*argument-list* *arglist*


vi -> arglist
vim -> buffer

|:arglocal|.


### I Don't use this
You can use the argument list with the following commands, and with the
expression functions |argc()| and |argv()|.  These all work on the argument
list of the current window.

---
bebenzer: https://www.thesprucepets.com/how-long-do-parrots-and-other-pet-birds-live-1238433 some can live up to 60 years, that's amazing

- Weekly Vim Global Marks
  - W -> Weekly Notes
  - G -> Go Notes
  - D -> DB Notes

## Dotfile Navigating (This is with personal Global Marks)

- D -> Database Notes
- W -> Weekly Notes
- G -> Go Notes
- J -> Vim Journal
- V -> init.vim
- C -> colors.vim
- O -> completion.vim
- L -> Lua
- P -> Plugins

## Tmux Journal

- prefix-$ rename Session
- prefix-!
  - How do you break out Window from Pane

## Warm Up

- Setup Morning Notes
- Read a Helpfile
- lazygit
  - lg
- Use H, M, L more
- use cw more
- CTRL-O and CTRL-I -> Hop forward and back

## Whattttt

theprimeagen: Then put your cursor on it and type gF
~/.config/dotfiles/nvim/plug_init.vim:30
Try these commands on this path:
  - gf
  - gF
  - CTRL-w f -> open in a split
  - CTRL-w F -> open in split on exact line

## BEGIN Project

- Telescope menu of Global Marks

## Friday

https://github.com/romainl/vim-qf

## Desires

## Annoyed with

## TODO

- https://github.com/tpope/vim-tbone


## Vim Insults / Vimsults

- Shutup bwipe
