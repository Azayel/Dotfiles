local M = {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      local configs = require("ibl")
      
      configs.setup({
      })
    end,
  },
}

  return M
