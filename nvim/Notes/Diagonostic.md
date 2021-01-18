# Diagnostic

## Mappings

```
nnoremap <leader>k <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <leader>j <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
```

- vim.lsp.diagnostic.get()
- vim.lsp.diagnostic.get_next()
- vim.lsp.diagnostic.get_prev()
- vim.lsp.diagnostic.get_count()

- vim.lsp.diagnostic.goto_next()
- vim.lsp.diagnostic.goto_prev()

Note:
  - It is a lot fast to goto prev, than wrap around for diagnostics

## Colors

:help lsp-highlight-diagnostics

All highlights defined for diagnostics begin with `LspDiagnostics` followed by
the type of highlight (e.g., `Sign`, `Underline`, etc.) and then the Severity
of the highlight (e.g. `Error`, `Warning`, etc.)

highlight LspDiagnosticsDefaultError guibg=#FF0000
highlight LspDiagnosticsSignError guibg=#D700B0
highlight LspDiagnosticsUnderlineWarn guibg=#D77600

## Behavior

:help vim.lsp.diagnostic.on_publish_diagnostics
:help vim.lsp.diagnostic.goto_next

- What are the cool Remappings
- What are the cool settings
- Different options for setting up
  - lua << EOF
  - init.lua

- What else can I remove from my Vimrc

## Open Questions

- What are the types of Highlights
- What are all the Severity's
- Why would I save and clear??
  - Save and Clear are good for plugin developers,
    who want to utilize built-in diagnostic functionality for their own plugin

```
:help vjim.lsp.diagnostic.set_virtual_text()
```

    LspDiagnosticsVirtualTextError
    LspDiagnosticsVirtualTextWarning
    LspDiagnosticsVirtualTextInformation
    LspDiagnosticsVirtualTextHint
<
                Virtual text highlights can be customized by changing the
                following |:highlight| groups.
>


```
Parameters: ~
{config}  table Configuration table.
          • underline: (default=true)
            • Apply underlines to diagnostics.
            • See |vim.lsp.diagnostic.set_underline()|

          • virtual_text: (default=true)
            • Apply virtual text to line endings.
            • See |vim.lsp.diagnostic.set_virtual_text()|

          • signs: (default=true)
            • Apply signs for diagnostics.
            • See |vim.lsp.diagnostic.set_signs()|

          • update_in_insert: (default=false)
            • Update diagnostics in InsertMode or wait
              until InsertLeave

```

rockerboo:

@beginbot the last thing was diagnostics working with mutliple
language servers. For example I have diagnosticsls and tsserver working at the
same time now (giving me eslint linter, prettier formatting which tsserver
doesnt support) This allows me to drop ALE and use everything in LSP
