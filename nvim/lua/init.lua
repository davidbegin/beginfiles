
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


local nvim_lsp = require'nvim_lsp'

local on_attach_vim = function(client)
  require'completion'.on_attach(client)
  require'diagnostic'.on_attach(client)
end

nvim_lsp.pyls.setup{on_attach=on_attach_vim}

nvim_lsp.sumneko_lua.setup{}

nvim_lsp.gopls.setup{
  on_attach=on_attach_vim,
  root_dir=nvim_lsp.util.root_pattern('.git');
}

nvim_lsp.terraformls.setup{
  on_attach=on_attach_vim
}

require'colorizer'.setup()

require'nvim-treesitter.configs'.setup{}

-- We need to tell lua to always reload begin.tele
-- since it updated with such lighning speed
package.loaded['begin.tele'] = nil
require('begin.tele').setup()

require'plugin.completion'
