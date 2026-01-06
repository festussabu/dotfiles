local k = vim.keymap

-----------------------------------------------------------
-- BASIC
-----------------------------------------------------------
k.set("i", "jk", "<ESC>")
k.set("n", "<leader>w", "<cmd>w<CR>")
k.set("n", "<leader>q", "<cmd>q<CR>")

-----------------------------------------------------------
-- FILE TREE / BUFFERS / WINDOWS
-----------------------------------------------------------
k.set("n", "<leader>e", "<cmd>Neotree toggle<CR>")
k.set("n", "<Tab>", "<cmd>bnext<CR>")
k.set("n", "<S-Tab>", "<cmd>bprevious<CR>")

k.set("n", "<C-h>", "<C-w>h")
k.set("n", "<C-j>", "<C-w>j")
k.set("n", "<C-k>", "<C-w>k")
k.set("n", "<C-l>", "<C-w>l")

-----------------------------------------------------------
-- TELESCOPE
-----------------------------------------------------------
k.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
k.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
k.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")

-----------------------------------------------------------
-- LAZYGIT
-----------------------------------------------------------
k.set("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit" })

-----------------------------------------------------------
-- RUN PYTHON FILE
-----------------------------------------------------------
k.set("n", "<space><space>x", "<cmd>!python3 %<CR>")
k.set("n", "<space><space>g", "<cmd>!g++ -std=c++17 %<CR>")
k.set("n", "<space><space>c", "<cmd>!./a.out <CR>")
