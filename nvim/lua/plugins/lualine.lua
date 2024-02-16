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
        theme = 'dracula'
      }
    })
  end

}


return M