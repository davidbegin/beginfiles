
-- LLLLLLLLLLL            UUUUUUUU     UUUUUUUU           AAA
-- L:::::::::L            U::::::U     U::::::U          A:::A
-- L:::::::::L            U::::::U     U::::::U         A:::::A
-- LL:::::::LL            UU:::::U     U:::::UU        A:::::::A
--   L:::::L               U:::::U     U:::::U        A:::::::::A
--   L:::::L               U:::::D     D:::::U       A:::::A:::::A
--   L:::::L               U:::::D     D:::::U      A:::::A A:::::A
--   L:::::L               U:::::D     D:::::U     A:::::A   A:::::A
--   L:::::L               U:::::D     D:::::U    A:::::A     A:::::A
--   L:::::L               U:::::D     D:::::U   A:::::AAAAAAAAA:::::A
--   L:::::L               U:::::D     D:::::U  A:::::::::::::::::::::A
--   L:::::L         LLLLLLU::::::U   U::::::U A:::::AAAAAAAAAAAAA:::::A
-- LL:::::::LLLLLLLLL:::::LU:::::::UUU:::::::UA:::::A             A:::::A
-- L::::::::::::::::::::::L UU:::::::::::::UUA:::::A               A:::::A
-- L::::::::::::::::::::::L   UU:::::::::UU A:::::A                 A:::::A
-- LLLLLLLLLLLLLLLLLLLLLLLL     UUUUUUUUU  AAAAAAA                   AAAAAAA


local mapper = function(mode, key, result)
  vim.api.nvim_buf_set_keymap(0, mode, key, result, {noremap = true, silent = true})
end

local nvim_lsp = require'nvim_lsp'

local on_attach_simple = function(client)
  require'completion'.on_attach(client)
end

local on_attach_vim = function(client)
  require'completion'.on_attach(client)
  require'diagnostic'.on_attach(client)
end

local on_attach_vim_plus_keymaps = function(client)
  on_attach_vim(client)
  mapper('n', '1gD',        '<cmd> lua vim.lsp.buf.type_definition()<CR>')
  mapper('n', '<C-k>',      '<cmd> lua vim.lsp.buf.signature_help()<CR>')
  mapper('n', '<leader>rn', '<cmd> lua vim.lsp.buf.rename()<CR>')
  mapper('n', '<c-k>',      '<cmd> lua vim.lsp.buf.signature_help()<CR>')
  mapper('n', 'K',          '<cmd> lua vim.lsp.buf.hover()<CR>')
  mapper('n', 'H',          '<cmd> lua vim.lsp.buf.hover()<CR>')
  mapper('n', 'g0',         '<cmd> lua vim.lsp.buf.document_symbol()<CR>')
  mapper('n', 'gD',         '<cmd> lua vim.lsp.buf.implementation()<CR>')
  mapper('n', 'gW',         '<cmd> lua vim.lsp.buf.workspace_symbol()<CR>')
  mapper('n', 'gd',         '<cmd> lua vim.lsp.buf.definition()<CR>')
  mapper('n', '<c-]>',       '<cmd> lua vim.lsp.buf.declaration()<CR>')
end

-- nvim_lsp.pyls.setup{on_attach=on_attach_vim_plus_keymaps}
nvim_lsp.pyls_ms.setup{on_attach=on_attach_vim_plus_keymaps}

nvim_lsp.sumneko_lua.setup{
  on_attach=on_attach_vim_plus_keymaps,
}

nvim_lsp.gopls.setup{
  on_attach=on_attach_vim,
  root_dir=nvim_lsp.util.root_pattern('.git');
}

nvim_lsp.terraformls.setup{
  on_attach=on_attach_vim_plus_keymaps,
  cmd = {"terraform-ls", "serve"},
  root_dir = nvim_lsp.util.root_pattern(".terraform", ".git");
}

require'colorizer'.setup()

require'nvim-treesitter.configs'.setup{}

-- We need to tell lua to always reload begin.tele
-- since it updated with such lining speed
package.loaded['begin.tele'] = nil
require('begin.tele').setup()

-- Why do I need this?
require('plugin.completion')
require('plugin.full_line_teej')
