
Y88b      / 888      e    e                888   ,88~-_   888   | 888~-_   888b    |      e      888
 Y88b    /  888     d8b  d8b               888  d888   \  888   | 888   \  |Y88b   |     d8b     888
  Y88b  /   888    d888bdY88b              888 88888    | 888   | 888    | | Y88b  |    /Y88b    888
   Y888/    888   / Y88Y Y888b             888 88888    | 888   | 888   /  |  Y88b |   /  Y88b   888
    Y8/     888  /   YY   Y888b        |   88P  Y888   /  Y88   | 888_-~   |   Y88b|  /____Y88b  888
     Y      888 /          Y888b        \__8"    `88_-~    "8__/  888 ~-_  |    Y888 /      Y88b 888____


## What is this for?

To help organize and focus my current vim efforts.
Listing what I am researching, annoyed with, working on, feeling unsure about etc.

## Warm Up

- Read a Helpfile
- Setup Morning Notes
- lazygit
  - lg
- Use H, M, L more
- use cw more
- CTRL-O and CTRL-I -> Hop forward and back

## Help ins-completion

Spelling: Ctrl-X CTRL-S

  - Philosophy
  - Physical
  - Indigenous
  - Confucianism
  - Zoroastrianism

Files:  CTRL-x CTRL-f | keep repeating to navigate in nested files
  - How do we get the this to work for :e

L -> Whole line

keywords in 'dictionary'				            |i_CTRL-X_CTRL-K|
keywords in 'thesaurus', thesaurus-style		|i_CTRL-X_CTRL-T|
keywords in the current file				        |i_CTRL-X_CTRL-N|
keywords in 'complete'				              |i_CTRL-N| |i_CTRL-P|
Vim command-line					                  |i_CTRL-X_CTRL-V|


## Jokes

  - CTRL-y and CTRL-e in insert mode, below or above respectively


## Go-Vim

- Go to Diagnostic CTRL-N not working
- autcomplete in comments not working

- Figure out how to use Vimux
  - https://github.com/benmills/vimux
  - townzz: I use vimuxRunLastCommand, vimuxPromptCommand so I quickly run commands
            like go build, go run main.go, etc... in a separate window for quick testing.


## New Habits

- vim-dervish
  - off nerdtree
  - netrw is too slow, its driving me crazy
  - now dervish:
    - -
    - v
    - t
    - e
    - s

## Dotfile Navigating (This is with personal Global Marks)

- V -> init.vim
- D -> diagnostic.vim
- C -> colors.vim
- O -> completion.vim
- L -> Lua
- G -> Vim-Go
- P -> Plugins

## New Shortcuts

- <leader>vv -> search in nvim dotfiles
- <leader>rr -> ranger in floatterm
- <leader>lg -> lazygit in floatterm

## Tmux Changes

- Moved Tmux Prefix to CTRL-b
  - right under the fingers on the home row

## Keyboard Changes

- moved leader to <Space>

## Keyboard Practice

$  -> End       -> 2nd-Layer s
^  -> Beginning -> 2nd-layer x
{} -> paragraph -> 2nd-layer er
() -> sentence  -> 2nd-layer df

Number Pad on 2nd Layer

## Plugins

- vim-surround
  - Need to use this more effectively

- Vim Signature
  - Toggling Marks
    - alphabetically moving between marks
      - Left-hand -> 2nd layer ]
      - Right Hand ' with the pinky

- Telescope:
  - CTRL-v -> open in split (s is also an option....but who horizontal splits?)

### Keymaps

- <leader>tg -> telescoping Greping
- <leader>tp -> File searching
- <leader>vv -> vim dotfiles searching

## Researching

- rockerboo: https://github.com/tjdevries/express_line.nvim

- vf{%d = one of my most used commands
  - Prime
- <c-d> <- dedent
- <d-t> <- tag in

- How do we move lines up and down
  - ddkP

## Mouseless Goals

- I don't think I'm going to throw my mouse away
  - But i'm going to keep it off my desk,
    to see what other habits form
    ....lynx, QuteBrowser

## Tweaking

- vim-go settings
- completion settings everywhere
- keymappings everywhere

## Working On

- use cw more
- Use the :help more
- text-objects
- Make the current cursor at the Top
  - zt

## Annoyed with

- Surround quotes life. Too many auto-quotes
- fmt.Println()
  -> getting an LSP error
  -> Might be in relation to autopairs
- Making Markdown Links
- fm is not working
  - fm not working
- Goyo is breaking thangs on exit
- Auto complete for vim things 
- Terraform LSP
  - https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/after/plugin/z_langserver.vim
- indentation

## Help Talk

:help filetype
:help plugin
:help syntax
:help indent
:help backspace
:help swapfile
:help spelling
:help text-object
:help :\bar
:help omnifunc
:help grep
:helpgrep ins-completion
  - then :copen
:help copen


## Ideas

## Improving Use of Help

My Help was broke, but now seems to work.
I need to make sure I am using help to its fullest.

- https://vim.fandom.com/wiki/Learn_to_use_help
- CTRL-] -> ref in help
  Press Ctrl-] to follow the link (jump to the quickref topic).
  After browsing the quickref topic, press Ctrl-T to go back to the previous topic.

## Scraps

" builtin.current_buffer_fuzzy_find = function(opts)
" -- Confert currently quickfixlist to telescope
" require('telescope.builtin').quickfix()
" -- Convert currently loclist to telescope
" require('telescope.builtin').loclist()

How do I get all the names in a folder

Works like a charm!
```
:r ls config/
```
