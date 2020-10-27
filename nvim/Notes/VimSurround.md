# Vim Surround

https://cheatography.com/mutanclan/cheat-sheets/vim-tpope-vim-surround/

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

