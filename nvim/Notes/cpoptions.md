# Cpoptions

## Begin's Options

cpoptions=aABceFs_

a	When included, a ":read" command with a file name
  argument will set the alternate file name for the
  current window.

A	When included, a ":write" command with a file name
  argument will set the alternate file name for the
  current window.

B	A backslash has no special meaning in mappings,
  abbreviations, user commands and the "to" part of the
  menu commands.  Remove this flag to be able to use a
  backslash like a CTRL-V.  For example, the command
  ":map X \<Esc>" results in X being mapped to:
    'B' included:	"\^["	 (^[ is a real <Esc>)
    'B' excluded:	"<Esc>"  (5 characters)

c	Searching continues at the end of any match at the
  cursor position, but not further than the start of the
  next line.  When not present searching continues
  one character from the cursor position.  With 'c'
  "abababababab" only gets three matches when repeating
  "/abab", without 'c' there are five matches.

e	When executing a register with ":@r", always add a
  <CR> to the last line, also when the register is not
  linewise.  If this flag is not present, the register
  is not linewise and the last line does not end in a
  <CR>, then the last line is put on the command-line
  and can be edited before hitting <CR>.

F	When included, a ":write" command with a file name
  argument will set the file name for the current
  buffer, if the current buffer doesn't have a file name
  yet.  Also see |cpo-P|.

s	Set buffer options when entering the buffer for the
  first time.  This is like it is in Vim version 3.0.
  And it is the default.  If not present the options are
  set when the buffer is created.

_	When using |cw| on a word, do not include the
  whitespace following the word in the motion.

---

						*'cpoptions'* *'cpo'* *cpo*
'cpoptions' 'cpo'	string	(Vim default: "aABceFs_",
				 Vi default: all flags)
			global

	A sequence of single character flags.  When a character is present
	this indicates Vi-compatible behavior.  This is used for things where
	not being Vi-compatible is mostly or sometimes preferred.
	'cpoptions' stands for "compatible-options".
	Commas can be added for readability.
	To avoid problems with flags that are added in the future, use the
	"+=" and "-=" feature of ":set" |add-option-flags|.

	    contains	behavior	~
								*cpo-b*
		b	"\|" in a ":map" command is recognized as the end of
			the map command.  The '\' is included in the mapping,
			the text after the '|' is interpreted as the next
			command.  Use a CTRL-V instead of a backslash to
			include the '|' in the mapping.  Applies to all
			mapping, abbreviation, menu and autocmd commands.
			See also |map_bar|.
								*cpo-C*
		C	Do not concatenate sourced lines that start with a
			backslash.  See |line-continuation|.
								*cpo-d*
		d	Using "./" in the 'tags' option doesn't mean to use
			the tags file relative to the current file, but the
			tags file in the current directory.
								*cpo-D*
		D	Can't use CTRL-K to enter a digraph after Normal mode
			commands with a character argument, like |r|, |f| and
			|t|.
								*cpo-E*
		E	It is an error when using "y", "d", "c", "g~", "gu" or
			"gU" on an Empty region.  The operators only work when
			at least one character is to be operated on.  Example:
			This makes "y0" fail in the first column.
								*cpo-f*
		f	When included, a ":read" command with a file name
			argument will set the file name for the current buffer,
			if the current buffer doesn't have a file name yet.
								*cpo-F*
		F	When included, a ":write" command with a file name
			argument will set the file name for the current
			buffer, if the current buffer doesn't have a file name
			yet.  Also see |cpo-P|.
								*cpo-i*
		i	When included, interrupting the reading of a file will
			leave it modified.
								*cpo-I*
		I	When moving the cursor up or down just after inserting
			indent for 'autoindent', do not delete the indent.
								*cpo-J*
		J	A |sentence| has to be followed by two spaces after
			the '.', '!' or '?'.  A <Tab> is not recognized as
			white space.
								*cpo-K*
		K	Don't wait for a key code to complete when it is
			halfway through a mapping.  This breaks mapping
			<F1><F1> when only part of the second <F1> has been
			read.  It enables cancelling the mapping by typing
			<F1><Esc>.
								*cpo-l*
		l	Backslash in a [] range in a search pattern is taken
			literally, only "\]", "\^", "\-" and "\\" are special.
			See |/[]|
			   'l' included: "/[ \t]"  finds <Space>, '\' and 't'
			   'l' excluded: "/[ \t]"  finds <Space> and <Tab>
								*cpo-L*
		L	When the 'list' option is set, 'wrapmargin',
			'textwidth', 'softtabstop' and Virtual Replace mode
			(see |gR|) count a <Tab> as two characters, instead of
			the normal behavior of a <Tab>.
								*cpo-m*
		m	When included, a showmatch will always wait half a
			second.  When not included, a showmatch will wait half
			a second or until a character is typed.  |'showmatch'|
								*cpo-M*
		M	When excluded, "%" matching will take backslashes into
			account.  Thus in "( \( )" and "\( ( \)" the outer
			parenthesis match.  When included "%" ignores
			backslashes, which is Vi compatible.
								*cpo-n*
		n	When included, the column used for 'number' and
			'relativenumber' will also be used for text of wrapped
			lines.
								*cpo-o*
		o	Line offset to search command is not remembered for
			next search.
								*cpo-O*
		O	Don't complain if a file is being overwritten, even
			when it didn't exist when editing it.  This is a
			protection against a file unexpectedly created by
			someone else.  Vi didn't complain about this.
								*cpo-p*
		p	Vi compatible Lisp indenting.  When not present, a
			slightly better algorithm is used.
								*cpo-P*
		P	When included, a ":write" command that appends to a
			file will set the file name for the current buffer, if
			the current buffer doesn't have a file name yet and
			the 'F' flag is also included |cpo-F|.
								*cpo-q*
		q	When joining multiple lines leave the cursor at the
			position where it would be when joining two lines.
								*cpo-r*
		r	Redo ("." command) uses "/" to repeat a search
			command, instead of the actually used search string.
								*cpo-R*
		R	Remove marks from filtered lines.  Without this flag
			marks are kept like |:keepmarks| was used.
								*cpo-s*
		s	Set buffer options when entering the buffer for the
			first time.  This is like it is in Vim version 3.0.
			And it is the default.  If not present the options are
			set when the buffer is created.
								*cpo-S*
		S	Set buffer options always when entering a buffer
			(except 'readonly', 'fileformat', 'filetype' and
			'syntax').  This is the (most) Vi compatible setting.
			The options are set to the values in the current
			buffer.  When you change an option and go to another
			buffer, the value is copied.  Effectively makes the
			buffer options global to all buffers.

			's'    'S'     copy buffer options
			no     no      when buffer created
			yes    no      when buffer first entered (default)
			 X     yes     each time when buffer entered (vi comp.)
								*cpo-t*
		t	Search pattern for the tag command is remembered for
			"n" command.  Otherwise Vim only puts the pattern in
			the history for search pattern, but doesn't change the
			last used search pattern.
								*cpo-u*
		u	Undo is Vi compatible.  See |undo-two-ways|.
								*cpo-v*
		v	Backspaced characters remain visible on the screen in
			Insert mode.  Without this flag the characters are
			erased from the screen right away.  With this flag the
			screen newly typed text overwrites backspaced
			characters.
								*cpo-W*
		W	Don't overwrite a readonly file.  When omitted, ":w!"
			overwrites a readonly file, if possible.
								*cpo-x*
		x	<Esc> on the command-line executes the command-line.
			The default in Vim is to abandon the command-line,
			because <Esc> normally aborts a command.  |c_<Esc>|
								*cpo-X*
		X	When using a count with "R" the replaced text is
			deleted only once.  Also when repeating "R" with "."
			and a count.
								*cpo-y*
		y	A yank command can be redone with ".".  Think twice if
			you really want to use this, it may break some
			plugins, since most people expect "." to only repeat a
			change.
								*cpo-Z*
		Z	When using "w!" while the 'readonly' option is set,
			don't reset 'readonly'.
								*cpo-!*
		!	When redoing a filter command, use the last used
			external command, whatever it was.  Otherwise the last
			used -filter- command is used.
								*cpo-$*
		$	When making a change to one line, don't redisplay the
			line, but put a '$' at the end of the changed text.
			The changed text will be overwritten when you type the
			new text.  The line is redisplayed if you type any
			command that moves the cursor from the insertion
			point.
								*cpo-%*
		%	Vi-compatible matching is done for the "%" command.
			Does not recognize "#if", "#endif", etc.
			Does not recognize "/*" and "*/".
			Parens inside single and double quotes are also
			counted, causing a string that contains a paren to
			disturb the matching.  For example, in a line like
			"if (strcmp("foo(", s))" the first paren does not
			match the last one.  When this flag is not included,
			parens inside single and double quotes are treated
			specially.  When matching a paren outside of quotes,
			everything inside quotes is ignored.  When matching a
			paren inside quotes, it will find the matching one (if
			there is one).  This works very well for C programs.
			This flag is also used for other features, such as
			C-indenting.
								*cpo-+*
		+	When included, a ":write file" command will reset the
			'modified' flag of the buffer, even though the buffer
			itself may still be different from its file.
								*cpo->*
		>	When appending to a register, put a line break before
			the appended text.
								*cpo-;*
		;	When using |,| or |;| to repeat the last |t| search
			and the cursor is right in front of the searched
			character, the cursor won't move. When not included,
			the cursor would skip over it and jump to the
			following occurrence.
								*cpo-_*
		_	When using |cw| on a word, do not include the
			whitespace following the word in the motion.

