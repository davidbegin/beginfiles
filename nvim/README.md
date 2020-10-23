
\ \   / (_)_ __ ___       | | ___  _   _ _ __ _ __   __ _| |
 \ \ / /| | '_ ` _ \   _  | |/ _ \| | | | '__| '_ \ / _` | |
  \ V / | | | | | | | | |_| | (_) | |_| | |  | | | | (_| | |
   \_/  |_|_| |_| |_|  \___/ \___/ \__,_|_|  |_| |_|\__,_|_|

## Weekly habits

- CTRL-S vim-surround shortcuts
  - b -> )
  - B -> }
  - r -> ]
  - a -> >
  - " -> ""
  - CTRL-Gs B -> {}
  - CTRL-Gs b -> ()
  - CTRL-Gs B -> {}
  - CTRL-Gs ' -> ''
  - CTRL-Gs " -> ""
- Better Dervish
  - a -> open in new split
  - %
  - Shdo
    - x to mark a file
    - :Shdo! to operate on the files
    - Z! to execute the command
- $ -> end   (Layer-1(0-Indexed)+s
- ^ -> front (Layer-1+x) (Simplified)
  - c$ -> change this lin""
  - d^ -> delete to the front
- zt
]s (vs) -> Next MisSpelling (Layer-1+v)
[s (cs) -> Next MisSpelling (Layer-1+v)
- Weekly Vim Global Marks
  - W -> Weekly Notes
  - G -> Go Notes
  - D -> DB Notes

## Habit Changing

- Make it impossible
  - disable you arrow keys
- Make it annoying
  - put a sleep

## 5 Years Ago Begin

I sat down in a quiet room, and thought to myself, what do I do the most in Vim.
Saving!
.......how can I make this the easiest???
at the time, on my mac keyboard, my ring finger rests on k, above, `,,`
so I made my comma

....Past Begin this made this up, make your own things up!

## What I am Missing

- What are home and end for??

# Dirvish - learn how to use it more

Top Dirvish Features:

- Editing Files:
  - x to add files to arglist
  - :Shdo! to edit those files
  - Z! execute the script on those files

- Highlight section :
  - '<,'>
  - Shdo -> operate on the range
  - {} represents to the file
  - '<,'>Shdo mv {} {}.bk

- Creating Directories and Files in Current Dirvish Buffer (not current working directory)
  - !mkdir %cool
  - :e %cool.txt

- Renaming Files
  - yy
    :!rm Alt-V

- :g/sql/d -> remove all files from dirivish buffer, that match
- :g!/sql/d -> remove all files from dirivish buffer, that DON'T match

Append to quickfix (:'<,'>caddb), iterate with :cdo.

- -> Take me to my directory

#### Dirvish I don't understand

- Sort with :sort, filter with :global. Hit R to reload.
- Append to quickfix (:'<,'>caddb), iterate with :cdo.
- Script with :Shdo[!].

```
:set ft=dirvish on any buffer to enable Dirvish features:
git ls-files | vim +'setf dirvish' -
```
sanshone: +setf is :setf from a shell

:!mkdir %foo

this making a directory in my current buffer working dir???
Why do I need a % here??

So commands and plugins that work with @% and @# do the Right Thing.

:help Shdo

:[range]Shdo[!] {cmd}                               *:Shdo* *dirvish-:Shdo*
    Generates a shell script with {cmd} applied to [range] and the respective
    filepath inserted wherever {} appears in {cmd}. The window-local directory
    is initialized to the current Dirvish directory. If bang ! is given the
    |arglist| is used instead of [range].

    For example, to rename a list of visual-selected files: >
        :'<,'>Shdo mv {} {}-copy.txt

<    Run the script with |Z!| or ":!%".


See `:help arglist`

See the arg list
:args
or :ar

```
a               Opens file in a new, vertical window.
p               Previews file at cursor.
```

## Emotions

- https://github.com/romkatv/powerlevel10k
- What is this all doing for us, what do we want to remove?
- What do we want to customize

#### Do Questions

- Who uses the arglist and for what
- How do people use their buffer list?
- When to use global versus local arglist

### Too Many Dos

Also see |:windo|, |:tabdo|, |:bufdo|, |:cdo|, |:ldo|,
|:cfdo| and |:lfdo|.

!jdi

### I don't understand

Use @# to get the Dirvish buffer from a :Shdo buffer:
:Shdo
mkdir <C-R>#.bk
Z!

## Increasing the respect of Vim

- Neoclassical Visual Editor Improved

drdoomenberg: Neo Classical Visual Editor on a Tablet based Input System?
stupac games: Join twitch chats, ask for advice, and then half through tell
them: BTW: I'm on Neo Classical Visual Editor on a Tablet based Input System?

## Vim Day Ponderings

- The Art of Remapping:
  - The Dangers of Remapping in insert mode
    - jk, or the reverse kj
    - Will this pattern occur naturally
    - What happens if does occur naturally
    - Whats yo timeout

0_nerd: I just did `imap ;; <C-S>b` FeelsGoodMan
0_nerd: My timeout is really short.

Will ;; appear in my regular work.
Where does ;; exist in the world

;; in bash, could be a problem for this remapping.

## Who ends up on Layer 0

- How do you handle you paired friends on Layer-0
  - Programmers are obsessed with: {} () []

## New Habits

- how could we surround, a list of lines in ().
each line is surrounded in its own a ()

- No-Auto Pairs, pairing nirvana
  - Ctrl-S B -> {}
    -> B is from Vim-Surround (A T-Pope Joint)

CTRL-S "
  -> built-in Autopairs
CTRL-S B -> {}
"CTRL-S b -> ()"
CTRL-S r -> []

  -> built-in Neovim or Vim????

  []
  ""
  ''
  ()
  ()
  ()
  ()

OR

CTRL-Gs B -> {}
CTRL-Gs b -> ()
CTRL-Gs B -> {}

```
Finally, there is an experimental insert mode mapping on <C-G>s and <C-S>.
Beware that the latter won't work on terminals with flow control (if you
accidentally freeze your terminal, use <C-Q> to unfreeze it).  The mapping
inserts the specified surroundings and puts the cursor between them.  If,
immediately after the mapping and before the replacement, a second <C-S> or
carriage return is pressed, the prefix, cursor, and suffix will be placed on
three separate lines.  <C-G>S (not <C-G>s) also exhibits this behavior.
```

()
()
()

In visual mode, a simple "S" with an argument wraps the selection.  This is
referred to as the *vS* mapping, although ordinarily there will be
additional keystrokes between the v and S.  In linewise visual mode, the
surroundings are placed on separate lines and indented.  In blockwise visual
mode, each line is surrounded.

A "gS" in visual mode, known as *vgS* , behaves similarly.  In linewise visual
mode, the automatic indenting is suppressed.  In blockwise visual mode, this
enables surrounding past the end of the line with 'virtualedit' set (there
seems to be no way in Vim Script to differentiate between a jagged end of line
selection and a virtual block selected past the end of the line, so two maps
were needed).

### Desires

- Deleting triple quotes
  - 3ds"
"hello nice"
"isidentical"

- Autospell correct mode
  - When I leave insert mode, auto-correct spelling on the line


## Foolish Begin

- How do we handle renaming, moving around files better
  - Used to use Nerdtree
  - Using dirvish now (not that well)
  - Like using ranger for moving stuff around

## Backwards

Ctrl-i -> forward
Ctrl-o -> backward
Ctrl-^ -> flip between two files
'' -> last jump

## Today's Workflow

- Vimux Setup:
  - <leader>gn -> Run neareset Test
  - <leader>gj -> Close Vimux
  - <leader>gh
  - <leader>gm

## Spelling

]s -> Next MisSpelling

