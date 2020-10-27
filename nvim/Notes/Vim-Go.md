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

