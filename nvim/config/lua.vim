lua <<EOF

local nvim_lsp = require'nvim_lsp'

local on_attach_vim = function()
  require'completion'.on_attach()
  require'diagnostic'.on_attach()
end

nvim_lsp.pyls.setup{on_attach=on_attach_vim}

nvim_lsp.sumneko_lua.setup{}

nvim_lsp.gopls.setup{
  root_dir = nvim_lsp.util.root_pattern('.git');
}

nvim_lsp.terraformls.setup{}

require'nvim-treesitter.configs'.setup{}

-- We need to tell lua to always reload begin.tele
-- since it updated with such lighning speed
package.loaded['begin.tele'] = nil
require('begin.tele').setup()

EOF
