## The argument list Begin style

## Seems Useful

:[range]argd[elete]	Delete the {range} files from the argument list.
			Example: >
				:10,$argdel
<			Deletes arguments 10 and further, keeping 1-9. >
				:$argd
<			Deletes just the last one. >
				:argd
				:.argd
<			Deletes the current argument. >
				:%argd
<			Removes all the files from the arglist.
			When the last number in the range is too high, up to
			the last argument is deleted.

## Don't Understand

## Do I Need???

:ar[gs]			Print the argument list, with the current file in
			square brackets.

:ar[gs] [++opt] [+cmd] {arglist}			*:args_f*
			Define {arglist} as the new argument list and edit
			the first one.  This fails when changes have been made
			and Vim does not want to |abandon| the current buffer.
			Also see |++opt| and |+cmd|.

:ar[gs]! [++opt] [+cmd] {arglist}			*:args_f!*
			Define {arglist} as the new argument list and edit
			the first one.  Discard any changes to the current
			buffer.
			Also see |++opt| and |+cmd|.

---

*argument-list* *arglist*

If you give more than one file name when starting Vim, this list is remembered
as the argument list.  You can jump to each file in this list.

Do not confuse this with the buffer list, which you can see with the
|:buffers| command.  The argument list was already present in Vi, the buffer
list is new in Vim.  Every file name in the argument list will also be present
in the buffer list (unless it was deleted with |:bdel| or |:bwipe|).  But it's
common that names in the buffer list are not in the argument list.

This subject is introduced in section |07.2| of the user manual.

There is one global argument list, which is used for all windows by default.
It is possible to create a new argument list local to a window, see
|:arglocal|.

You can use the argument list with the following commands, and with the
expression functions |argc()| and |argv()|.  These all work on the argument
list of the current window.

:[count]arge[dit][!] [++opt] [+cmd] {name} ..		*:arge* *:argedit*
			Add {name}s to the argument list and edit it.
			When {name} already exists in the argument list, this
			entry is edited.
			This is like using |:argadd| and then |:edit|.
			Spaces in filenames have to be escaped with "\".
			[count] is used like with |:argadd|.
			If the current file cannot be |abandon|ed {name}s will
			still be added to the argument list, but won't be
			edited. No check for duplicates is done.
			Also see |++opt| and |+cmd|.

:[count]arga[dd] {name} ..			*:arga* *:argadd* *E479*
:[count]arga[dd]
			Add the {name}s to the argument list.  When {name} is
			omitted add the current buffer name to the argument
			list.
			If [count] is omitted, the {name}s are added just
			after the current entry in the argument list.
			Otherwise they are added after the [count]'th file.
			If the argument list is "a b c", and "b" is the
			current argument, then these commands result in:
				command		new argument list ~
				:argadd x	a b x c
				:0argadd x	x a b c
				:1argadd x	a x b c
				:$argadd x	a b c x
			And after the last one:
				:+2argadd y	a b c x y
			There is no check for duplicates, it is possible to
			add a file to the argument list twice.
			The currently edited file is not changed.
			Note: you can also use this method: >
				:args ## x
<			This will add the "x" item and sort the new list.

:argd[elete] {pattern} ..			*:argd* *:argdelete* *E480*
			Delete files from the argument list that match the
			{pattern}s.  {pattern} is used like a file pattern,
			see |file-pattern|.  "%" can be used to delete the
			current entry.
			This command keeps the currently edited file, also
			when it's deleted from the argument list.
			Example: >
				:argdel *.obj

							*:argu* *:argument*
:[count]argu[ment] [count] [++opt] [+cmd]
			Edit file [count] in the argument list.  When [count]
			is omitted the current entry is used.  This fails
			when changes have been made and Vim does not want to
			|abandon| the current buffer.
			Also see |++opt| and |+cmd|.

:[count]argu[ment]! [count] [++opt] [+cmd]
			Edit file [count] in the argument list, discard any
			changes to the current buffer.  When [count] is
			omitted the current entry is used.
			Also see |++opt| and |+cmd|.

:[count]n[ext] [++opt] [+cmd]			*:n* *:ne* *:next* *E165* *E163*
			Edit [count] next file.  This fails when changes have
			been made and Vim does not want to |abandon| the
			current buffer.  Also see |++opt| and |+cmd|.

