# Telescope.md

## Step 1

Run :Make! which runs :make with Tmux
in the background
populates the Errorlist/file
<leader>t

## Step 2

Run :cg to read the errorfile
and populate the Quickfixlist with it
THEN run Telescope against the QuickFixlist
<leader>q

## Step 3

Fix Error

## Step 4

Repeat


## Debugging Workflow

Set breakpoint <leader>bp
Run DlvDebug   <leader>db
Run DlvTest <leader>dt
Clear Breakpoints <leader>cl

l or ls -> list current location
locals  -> show locals

p request
or print request
























:caddf

:make uses makeef for error
:cf uses errorfile

- When I call :make
I want :caddf also

:cg[etfile] [errorfile]					*:cg* *:cgetfile*

## Open Questions

- What is the diff between errorfile and quickfixlist???

we are only seeing errors in the QFL, when we are in the file
that contains the errors


I want :make to use the errorfile, used by :cf

```
<leader>T -> compile our program

:copen -> look at the quickfixlist

:cf    -> go to last error in errorfile

<leader>qf -> opens up quickfixlist with telescope
```

When we have multiple errors, we compile to
populate our quickfixlist, we use
<leader>qf to show all quickfixlist errors with Telescope

We navaigate to the error and fix it
recompile
and use <leader>qf
its showing the old error
