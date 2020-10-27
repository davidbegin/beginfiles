## Quickfix list, with Go compiler Errors

- When the main.go fails to build, we don't build the other packages,
  meaning we don't see those errors as part of the quickfix
  - we can test location-list VS quickfix-list

- There are 5000 commands for jumping between location-list and quickfix in
  different files.......I only have have errors in one file at time for Go.

# QuickFix

1. Using QuickFix commands			*quickfix* *Quickfix* *E42*

Vim has a special mode to speedup the edit-compile-edit cycle.  This is
inspired by the quickfix option of the Manx's Aztec C compiler on the Amiga.
The idea is to save the error messages from the compiler in a file and use Vim
to jump to the errors one by one.  You can examine each problem and fix it,
without having to remember all the error messages.

In Vim the quickfix commands are used more generally to find a list of
positions in files.  For example, |:vimgrep| finds pattern matches.  You can
use the positions in a script with the |getqflist()| function.  Thus you can
do a lot more than the edit/compile/fix cycle!

If you have the error messages in a file you can start Vim with: >
	vim -q filename

From inside Vim an easy way to run a command and handle the output is with the
|:make| command (see below).

The 'errorformat' option should be set to match the error messages from your
compiler (see |errorformat| below).

							*quickfix-ID*
Each quickfix list has a unique identifier called the quickfix ID and this
number will not change within a Vim session. The |getqflist()| function can be
used to get the identifier assigned to a list. There is also a quickfix list
number which may change whenever more than ten lists are added to a quickfix
stack.

						*location-list* *E776*
A location list is a window-local quickfix list. You get one after commands
like `:lvimgrep`, `:lgrep`, `:lhelpgrep`, `:lmake`, etc., which create a
location list instead of a quickfix list as the corresponding `:vimgrep`,
`:grep`, `:helpgrep`, `:make` do.
						*location-list-file-window*
A location list is associated with a window and each window can have a
separate location list.  A location list can be associated with only one
window.  The location list is independent of the quickfix list.

When a window with a location list is split, the new window gets a copy of the
location list.  When there are no longer any references to a location list,
the location list is destroyed.

						*quickfix-changedtick*
Every quickfix and location list has a read-only changedtick variable that
tracks the total number of changes made to the list.  Every time the quickfix
list is modified, this count is incremented. This can be used to perform an
action only when the list has changed.  The |getqflist()| and |getloclist()|
functions can be used to query the current value of changedtick.  You cannot
change the changedtick variable.

The following quickfix commands can be used.  The location list commands are
similar to the quickfix commands, replacing the 'c' prefix in the quickfix
command with 'l'.

							*E924*
If the current window was closed by an |autocommand| while processing a
location list command, it will be aborted.

							*E925* *E926*
If the current quickfix or location list was changed by an |autocommand| while
processing a quickfix or location list command, it will be aborted.

---

## Commands

## Not that useful

							*:cc*
:cc[!] [nr]		Display error [nr].  If [nr] is omitted, the same
			error is displayed again.  Without [!] this doesn't
			work when jumping to another buffer, the current buffer
			has been changed, there is the only window for the
			buffer and both 'hidden' and 'autowrite' are off.
			When jumping to another buffer with [!] any changes to
			the current buffer are lost, unless 'hidden' is set or
			there is another window for this buffer.
			The 'switchbuf' settings are respected when jumping
			to a buffer.
begin: shows the error on the status at the bottom
        not useful

							*:ll*
:ll[!] [nr]		Same as ":cc", except the location list for the
			current window is used instead of the quickfix list.
begin: shows the error on the status at the bottom
       but less info???

:[count]cabo[ve]	Go to the [count] error above the current line in the
			current buffer.  If [count] is omitted, then 1 is
			used.  If there are no errors, then an error message
			is displayed.  Assumes that the entries in a quickfix
			list are sorted by their buffer number and line
			number. If there are multiple errors on the same line,
			then only the first entry is used.  If [count] exceeds
			the number of entries above the current line, then the
			first error in the file is selected.
begin: find the last error above