## CHECKOUT

- Hunter

  ## The Vim Help Style

- All the details
- .....then an example

## Friday

https://github.com/romainl/vim-qf

## Potential Problems

- I turned off universal LSP remappings,
  if it ain't attached in lua.init.....it ain't gonna work

## Vim Day 10-2

- Quickfix list, Location List, Argslist
- Make our surround skills are improving

## Vim Feelings

code_bleu: vim or nvim...that is the question. I get that nvim has all the cool
stuff, but wouldn't you trap yourself in a corner if you have to ssh into 100's
of servers and more than likely they wont have nvim.

Going from your customized vim, to server vi/vim is the same as going from
neovim to vanilla vi/vim

## What is this for?

To help organize and focus my current vim efforts.
Listing what I am researching, annoyed with, working on, feeling unsure about etc.

## TIL

- PRemix-$ rename Session | Tmux

## Completion Woes

- Different Key combos for triggering completion
- Different Keys for moving through results

- CTRL-X CTRL-S

## Vim Go

Why aren't we seeing errors in our main.go, when
we have errors in our pkg?
- When we have failures in our pkg, it ignores failures in our
  main.go....why????

- Cant override the hover defintion

- Vim-Go: autocomplete
  - autcomplete in comments not working

- Go to Diagnostic CTRL-N not working

