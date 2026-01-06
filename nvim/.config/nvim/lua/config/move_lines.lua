local M = {}

function M.setup(opts)
	opts = opts or {}

	local move_down = opts.move_down or "<C-j>"
	local move_up = opts.move_up or "<C-k>"
	local move_left = opts.move_left or "<C-h>"
	local move_right = opts.move_right or "<C-l>"

	local map = function(lhs, rhs)
		vim.keymap.set("x", lhs, rhs, { noremap = true, silent = true })
	end

	-- Move selected lines
	map(move_down, ":m '>+1<CR>gv=gv")
	map(move_up, ":m '<-2<CR>gv=gv")

	-- Indent left/right and keep selection
	map(move_left, "<gv")
	map(move_right, ">gv")
end

return M
