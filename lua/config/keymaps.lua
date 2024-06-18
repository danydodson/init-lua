
-- fix for macos
vim.keymap.del("n", "<C-Up>")
vim.keymap.del("n", "<C-Down>")
vim.keymap.del("n", "<C-Left>")
vim.keymap.del("n", "<C-Right>")

-- i like it
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("i", "<C-c>", "<Esc>")

-- move next line up once
vim.keymap.set("n", "J", "mzJ`z")

-- jump cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- bring search results to midscreen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- search yank history
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank from cursor to end of line
vim.keymap.set("n", "<leader>Y", [[+Yank]])

-- yank whole line to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [[+yank]])

-- format code
vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format)

-- search and replace
vim.keymap.set("n", "<leader>sr", ":%s/", { desc = "Buffer search/replace" })

-- balance windows
vim.keymap.set("n", "<leader>b=", "<cmd>wincmd =<cr>", { desc = "Balance windows" })

-- zoom buffer
vim.keymap.set("n", "<leader>bz", "<cmd>wincmd _<cr>:wincmd |<cr>", { desc = "Zoom buffer" })

-- open terminal
vim.keymap.set("n", "<C-.>", function() LazyVim.terminal() end, { desc = "Terminal (cwd)" })

-- close terminal
vim.keymap.set("t", "<C-.>", "<cmd>close<cr>", { desc = "Hide Terminal" })

