local M = {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	config = function()
		require("silicon").setup({
			-- Configuration here, or leave empty to use defaults
			font = "JetBrainsMono Nerd Font=34;Noto Color Emoji=34"
		})
	end
}

return M
