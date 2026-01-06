return {
  "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        offsets = { { filetype = "neo-tree", text = "File Explorer", separator = true } },
      },
    })
  end,
}
