return { -- Files Tree
  "ruifm/gitlinker.nvim", version = "*", -- https://github.com/nvim-neo-tree/neo-tree.nvim
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("gitlinker").setup()

    vim.api.nvim_set_keymap('n', '<leader>of', '<cmd>lua require("gitlinker").get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>', {silent = true})
    vim.api.nvim_set_keymap('v', '<leader>of', '<cmd>lua require("gitlinker").get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<cr>', {})
  end
}
