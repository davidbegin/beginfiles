# Delve

## What I need

- How do I focus on Non-Vimux Delve
- Or How do I get Syntax highlighting with Vimux

## Difference in Tracepoint and Breakpoint

elitepl3b: "A tracepoint is a breakpoint that does not stop the execution of the program, instead when the tracepoint is hit a notification is displayed"

## What I want from Delve

This Works:
```
x := 1

> set x = 2
```

```
(dlv) set request.Name = "durf"
Command failed: literal string can not be allocated because function calls are not allowed without using 'call'
```
elitepl3b: "Only numerical variables and pointers can be changed."
elitepl3b: set <variable> = <value>
elitepl3b: i guess it's because it's a string
elitepl3b: "Only numerical variables and pointers can be changed."
elitepl3b: you could make another string and then change the request.Name pointer to another string

elitepl3b: because cpu's know about pointers, not references
elitepl3b: like, you could swap the pointers of two variables

https://github.com/d4l3k/go-pry

Hit a breakpoint, and inspect deeper in an object
```
locals obj_name

# How
locals obj_name.Field
```

REPL -> write a line, and run it
Should I look for something else for REPL like features...or is that dumb
in a compiled language

## Deep Delve Tip

- Make sure you have String() methods on all your struct,
  for easier debugging (similar to python and a nice __repr__ method)

## Desires for Opinions

- Use Graph Databases
  - Whose used them?
  - Whatca used?
    - Neo4J
    - Neptune?
  - What did you use it for?

## Resources

- https://github.com/sebdah/vim-delve
- https://github.com/go-delve/delve
- https://github.com/derekparker/delve/blob/master/Documentation/usage/dlv.md#options

## Open Questions

- Where does Delve come from?
- How do you debug in compiled languages?
  - not used to using a source level debugger in a compiled language.
- Are there alternatives to Delve?

---

debug

The first CLI subcommand we will explore is debug. This subcommand can be run without arguments if you're in the same directory as your main package, otherwise it optionally accepts a package path.

---

## Commands

### What we Use

DlvAddBreakpoint	   Add a breakpoint at the current line.
DlvDebug             [flags]	Run dlv debug for the current session. Use this to test main packages.
DlvToggleBreakpoint	Convenience method to toggle (add or remove) a breakpoint at the current line.
DlvRemoveBreakpoint	Remove the breakpoint at the current line.
DlvClearAll	         Clear all the breakpoints and tracepoints in the buffer.
DlvTest [flags]	Run dlv test for the current session. Use this to debug non-main packages.

### What we Don't Use yet

DlvAddTracepoint	   Add a tracepoint at the current line.
DlvAttach            <pid> [flags]	Attach dlv to a running process.
DlvCore              <bin> <dump> [flags]	Debug core dumps using dlv core.
DlvConnect           host:port [flags]	Connect to a remote Delve server on the given host:port.
DlvExec              <bin> [flags]	Start dlv on a pre-built executable.
DlvRemoveTracepoint	Remove the tracepoint at the current line.
DlvToggleTracepoint	Convenience method to toggle (add or remove) a tracepoint at the current line.


DlvVersion	Print the dlv version.


## Configuration

" g:delve_backend	default	Defines the backend to use with Delve.
" Please refer to the Delve documentation for details on what you should set this value to.

" g:delve_breakpoint_sign_highlight	WarningMsg	Set the color profile for the sign.
"
" g:delve_breakpoint_sign	●	Sets the sign to use to indicate breakpoints in the gutter.
"
" g:delve_cache_path	$HOME . "/.cache/" . v:progname . "/vim-delve"	The path to where the instructions file for dlv is stored.
"
" g:delve_enable_syntax_highlighting	1	Turn syntax highlighting in the dlv output on or off.
"
" g:delve_new_command	vnew	Control if dlv should be opened in a vertical (vnew), horizontal (new) or full screen window (enew).
"
" g:delve_tracepoint_sign_highlight	WarningMsg	Set the color profile for the sign.
"
" g:delve_tracepoint_sign	◆	Sets the sign to use to indicate tracepoints in the gutter.
"
" g:delve_use_vimux	0	Sets whether to use benmills/vimux].
" g:delve_project_root		Override the path to use for setting breakpoints/tracepoints.

## Delve Itself

Viewing program variables and memory:
    args ----------------- Print function arguments.
    display -------------- Print value of an expression every time the program stops.
    examinemem (alias: x)  Examine memory:
    locals --------------- Print local variables.
    print (alias: p) ----- Evaluate an expression.
    regs ----------------- Print contents of CPU registerp


## Workflow

Set breakpoint <leader>bp
Run DlvDebug   <leader>db
Run DlvTest <leader>bt

l or ls -> list current location
locals  -> show locals

 p request
 or print request


