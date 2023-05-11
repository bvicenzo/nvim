
return { -- https://github.com/echasnovski/mini.nvim
  "Mofiqul/dracula.nvim", version = '*',
  config = function()
    require("dracula").setup({
      theme = 'dracula-nvim'
    })
    vim.cmd[[colorscheme dracula]]
  end
}
