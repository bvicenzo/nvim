return { -- Scrollbar
  "petertriho/nvim-scrollbar", -- https://github.com/petertriho/nvim-scrollbar
  config = function()
    require("scrollbar").setup()
    require("scrollbar.handlers.gitsigns").setup()
  end
}
