return {
	"mbbill/undotree",
	cmd = "UndotreeToggle", -- lazy load when running :UndotreeToggle
	keys = {
		{ "<leader>u", vim.cmd.UndotreeToggle, desc = "Toggle Undotree" },
	},
	config = function()
		-- Persistent undo directory setup
		if vim.fn.has("persistent_undo") == 1 then
			local undodir = vim.fn.expand("~/.undodir")
			if vim.fn.isdirectory(undodir) == 0 then
				vim.fn.mkdir(undodir, "p", 0700)
			end
			vim.opt.undodir = undodir
			vim.opt.undofile = true
		end
	end,
}
