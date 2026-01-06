return {
	"williamboman/mason.nvim",
	dependencies = { "williamboman/mason-lspconfig.nvim", "WhoIsSethDaniel/mason-tool-installer.nvim" },
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "pyright", "ts_ls", "html", "cssls", "jsonls", "clangd" },
			automatic_installation = true,
		})
		require("mason-tool-installer").setup({
			ensure_installed = { "prettier", "stylua", "black", "eslint_d", "clang-format" },
		})
	end,
}