:[count]cbe[low]	Go to the [count] error below the current line in the
			current buffer.  If [count] is omitted, then 1 is
			used.  If there are no errors, then an error message
			is displayed.  Assumes that the entries in a quickfix
			list are sorted by their buffer number and line
			number.  If there are multiple errors on the same
			line, then only the first entry is used.  If [count]
			exceeds the number of entries below the current line,
			then the last error in the file is selected.

:[count]lab[ove]	Same as ":cabove", except the location list for the
			current window is used instead of the quickfix list.

:[count]lbe[low]	Same as ":cbelow", except the location list for the
			current window is used instead of the quickfix list.

## Don't Know

:[count]cn[ext][!]	Display the [count] next error in the list that
			includes a file name.  If there are no file names at
			all, go to the [count] next error.  See |:cc| for
			[!] and 'switchbuf'.

							*:lne* *:lnext*
:[count]lne[xt][!]	Same as ":cnext", except the location list for the
			current window is used instead of the quickfix list.


:[count]cN[ext][!]		*:cp* *:cprevious*  *:cprev* *:cN* *:cNext*
:[count]cp[revious][!]	Display the [count] previous error in the list that
			includes a file name.  If there are no file names at
			all, go to the [count] previous error.  See |:cc| for
			[!] and 'switchbuf'.


:[count]lN[ext][!]		*:lp* *:lprevious* *:lprev* *:lN* *:lNext*
:[count]lp[revious][!]	Same as ":cNext" and ":cprevious", except the location
			list for the current window is used instead of the
			quickfix list.


:[count]cnf[ile][!]	Display the first error in the [count] next file in
			the list that includes a file name.  If there are no
			file names at all or if there is no next file, go to
			the [count] next error.  See |:cc| for [!] and
			'switchbuf'.

:[count]lnf[ile][!]	Same as ":cnfile", except the location list for the
			current window is used instead of the quickfix list.

:[count]cNf[ile][!]			*:cpf* *:cpfile* *:cNf* *:cNfile*
:[count]cpf[ile][!]	Display the last error in the [count] previous file in
			the list that includes a file name.  If there are no
			file names at all or if there is no next file, go to
			the [count] previous error.  See |:cc| for [!] and
			'switchbuf'.


:[count]lNf[ile][!]			*:lpf* *:lpfile* *:lNf* *:lNfile*
:[count]lpf[ile][!]	Same as ":cNfile" and ":cpfile", except the location
			list for the current window is used instead of the
			quickfix list.


---

:cr[ewind][!] [nr]	Display error [nr].  If [nr] is omitted, the FIRST
			error is displayed.  See |:cc|.

:lr[ewind][!] [nr]	Same as ":crewind", except the location list for the
			current window is used instead of the quickfix list.

:cfir[st][!] [nr]	Same as ":crewind".

:lfir[st][!] [nr]	Same as ":lrewind".

:cla[st][!] [nr]	Display error [nr].  If [nr] is omitted, the LAST
			error is displayed.  See |:cc|.

:lla[st][!] [nr]	Same as ":clast", except the location list for the
			current window is used instead of the quickfix list.

:[count]cq[uit]		Quit Nvim with an error code, or the code specified in
			[count].  Useful when Nvim is called from another
			program: e.g. `git commit` will abort the comitting
			process, `fc` (built-in for shells like bash and zsh)
			will not execute the command.

			WARNING: All changes in files are lost.  It works like
			":qall!" |:qall|, except that Nvim exits non-zero or
			[count].

							*:cf* *:cfile*
:cf[ile][!] [errorfile]	Read the error file and jump to the first error.
			This is done automatically when Vim is started with
			the -q option.  You can use this command when you
			keep Vim running while compiling.  If you give the
			name of the errorfile, the 'errorfile' option will
			be set to [errorfile].  See |:cc| for [!].
			If the encoding of the error file differs from the
			'encoding' option, you can use the 'makeencoding'
			option to specify the encoding.

							*:lf* *:lfi* *:lfile*
:lf[ile][!] [errorfile]	Same as ":cfile", except the location list for the
			current window is used instead of the quickfix list.
			You can not use the -q command-line option to set
			the location list.


