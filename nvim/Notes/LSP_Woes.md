# LSP_Woes

- How do you debug LSP problems?


## Tail the Logs

```
alias lsplog="
tail -f ~/.local/share/nvim/lsp.log
"
```

What if you don't see the LSP attaching?

## Python LSP

- Aqua and Begin both using JEDI

Begin:
  - I used planitr before
  - Then switched to now deprecated Microsoft one
    - it broke once they stopped updating
  - tried pyright couldn't get it to work
