return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon"):setup()
	end,
	keys = {
		{
			"<leader>a",
			function()
				require("harpoon"):list():add()
			end,
			desc = "Harpoon add file",
		},
		{
			"<leader>h",
			function()
				local harpoon = require("harpoon")
				harpoon.ui:toggle_quick_menu(harpoon:list(), { border = "rounded" })
			end,
			desc = "Harpoon menu",
		},
		{
			"<A-1>",
			function()
				require("harpoon"):list():select(1)
			end,
			desc = "Harpoon 1",
		},
		{
			"<A-2>",
			function()
				require("harpoon"):list():select(2)
			end,
			desc = "Harpoon 2",
		},
		{
			"<A-3>",
			function()
				require("harpoon"):list():select(3)
			end,
			desc = "Harpoon 3",
		},
		{
			"<A-4>",
			function()
				require("harpoon"):list():select(4)
			end,
			desc = "Harpoon 4",
		},
		{
			"<A-5>",
			function()
				require("harpoon"):list():select(5)
			end,
			desc = "Harpoon 5",
		},
	},
}
