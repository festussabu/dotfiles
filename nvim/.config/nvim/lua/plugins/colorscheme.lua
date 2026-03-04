return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "night", -- night | storm | moon | day
			transparent = false,
		})
		vim.cmd.colorscheme("tokyonight-night")
	end,
}
