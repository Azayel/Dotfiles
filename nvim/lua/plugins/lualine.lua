local M = {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  priority = 1000,
  config = function()
    local config = require('lualine')
    config.setup({
      options = {
        theme = 'gruvbox_dark'
      }
    })
  end

}


return M
