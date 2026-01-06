return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "lua", "vim", "vimdoc", "query", "python", "c", "cpp", "markdown" },
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
	},
}
