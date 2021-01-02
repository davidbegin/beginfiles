
function MakeAndPopulateQFList()
  vim.cmd(":cg")
  require'telescope.builtin'.quickfix{}
end