- Figure out how to use Vimux
  - https://github.com/benmills/vimux
  - townzz: I use vimuxRunLastCommand, vimuxPromptCommand so I quickly run commands
            like go build, go run main.go, etc... in a separate window for quick testing.


Go Snippets
fn -> fmt.Println()
ff -> fmt.Printf()
ln -> log.Println()
lf -> log.Printf()

g:go_doc_keywordprg_enabled=0

yorked_: Don't think diagnostics are added to quickfix list
How can I get diagnostic into my quickfixlist

How do I navigate issue

Can't use LSP in the Standard Library

## Warm Up

- Read a Helpfile
- Setup Morning Notes
- lazygit
  - lg
- Use H, M, L more
- use cw more
- CTRL-O and CTRL-I -> Hop forward and back

## Teej Challenge

teej_dv: make your ^x^l thing optionally complete other windows
teej_dv: it's a good exercise
erikdotdev: @teej_dv no fuzzy finder for spelling? You're slipping.
teej_dv: we can probably make telescope finder for spell
teej_dv: :)

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

## Local Leaders

you could remap leader, in your vimrc, and have different
keymaps that have different leader commands

Be care of where you define your leader key,
define it up top!!!!

Different Leader, per language
  - Then:

I don't need to decide what localleader is....I could just comma
....but then you got update

Beginbot is Wrong
> - File specifics mappings....but you don't want use leader.
>   sooo its li

- Leader VS Local Leader:
   - Mappings in Plugins!!!! Teej
    - nothgin diff for you personall...unless you are going to switch leaders.
      helpful for leader transition

if you release a plugin with key mappings using leader instead of localleader,
means you are Vim Criminal, Viminal


## Ponderings

- What are keys namespaces for yourself?
  - Example: p n> project wide

stupac62: @beginbot thoughts: (vim keybinds) you shouldn't use leader for insert mode keybinds.

What keys for Key Mapping:
  - What do map under CTRL?
  - What do you map under your leader?

## Jokes

  - CTRL-y and CTRL-e in insert mode, below or above respectively


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

- f after search ; to repeat

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
  - We added vim-repeat, which is real nice

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

- vf%d = one of my most used commands
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

## Vim-Surround

vf"hy

vi"Hello There Very Cool Kany,e

- cs -> change
-> cs"'
change double to single quotes
- ds -> delete
ds"
"delete the double quotes"
- ys -> add
ysiw"
ysiw(
ys$[
ys3w"
ysf."
( - Change inside the surroundy-thangs
)
- ci{ ci(
- cit works for html
- Copy between yi"
- yssb -> wrap the whole line in parentheses
"

s -> sentence
-> yssb
p -> paragraph
-> yspb
t -> tag
f -> function

ysipB -> surround with paragraph with }

---

yssb
yssB
yssr
yss"
yss'

(Surround me in Round Bois)
{Surround me in Curly Bois}
[Surround me in Square Brackets]
"Surround me in Double Quotes"
'Surround me in Single Quotes'

( Surround me in Round Bois )
{ Surround me in Curly Bois }
[ Surround me in Square Brackets ]
"Surround me in Double Quotes"
'Surround me in Single Quotes'

ys3wB
f)w
ys2wr

yse"
<leader>"

{Curly Curly Curly} [Square Square] "Quotes" (Round Round Round)

Curly Curly Curly Square Square Quotes Round Round Round

Curly Curly Curly Square Square Quotes Round Round Round
{Curly Curly Curly} [Square Square] "Quotes" (Round Round Round)

(Curly Curly Curly) [Square Square]
Curly Curly Curly Square Square
Curly Curly Curly Square Square
(Curly Curly Curly) [Square Square]
(Curly Curly Curly) [Square Square]


---

yssb
yssB
yssr
yss"

dsb
dsB
dsr
ds"

vi"
vib
viB
vir

cir <- DOESN'T WORK

ci"
cib
ciB

veS"
v3wSb

In VIsual Mode: S

ys3w"

---

[
  (Hello How Are) You
]

(Hello How Are You)

[Hello How Are You]

{Hello How Are You}

Hello (How) {Are} [You]

---

### Vim Surround Aliases

- b -> )
- B -> }
- r -> ]
- a -> >