:cg[etfile] [errorfile]					*:cg* *:cgetfile*
			Read the error file.  Just like ":cfile" but don't
			jump to the first error.
			If the encoding of the error file differs from the
			'encoding' option, you can use the 'makeencoding'
			option to specify the encoding.


:lg[etfile] [errorfile]					*:lg* *:lge* *:lgetfile*
			Same as ":cgetfile", except the location list for the
			current window is used instead of the quickfix list.

							*:caddf* *:caddfile*
:caddf[ile] [errorfile]	Read the error file and add the errors from the
			errorfile to the current quickfix list. If a quickfix
			list is not present, then a new list is created.
			If the encoding of the error file differs from the
			'encoding' option, you can use the 'makeencoding'
			option to specify the encoding.

							*:laddf* *:laddfile*
:laddf[ile] [errorfile]	Same as ":caddfile", except the location list for the
			current window is used instead of the quickfix list.

						*:cb* *:cbuffer* *E681*
:cb[uffer][!] [bufnr]	Read the error list from the current buffer.
			When [bufnr] is given it must be the number of a
			loaded buffer.  That buffer will then be used instead
			of the current buffer.
			A range can be specified for the lines to be used.
			Otherwise all lines in the buffer are used.
			See |:cc| for [!].

						*:lb* *:lbuffer*
:lb[uffer][!] [bufnr]	Same as ":cbuffer", except the location list for the
			current window is used instead of the quickfix list.

						*:cgetb* *:cgetbuffer*
:cgetb[uffer] [bufnr]	Read the error list from the current buffer.  Just
			like ":cbuffer" but don't jump to the first error.

						*:lgetb* *:lgetbuffer*
:lgetb[uffer] [bufnr]	Same as ":cgetbuffer", except the location list for
			the current window is used instead of the quickfix
			list.

						*:cad* *:cadd* *:caddbuffer*
:cad[dbuffer] [bufnr]	Read the error list from the current buffer and add
			the errors to the current quickfix list.  If a
			quickfix list is not present, then a new list is
			created. Otherwise, same as ":cbuffer".

							*:laddb* *:laddbuffer*
:laddb[uffer] [bufnr]	Same as ":caddbuffer", except the location list for
			the current window is used instead of the quickfix
			list.

							*:cex* *:cexpr* *E777*
:cex[pr][!] {expr}	Create a quickfix list using the result of {expr} and
			jump to the first error.
			If {expr} is a String, then each new-line terminated
			line in the String is processed using the global value
			of 'errorformat' and the result is added to the
			quickfix list.
			If {expr} is a List, then each String item in the list
			is processed and added to the quickfix list.  Non
			String items in the List are ignored.
			See |:cc| for [!].
			Examples: >
				:cexpr system('grep -n xyz *')
				:cexpr getline(1, '$')
<
							*:lex* *:lexpr*
:lex[pr][!] {expr}	Same as |:cexpr|, except the location list for the
			current window is used instead of the quickfix list.

							*:cgete* *:cgetexpr*
:cgete[xpr] {expr}	Create a quickfix list using the result of {expr}.
			Just like |:cexpr|, but don't jump to the first error.

							*:lgete* *:lgetexpr*
:lgete[xpr] {expr}	Same as |:cgetexpr|, except the location list for the
			current window is used instead of the quickfix list.

							*:cadde* *:caddexpr*
:cadde[xpr] {expr}	Evaluate {expr} and add the resulting lines to the
			current quickfix list. If a quickfix list is not
			present, then a new list is created. The current
			cursor position will not be changed. See |:cexpr| for
			more information.
			Example: >
    :g/mypattern/caddexpr expand("%") . ":" . line(".") .  ":" . getline(".")
<
						*:lad* *:addd* *:laddexpr*
:lad[dexpr] {expr}	Same as ":caddexpr", except the location list for the
			current window is used instead of the quickfix list.

							*:cl* *:clist*
