local M = {
	"lervag/vimtex",

	config = function()
		vim.cmd("filetype plugin indent on")
		vim.cmd("syntax enable")
		vim.cmd("let g:vimtex_view_method = 'zathura'")
		vim.cmd("let g:vimtex_compiler_method = 'latexmk'")
		vim.cmd("let g:vimtex_quickfix_mode=0")
		vim.cmd(" set conceallevel=0")
		vim.cmd(" let g:tex_conceal='abdmg'")
	end,
}

return M
