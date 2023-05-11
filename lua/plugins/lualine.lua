return { -- https://github.com/echasnovski/mini.nvim
  "nvim-lualine/lualine.nvim", version = '*',
  config = function()
    require("lualine").setup({
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })
  end
}
