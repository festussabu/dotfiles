return {
	"iamcco/markdown-preview.nvim",
	build = function()
		vim.fn["mkdp#util#install"]() -- Installs dependencies (npm)
	end,
	ft = { "markdown" },
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
		vim.g.mkdp_theme = "light" -- or "dark"
	end,
}
