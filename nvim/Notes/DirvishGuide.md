# Dirvish

## Dirvish Design Questions

- Why use the argument-list??

---


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

### I don't understand

Use @# to get the Dirvish buffer from a :Shdo buffer:
:Shdo
mkdir <C-R>#.bk
Z!


  - s -> vertical split above
  - t -> TaB???
  - e -> Edit???

### Dirivsh Shdo Workflow

- mark some files
- record a macro
- run the script

- Editing the macro (let)

:let @a="CTRL-a"

Quick rename of a file
yy !mv CTRL-v Ctrl-v (edit the name an press enter)

Is there a way, to not have to say the filename twice?
  - not using mv

