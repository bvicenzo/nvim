return { -- https://github.com/echasnovski/mini.nvim
  "echasnovski/mini.nvim", version = '*',
  config = function()
    require("mini.animate").setup()
    require("mini.completion").setup()
    require("mini.move").setup({
      mappings = {
        -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
        left = '<M-h>',
        right = '<M-l>',
        down = '<M-j>',
        up = '<M-k>',

        -- Move current line in Normal mode
        line_left = '<M-h>',
        line_right = '<M-l>',
        line_down = '<M-j>',
        line_up = '<M-k>',
      },
    })
    require("mini.pairs").setup()
    require("mini.surround").setup({ -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-surround.md
      -- Open and close these brakets without adding spaces: https://github.com/echasnovski/mini.nvim/issues/128#issuecomment-1242763766
      custom_surroundings = {
        ['('] = { input = { '%b()', '^.().*().$' }, output = { left = '(', right = ')' } },
        ['['] = { input = { '%b[]', '^.().*().$' }, output = { left = '[', right = ']' } },
        ['{'] = { input = { '%b{}', '^.().*().$' }, output = { left = '{', right = '}' } },
        ['<'] = { input = { '%b<>', '^.().*().$' }, output = { left = '<', right = '>' } },
      },
    })
    require("mini.comment").setup() -- Need more understanding
    require("mini.indentscope").setup({
      symbol = '¦'
    })
    require('mini.splitjoin').setup()
  end
}
