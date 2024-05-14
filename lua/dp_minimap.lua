local minimap = require 'mini.map'
local symbols = minimap.gen_encode_symbols.dot '4x2'

symbols[1] = ' '

minimap.setup {
  integrations = {
    minimap.gen_integration.builtin_search(),
    minimap.gen_integration.gitsigns(),
    minimap.gen_integration.diagnostic(),
  },
  symbols = {
    encode = symbols,
  },
  window = {
    focusable = true,
    -- side = 'right',
    -- show_integration_count = true,
    -- width = 10,
    width = 24,
    -- winblend = 25,
    -- zindex = 10,
  },
}
