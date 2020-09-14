###############
# Vim Journal #
###############

## What is this for?

To help organize and focus my current vim efforts.
Listing what I am researching, annoyed with, working on, feeling unsure about etc.
This will be constantly moving and evolving.

## New Shortcuts

## Keyboard Changes

- moved my leader to <Space>

## Keyboard Practice

$  -> End       -> 2nd-Layer s
^  -> Beginning -> 2nd-layer x
{} -> paragraph -> 2nd-layer er
() -> sentence  -> 2nd-layer df

Number Pad on 2nd Layer

## Plugins

- vim-dervish
  - off nerdtree
  - netrw is too slow, its driving me crazy
  - now dervish:
    - -
    - v
    - t
    - e
    - s

## Warm Up

- Read a Helpfile

- Setup Morning Notes

- lazygit
  - lg

- Use H, M, L more

- use cw more


### Tele

- CTRL-g -> telescoping Greping
- CTRL-p -> File searching
- CTRL-v -> open in split (s is also an option....but who horizontal splits?)
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
  - Using Snippets
  https://github.com/fatih/vim-go/blob/master/gosnippets/UltiSnips/go.snippets
  - fn - Println
  - go - go func()


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
- Goyo is breaking thangs on exit


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


## Ideas

- I want to be able to just search the top level dierectories and files???
  when things aren't in Git

- Have something that lets me search within a a Header size.
  - either from the top H2,
    or within an H2, the subheadings

---

## Text Motions

```
aw			"a word", select [count] words (see |word|).
iw			"inner word", select [count] words (see |word|).
aW			"a WORD", select [count] WORDs (see |WORD|).
iW			"inner WORD", select [count] WORDs (see |WORD|).
as			"a sentence", select [count] sentences (see
is			"inner sentence", select [count] sentences (see
ap			"a paragraph", select [count] paragraphs (see
ip			"inner paragraph", select [count] paragraphs (see
a]						*v_a]* *v_a[* *a]* *a[*
a[			"a [] block", select [count] '[' ']' blocks.  This
i]						*v_i]* *v_i[* *i]* *i[*
i[			"inner [] block", select [count] '[' ']' blocks.  This
a)							*v_a)* *a)* *a(*
a(							*vab* *v_ab* *v_a(* *ab*
ab			"a block", select [count] blocks, from "[count] [(" to
i)							*v_i)* *i)* *i(*
i(							*vib* *v_ib* *v_i(* *ib*
ib			"inner block", select [count] blocks, from "[count] [("
a>						*v_a>* *v_a<* *a>* *a<*
a<			"a <> block", select [count] <> blocks, from the
i>						*v_i>* *v_i<* *i>* *i<*
i<			"inner <> block", select [count] <> blocks, from
at			"a tag block", select [count] tag blocks, from the
it			"inner tag block", select [count] tag blocks, from the
a}							*v_a}* *a}* *a{*
a{							*v_aB* *v_a{* *aB*
aB			"a Block", select [count] Blocks, from "[count] [{" to
i}							*v_i}* *i}* *i{*
i{							*v_iB* *v_i{* *iB*
iB			"inner Block", select [count] Blocks, from "[count] [{"
a"							*v_aquote* *aquote*
a'							*v_a'* *a'*
a`							*v_a`* *a`*
i"							*v_iquote* *iquote*
i'							*v_i'* *i'*
i`							*v_i`* *i`*
```

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

## Improving Use of Help

My Help was broke, but now seems to work.
I need to make sure I am using help to its fullest.

- https://vim.fandom.com/wiki/Learn_to_use_help
- CTRL-] -> ref in help
  Press Ctrl-] to follow the link (jump to the quickref topic).
  After browsing the quickref topic, press Ctrl-T to go back to the previous topic.
- CTRL-O and CTRL-I -> Hop forward and back
