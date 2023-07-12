return { -- https://github.com/echasnovski/mini.nvim
  "echasnovski/mini.nvim", version = '*',
  config = function()
    require("mini.completion").setup()
    require("mini.move").setup({
      mappings = {
        -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
        left = '<M-Left>',
        right = '<M-Right>',
        down = '<M-Down>',
        up = '<M-Up>',

        -- Move current line in Normal mode
        line_left = '<M-Left>',
        line_right = '<M-Right>',
        line_down = '<M-Down>',
        line_up = '<M-Up>',
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
    -- Disable indentscope for some kind of buffers
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason", "terminal", "quickfix" },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
    require("mini.indentscope").setup({
      symbol = '¦'
    })
    require('mini.splitjoin').setup()
  end
}