- opening side of tag ([{ adds extra space for "tags"
- closing side of tag })] no extra space for "tags"

Now wrap the "entire" line in parentheses with yssb or yss).

stupac62: @beginbot The targets b, B, r, and a
are aliases for ), }, ], and > ', ", `,
                                                *i_CTRL-G_s* *i_CTRL-G_S*
Finally, there is an experimental insert mode mapping on <C-G>s and <C-S>.
Beware that the latter won't work on terminals with flow control (if you
accidentally freeze your terminal, use <C-Q> to unfreeze it).  The mapping
inserts the specified surroundings and puts the cursor between them.  If,
immediately after the mapping and before the replacement, a second <C-S> or
carriage return is pressed, the prefix, cursor, and suffix will be placed on
three separate lines.  <C-G>S (not <C-G>s) also exhibits this behavior.

Hello Begin Time "Hello"

Hello begin "cool" Hi this is nice ( Ok now )

### Resources

https://cheatography.com/mutanclan/cheat-sheets/vim-tpope-vim-surround/

## NO Auto Pairs, All Surround

Ctrl-S "
CTRL-s )
CTRL-s }

Hello this is inside of some  { Curly Bois } this is nice heres a quote: "NICe A
Qutoe, this is cool"

## Autopairs:

- You are constantly turning it on and off

- If you want to get good at competetive programmer, take advice from the
  competetive programmers!!!!

  ...competetive programming is not how 99% of programming is done.
  ...so are you trying to competetive programmer?
  or become a a programmer

  What kind of puzzles do you like

  .....you don't go to home depot, and say I wanna learn to hammer
  you say I want to build X.
  then we ca ngive some advice

## Annoyed with

- Surround quotes life. Too many auto-quotes
  - vim surround
  - its based on motions, so flexible
  - keymap for double quotes
  - https://github.com/tpope/vim-surround
- Making Markdown Links
  - Move to Lua??
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
:help setqflist()
:help cnext

## Ideas

Hello Holy Vim Lord, just bouncing an idea for a Vim Game based on todays confusion.

Vim Scavenger Hunt

Game where random things are placed in Vimland and you're told to fetch them.
  - Marks
  - Registers
  - Quickfix
  - Location List
  - Other places!?!?!

Then you can measure the keystrokes, and provide feedback, or tips.

Also I want like Zelda soundeffects for finding treasure, weapons and what not.

Think theres some meat there? or will it be too limited

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

## TODO

meatchops: bindkey '^e' edit-command-line in zsh to edit current command in vim, save and close to enter it

## Debugging

rockerboo: run nvim with nvim -V2 /tmp/nvim.log
rockerboo: then you can see what files its sourceing
teej: :scriptnamesu

## Python


Neovim Vim Nightly -> Builtin LSP
- Add PyMS Microsoft's Python language server
- hey completion and diagnostic, run, when you see the python language server
  running

## Neovim Advice

- Don't lie to Neovim
  - Specifically related to what your terminal can handle


## Mysteries

hello_im_nix: Do you know how to disable the neovim floating window?
floaterm window
https://github.com/voldikss/vim-floaterm
:help floaterm-faq
mccannch: @Hello_im_nix why don't you want fzf, rg into a float term? I think I am confused

theprimeagen: gF will jump to file and line offset (src/file.go:420 -> gF on filepath)
theprimeagen: That is why I want the terminal
theprimeagen: Try thisjo in vim (in your project). Type a relative path to a file (according to the current file or project root) AND a line offset. ../../path/to/file.go:<lineoffset> (drop the < > (file.go:69))

Try these commands on this path
gf
gF
CTRL-w f
CTRL-w F
```
.config/dotfiles/nvim/plug_init.vim:30
```


theprimeagen: Then put your cursor on it and type gF

## Git

- Lazy Git
- Delta
- Vim-Fugative

## Highlight

