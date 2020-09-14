vim.g.completion_chain_complete_list = {
  default = {
    default = {
      {complete_items = {"lsp", "snippet", "ts"}},
      {mode = "file"},
    },
    markdown = {
      {complete_items = {"buffer"}},
      {mode = "file"},
    },
    vim = {
      {complete_items = {"buffer"}},
      {mode = "file"},
    },
  },
}