:cl[ist] [from] [, [to]]
			List all errors that are valid |quickfix-valid|.
			If numbers [from] and/or [to] are given, the respective
			range of errors is listed.  A negative number counts
			from the last error backwards, -1 being the last error.
			The 'switchbuf' settings are respected when jumping
			to a buffer.
			The |:filter| command can be used to display only the
			quickfix entries matching a supplied pattern. The
			pattern is matched against the filename, module name,
			pattern and text of the entry.

:cl[ist] +{count}	List the current and next {count} valid errors.  This
			is similar to ":clist from from+count", where "from"
			is the current error position.

:cl[ist]! [from] [, [to]]
			List all errors.

:cl[ist]! +{count}	List the current and next {count} error lines.  This
			is useful to see unrecognized lines after the current
			one.  For example, if ":clist" shows:
        8384 testje.java:252: error: cannot find symbol ~
			Then using ":cl! +3" shows the reason:
        8384 testje.java:252: error: cannot find symbol ~
        8385:   ZexitCode = Fmainx(); ~
        8386:               ^ ~
        8387:   symbol:   method Fmainx() ~

:lli[st] [from] [, [to]]				*:lli* *:llist*
			Same as ":clist", except the location list for the
			current window is used instead of the quickfix list.

:lli[st]! [from] [, [to]]
			List all the entries in the location list for the
			current window.

If you insert or delete lines, mostly the correct error location is still
found because hidden marks are used.  Sometimes, when the mark has been
deleted for some reason, the message "line changed" is shown to warn you that
the error location may not be correct.  If you quit Vim and start again the
marks are lost and the error locations may not be correct anymore.

Two autocommands are available for running commands before and after a
quickfix command (':make', ':grep' and so on) is executed. See
|QuickFixCmdPre| and |QuickFixCmdPost| for details.

						*QuickFixCmdPost-example*
When 'encoding' differs from the locale, the error messages may have a
different encoding from what Vim is using.  To convert the messages you can
use this code: >
	function QfMakeConv()
	   let qflist = getqflist()
	   for i in qflist
	      let i.text = iconv(i.text, "cp936", "utf-8")
	   endfor
	   call setqflist(qflist)
	endfunction

	au QuickfixCmdPost make call QfMakeConv()
Another option is using 'makeencoding'.

							*quickfix-title*
Every quickfix and location list has a title. By default the title is set to
the command that created the list. The |getqflist()| and |getloclist()|
functions can be used to get the title of a quickfix and a location list
respectively. The |setqflist()| and |setloclist()| functions can be used to
modify the title of a quickfix and location list respectively. Examples: >
	call setqflist([], 'a', {'title' : 'Cmd output'})
	echo getqflist({'title' : 1})
	call setloclist(3, [], 'a', {'title' : 'Cmd output'})
	echo getloclist(3, {'title' : 1})
<
							*quickfix-index*
When you jump to a quickfix/location list entry using any of the quickfix
commands (e.g. |:cc|, |:cnext|, |:cprev|, etc.), that entry becomes the
currently selected entry. The index of the currently selected entry in a
quickfix/location list can be obtained using the getqflist()/getloclist()
functions. Examples: >
	echo getqflist({'idx' : 0}).idx
	echo getqflist({'id' : qfid, 'idx' : 0}).idx
	echo getloclist(2, {'idx' : 0}).idx
<
For a new quickfix list, the first entry is selected and the index is 1.  Any
entry in any quickfix/location list can be set as the currently selected entry
using the setqflist() function. Examples: >
	call setqflist([], 'a', {'idx' : 12})
	call setqflist([], 'a', {'id' : qfid, 'idx' : 7})
	call setloclist(1, [], 'a', {'idx' : 7})
<
							*quickfix-size*
You can get the number of entries (size) in a quickfix and a location list
using the |getqflist()| and |getloclist()| functions respectively. Examples: >
	echo getqflist({'size' : 1})
	echo getloclist(5, {'size' : 1})
<
							*quickfix-context*