teej_dv: ":help vim.highlight.on_yank()"
teej_dv: to see config options if you wanted begin, btw

## Vim Folding

- Vim Folding is nice when refactoring. To get an overview

zR -> open all them folds
zM -> close em all

how to refold all sections based on fold method

## Folder Structure

~/.local/share/nvim/site - ~/.config is for "configs" and plugins are downloaded blobs. so i.e. ~/.local/share/nvim/site/autoload or say ~/.local/share/nvim/site/plugged

:help stdpath

## Confessions

- It's almost Vim-Friday again, and I don't feel like I'm that
  much better at Vim-Surround.

## Tmux Journal

How do you break out Window from Pane
  tmux-prefix !

## All The Lists

- Quickfix list, Location List, Argslist

### Help List

- :help quickfix
- :help quickfix.txt
- :help getqflist()

### Open Questions:

- Do we need errors in the file?
- What do errors look like?
- What does make mean in a vim context
- Whats the use difference for location list and quickfixlist
 - quickfixlist is project wide
  - location is window specific.
    - you might use both, with location, to focus on a
    more specialized area
  - :vimgrep, :grep, :helpgrep, :make
  - :lvimgrep, :lgrep, :lhelpgrep, :lmake

> From inside Vim an easy way to run a command and handle the output is with the
> |:make| command (see below).

```
If you have the error messages in a file you can start Vim with: >
	vim -q filename
```

The 'errorformat' option should be set to match the error messages from your
compiler (see |errorformat| below).

A location list is a window-local quickfix list. You get one after commands
like `:lvimgrep`, `:lgrep`, `:lhelpgrep`, `:lmake`, etc., which create a
location list instead of a quickfix list as the corresponding `:vimgrep`,
`:grep`, `:helpgrep`, `:make` do.
A location list is associated with a window and each window can have a
separate location list.  A location list can be associated with only one
window.  The location list is independent of the quickfix list.



When a window with a location list is split, the new window gets a copy of the
location list.  When there are no longer any references to a location list,
the location list is destroyed.

:mak[e][!] [arguments]	1. All relevant |QuickFixCmdPre| autocommands are
			   executed.

3. An errorfile name is made from 'makeef'.  If
'makeef' doesn't contain "##", and a file with this
name already exists, it is deleted.

When "##" is included, it is replaced by a number to make the name
unique.  This makes sure that the ":make" command doesn't overwrite an
existing file.

----

stupac62: @soulshined if you like math then you like ligatures. IMO
theprimeagen: so i like the idea of p as my first key for anything "project" wide (you can do a). That way I can do pw for grep for word under cursor. pW for WORD under cursor. ps for project search. etc etc
theprimeagen: I love mnemonic
dzintars_dev: !ligatures
teej_dv: newmonics are nice

## Desire

- How do I get  the quickfixlist to stay populated when closing the Buffer
- How do I populate my Quickfixlist, without jumping to an error?
  - Potential running make opening new buffers (hook it up to sound
    to punish myself)

- How do I run other make targets and have them populate the
  quickfixlist

  set makeprg=make\ web

## Viewer Questions

code_bleu: I have changed my <esc> to "kj", but can do "kj" when in "insert (Paste)" mode. Can i get the "kj" to work there too?

## Watch out for

https://github.com/mfussenegger/nvim-dap

---

- What if we have multiple targets to build
- How can I use other make targets, for the quickfixlist

---

Should I be working against one Make target (go exectutable),
and then switching the makeprg, or should I have alias
for select diff make targets

make
make web
make debug
make test

3 Programs:
  - Main the Chatbot
  - WebApp
  - Debug App for Testing

## Things that Scare Me

- https://github.com/nikvdp/neomux

## Delete After or Before the Line (or weave)

Hello | How Are You Doing Right Now
Hello How Are | You Doing Right Now
Hello How Are You Doing | Right Now
Hello How | Are You Doing Right Now
Hello How Are You Doing Right | Now
Hello How Are You | Doing Right Now
Hello How | Are You Doing Right Now

Hello | How Are You Doing Right Now
Hello How Are , You Doing Right Now
Hello How Are You Doing . Right Now
Hello How - Are You Doing Right Now
Hello How Are You Doing Right / Now
Hello How Are You = Doing Right Now
Hello How " Are You Doing Right Now

