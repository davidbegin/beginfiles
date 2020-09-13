#####################
# Current Vim Goals #
#####################

## Improving Use of Help

- https://vim.fandom.com/wiki/Learn_to_use_help

- CTRL-] -> ref in help
  Press Ctrl-] to follow the link (jump to the quickref topic).
  After browsing the quickref topic, press Ctrl-T to go back to the previous topic.
- CTRL-O and CTRL-I -> Hop forward and back

## New Shortcuts

## Keyboard Changes

- moved my leader to <Space>

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

- $  -> End
- ^  -> Beginning
- {} -> paragraph
- () -> sentence

- $  -> 2nd Layer s
- ^  -> 2nd layer x
- {} -> 2nd layer er
- () -> 2nd layer df

- Use H, M, L more
> use cw more

- CTRL-g -> telescoping Greping
- CTRL-p -> File searching

## Researching

- rockerboo: https://github.com/tjdevries/express_line.nvim

- vf{%d = one of my most used commands
  - Prime
- <c-d> <- dedent
- <d-t> <- tag in

- How do we move lines up and down
  - ddkP
teej_dv: @beginbot you should put it in a different register
teej_dv: so you don't overwrite your default register
teej_dv: just any random letter that isn't your normal one haha

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

## Annoyed with

- Surround quotes life. Too many auto-quotes
- fmt.Println()
  -> getting an LSP error
  -> Might be in relation to autopairs
- Making Markdown Links


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

							*v_aw* *aw*
aw			"a word", select [count] words (see |word|).
			Leading or trailing white space is included, but not
			counted.
			When used in Visual linewise mode "aw" switches to
			Visual charwise mode.

							*v_iw* *iw*
iw			"inner word", select [count] words (see |word|).
			White space between words is counted too.
			When used in Visual linewise mode "iw" switches to
			Visual charwise mode.

							*v_aW* *aW*
aW			"a WORD", select [count] WORDs (see |WORD|).
			Leading or trailing white space is included, but not
			counted.
			When used in Visual linewise mode "aW" switches to
			Visual charwise mode.

							*v_iW* *iW*
iW			"inner WORD", select [count] WORDs (see |WORD|).
			White space between words is counted too.
			When used in Visual linewise mode "iW" switches to
			Visual charwise mode.

							*v_as* *as*
as			"a sentence", select [count] sentences (see
			|sentence|).
			When used in Visual mode it is made charwise.

							*v_is* *is*
is			"inner sentence", select [count] sentences (see
			|sentence|).
			When used in Visual mode it is made charwise.

							*v_ap* *ap*
ap			"a paragraph", select [count] paragraphs (see
			|paragraph|).
			Exception: a blank line (only containing white space)
			is also a paragraph boundary.
			When used in Visual mode it is made linewise.

							*v_ip* *ip*
ip			"inner paragraph", select [count] paragraphs (see
			|paragraph|).
			Exception: a blank line (only containing white space)
			is also a paragraph boundary.
			When used in Visual mode it is made linewise.

a]						*v_a]* *v_a[* *a]* *a[*
a[			"a [] block", select [count] '[' ']' blocks.  This
			goes backwards to the [count] unclosed '[', and finds
			the matching ']'.  The enclosed text is selected,
			including the '[' and ']'.
			When used in Visual mode it is made charwise.

i]						*v_i]* *v_i[* *i]* *i[*
i[			"inner [] block", select [count] '[' ']' blocks.  This
			goes backwards to the [count] unclosed '[', and finds
			the matching ']'.  The enclosed text is selected,
			excluding the '[' and ']'.
			When used in Visual mode it is made charwise.

a)							*v_a)* *a)* *a(*
a(							*vab* *v_ab* *v_a(* *ab*
ab			"a block", select [count] blocks, from "[count] [(" to
			the matching ')', including the '(' and ')' (see
			|[(|).  Does not include white space outside of the
			parenthesis.
			When used in Visual mode it is made charwise.

i)							*v_i)* *i)* *i(*
i(							*vib* *v_ib* *v_i(* *ib*
ib			"inner block", select [count] blocks, from "[count] [("
			to the matching ')', excluding the '(' and ')' (see
			|[(|).
			When used in Visual mode it is made charwise.

a>						*v_a>* *v_a<* *a>* *a<*
a<			"a <> block", select [count] <> blocks, from the
			[count]'th unmatched '<' backwards to the matching
			'>', including the '<' and '>'.
			When used in Visual mode it is made charwise.

i>						*v_i>* *v_i<* *i>* *i<*
i<			"inner <> block", select [count] <> blocks, from
			the [count]'th unmatched '<' backwards to the matching
			'>', excluding the '<' and '>'.
			When used in Visual mode it is made charwise.

						*v_at* *at*
at			"a tag block", select [count] tag blocks, from the
			[count]'th unmatched "<aaa>" backwards to the matching
			"</aaa>", including the "<aaa>" and "</aaa>".
			See |tag-blocks| about the details.
			When used in Visual mode it is made charwise.

						*v_it* *it*
it			"inner tag block", select [count] tag blocks, from the
			[count]'th unmatched "<aaa>" backwards to the matching
			"</aaa>", excluding the "<aaa>" and "</aaa>".
			See |tag-blocks| about the details.
			When used in Visual mode it is made charwise.

a}							*v_a}* *a}* *a{*
a{							*v_aB* *v_a{* *aB*
aB			"a Block", select [count] Blocks, from "[count] [{" to
			the matching '}', including the '{' and '}' (see
			|[{|).
			When used in Visual mode it is made charwise.

i}							*v_i}* *i}* *i{*
i{							*v_iB* *v_i{* *iB*
iB			"inner Block", select [count] Blocks, from "[count] [{"
			to the matching '}', excluding the '{' and '}' (see
			|[{|).
			When used in Visual mode it is made charwise.

a"							*v_aquote* *aquote*
a'							*v_a'* *a'*
a`							*v_a`* *a`*
			"a quoted string".  Selects the text from the previous
			quote until the next quote.  The 'quoteescape' option
			is used to skip escaped quotes.
			Only works within one line.
			When the cursor starts on a quote, Vim will figure out
			which quote pairs form a string by searching from the
			start of the line.
			Any trailing white space is included, unless there is
			none, then leading white space is included.
			When used in Visual mode it is made charwise.
			Repeating this object in Visual mode another string is
			included.  A count is currently not used.

i"							*v_iquote* *iquote*
i'							*v_i'* *i'*
i`							*v_i`* *i`*
			Like a", a' and a`, but exclude the quotes and
			repeating won't extend the Visual selection.
			Special case: With a count of 2 the quotes are
			included, but no extra white space as with a"/a'/a`.

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
