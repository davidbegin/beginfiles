vim.g.completion_chain_complete_list = {
    default = {
      {complete_items = {"lsp", "buffers", "snippet", "ts"}},
      {mode = "file"},
      {mode = '<c-p>'},
      {mode = '<c-n>'}
    },
    go = {
      {complete_items = {"lsp", "snippet", "ts"}},
      {mode = "file"},
      {mode = '<c-p>'},
      {mode = '<c-n>'}
    },
    markdown = {
      {complete_items = {"buffers"}},
      {mode = "file"},
      {mode = '<c-p>'},
      {mode = '<c-n>'}
    },
    vim = {
      {complete_items = {"buffers"}},
      {mode = "file"},
      {mode = '<c-p>'},
      {mode = '<c-n>'}
    },
    terraform = {
      {complete_items = {"lsp", "buffers"}},
      {mode = "file"},
      {mode = '<c-p>'},
      {mode = '<c-n>'}
    },
}
