"  ____       _
" |  _ \  ___| |_   _____
" | | | |/ _ \ \ \ / / _ \
" | |_| |  __/ |\ V /  __/
" |____/ \___|_| \_/ \___|

" g:delve_backend	default	Defines the backend to use with Delve.
" Please refer to the Delve documentation for details on what you should set this value to.

" g:delve_breakpoint_sign_highlight	WarningMsg	Set the color profile for the sign.
"
" g:delve_breakpoint_sign	●	Sets the sign to use to indicate breakpoints in the gutter.
"
" g:delve_cache_path	$HOME . "/.cache/" . v:progname . "/vim-delve"	The path to where the instructions file for dlv is stored.
"
let g:delve_enable_syntax_highlighting =	1	" Turn syntax highlighting in the dlv output on or off.
"
" g:delve_new_command	vnew	Control if dlv should be opened in a vertical (vnew), horizontal (new) or full screen window (enew).
"
" g:delve_tracepoint_sign_highlight	WarningMsg	Set the color profile for the sign.
"
" g:delve_tracepoint_sign	◆	Sets the sign to use to indicate tracepoints in the gutter.
"
let g:delve_use_vimux	= 0	" Sets whether to use benmills/vimux].
" g:delve_project_root		Override the path to use for setting breakpoints/tracepoints.