:[count]n[ext]! [++opt] [+cmd]
			Edit [count] next file, discard any changes to the
			buffer.  Also see |++opt| and |+cmd|.

:n[ext] [++opt] [+cmd] {arglist}			*:next_f*
			Same as |:args_f|.

:n[ext]! [++opt] [+cmd] {arglist}
			Same as |:args_f!|.

:[count]N[ext] [count] [++opt] [+cmd]			*:Next* *:N* *E164*
			Edit [count] previous file in argument list.  This
			fails when changes have been made and Vim does not
			want to |abandon| the current buffer.
			Also see |++opt| and |+cmd|.

:[count]N[ext]! [count] [++opt] [+cmd]
			Edit [count] previous file in argument list.  Discard
			any changes to the buffer.  Also see |++opt| and
			|+cmd|.

:[count]prev[ious] [count] [++opt] [+cmd]		*:prev* *:previous*
			Same as :Next.  Also see |++opt| and |+cmd|.

							*:rew* *:rewind*
:rew[ind] [++opt] [+cmd]
			Start editing the first file in the argument list.
			This fails when changes have been made and Vim does
			not want to |abandon| the current buffer.
			Also see |++opt| and |+cmd|.

:rew[ind]! [++opt] [+cmd]
			Start editing the first file in the argument list.
			Discard any changes to the buffer.  Also see |++opt|
			and |+cmd|.

							*:fir* *:first*
:fir[st][!] [++opt] [+cmd]
			Other name for ":rewind".

							*:la* *:last*
:la[st] [++opt] [+cmd]
			Start editing the last file in the argument list.
			This fails when changes have been made and Vim does
			not want to |abandon| the current buffer.
			Also see |++opt| and |+cmd|.

:la[st]! [++opt] [+cmd]
			Start editing the last file in the argument list.
			Discard any changes to the buffer.  Also see |++opt|
			and |+cmd|.

							*:wn* *:wnext*
:[count]wn[ext] [++opt]
			Write current file and start editing the [count]
			next file.  Also see |++opt| and |+cmd|.

:[count]wn[ext] [++opt] {file}
			Write current file to {file} and start editing the
			[count] next file, unless {file} already exists and
			the 'writeany' option is off.  Also see |++opt| and
			|+cmd|.

:[count]wn[ext]! [++opt] {file}
			Write current file to {file} and start editing the
			[count] next file.  Also see |++opt| and |+cmd|.

:[count]wN[ext][!] [++opt] [file]		*:wN* *:wNext*
:[count]wp[revious][!] [++opt] [file]		*:wp* *:wprevious*
			Same as :wnext, but go to previous file instead of
			next.

The [count] in the commands above defaults to one.  For some commands it is
possible to use two counts.  The last one (rightmost one) is used.

If no [+cmd] argument is present, the cursor is positioned at the last known
cursor position for the file.  If 'startofline' is set, the cursor will be
positioned at the first non-blank in the line, otherwise the last know column
is used.  If there is no last known cursor position the cursor will be in the
first line (the last line in Ex mode).

							*{arglist}*
The wildcards in the argument list are expanded and the file names are sorted.
Thus you can use the command "vim *.c" to edit all the C files.  From within
Vim the command ":n *.c" does the same.

White space is used to separate file names.  Put a backslash before a space or
tab to include it in a file name.  E.g., to edit the single file "foo bar": >
	:next foo\ bar

On Unix and a few other systems you can also use backticks, for example: >
	:next `find . -name \\*.c -print`
The backslashes before the star are required to prevent "*.c" to be expanded
by the shell before executing the find program.

							*arglist-position*
When there is an argument list you can see which file you are editing in the
title of the window (if there is one and 'title' is on) and with the file
message you get with the "CTRL-G" command.  You will see something like
	(file 4 of 11)
If 'shortmess' contains 'f' it will be
	(4 of 11)
If you are not really editing the file at the current position in the argument
list it will be
	(file (4) of 11)
This means that you are position 4 in the argument list, but not editing the
fourth file in the argument list.  This happens when you do ":e file".