Any Vim type can be associated as a context with a quickfix or location list.
The |setqflist()| and the |setloclist()| functions can be used to associate a
context with a quickfix and a location list respectively. The |getqflist()|
and the |getloclist()| functions can be used to retrieve the context of a
quickfix and a location list respectively. This is useful for a Vim plugin
dealing with multiple quickfix/location lists.
Examples: >

	let somectx = {'name' : 'Vim', 'type' : 'Editor'}
	call setqflist([], 'a', {'context' : somectx})
	echo getqflist({'context' : 1})

	let newctx = ['red', 'green', 'blue']
	call setloclist(2, [], 'a', {'id' : qfid, 'context' : newctx})
	echo getloclist(2, {'id' : qfid, 'context' : 1})
<
							*quickfix-parse*
You can parse a list of lines using 'errorformat' without creating or
modifying a quickfix list using the |getqflist()| function. Examples: >
	echo getqflist({'lines' : ["F1:10:Line10", "F2:20:Line20"]})
	echo getqflist({'lines' : systemlist('grep -Hn quickfix *')})
This returns a dictionary where the 'items' key contains the list of quickfix
entries parsed from lines. The following shows how to use a custom
'errorformat' to parse the lines without modifying the 'errorformat' option: >
	echo getqflist({'efm' : '%f#%l#%m', 'lines' : ['F1#10#Line']})
<

EXECUTE A COMMAND IN ALL THE BUFFERS IN QUICKFIX OR LOCATION LIST:
							*:cdo*
:cdo[!] {cmd}		Execute {cmd} in each valid entry in the quickfix list.
			It works like doing this: >
				:cfirst
				:{cmd}
				:cnext
				:{cmd}
				etc.
<			When the current file can't be |abandon|ed and the [!]
			is not present, the command fails.
			When an error is detected execution stops.
			The last buffer (or where an error occurred) becomes
			the current buffer.
			{cmd} can contain '|' to concatenate several commands.

			Only valid entries in the quickfix list are used.
			A range can be used to select entries, e.g.: >
				:10,$cdo cmd
<			To skip entries 1 to 9.

			Note: While this command is executing, the Syntax
			autocommand event is disabled by adding it to
			'eventignore'.  This considerably speeds up editing
			each buffer.
			{not in Vi}
			Also see |:bufdo|, |:tabdo|, |:argdo|, |:windo|,
			|:ldo|, |:cfdo| and |:lfdo|.

							*:cfdo*
:cfdo[!] {cmd}		Execute {cmd} in each file in the quickfix list.
			It works like doing this: >
				:cfirst
				:{cmd}
				:cnfile
				:{cmd}
				etc.
<			Otherwise it works the same as `:cdo`.
			{not in Vi}

							*:ldo*
:ld[o][!] {cmd}		Execute {cmd} in each valid entry in the location list
			for the current window.
			It works like doing this: >
				:lfirst
				:{cmd}
				:lnext
				:{cmd}
				etc.
<			Only valid entries in the location list are used.
			Otherwise it works the same as `:cdo`.
			{not in Vi}

							*:lfdo*
:lfdo[!] {cmd}		Execute {cmd} in each file in the location list for
			the current window.
			It works like doing this: >
				:lfirst
				:{cmd}
				:lnfile
				:{cmd}
				etc.
<			Otherwise it works the same as `:ldo`.
			{not in Vi}

FILTERING A QUICKFIX OR LOCATION LIST:
				    *cfilter-plugin* *:Cfilter* *:Lfilter*
If you have too many entries in a quickfix list, you can use the cfilter
plugin to reduce the number of entries.  Load the plugin with: >

    packadd cfilter

Then you can use the following commands to filter a quickfix/location list: >

    :Cfilter[!] /{pat}/
    :Lfilter[!] /{pat}/

The |:Cfilter| command creates a new quickfix list from the entries matching
{pat} in the current quickfix list. {pat} is a Vim |regular-expression|
pattern. Both the file name and the text of the entries are matched against
{pat}. If the optional ! is supplied, then the entries not matching {pat} are
used. The pattern can be optionally enclosed using one of the following
characters: ', ", /. If the pattern is empty, then the last used search
pattern is used.

The |:Lfilter| command does the same as |:Cfilter| but operates on the current
location list.

