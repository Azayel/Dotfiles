return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      auto_install = true,
      ensure_installed = { "cpp", "lua", "vim", "glsl", "java", "make", "cmake", "rust", "markdown" },
      sync_install = false,
      highlight = {
        enable = true,
        disable = { "latex" },
      },
      indent = { enable = true },
    })
  end,
}
