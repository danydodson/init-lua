-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local util = require("config.util")

-- Remove key mappings that conflict with macOS
-- vim.keymap.del("n", "<C-Up>")
-- vim.keymap.del("n", "<C-Down>")
-- vim.keymap.del("n", "<C-Left>")
-- vim.keymap.del("n", "<C-Right>")

-- leader key
-- vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--
-- vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

-- Back to normal mode
vim.keymap.set("i", "jj", "<ESC>")

vim.keymap.set("n", "<leader>vwm", function()
  require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
  require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- make file executable
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- source current file
-- vim.keymap.set("n", "<leader><leader>", function()
--   vim.cmd("so")
-- end)

-- Resize with simple arrow keys
vim.keymap.set("n", "<Up>", "<cmd>resize +5<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<Down>", "<cmd>resize -5<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<Left>", "<cmd>vertical resize -10<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<Right>", "<cmd>vertical resize +10<cr>", { desc = "Increase window width" })

-- Equalize splits
vim.keymap.set("n", "<leader>b=", "<cmd>wincmd =<cr>", { desc = "Balance windows" })

-- Zoom current buffer
vim.keymap.set("n", "<leader>bz", "<cmd>wincmd _<cr>:wincmd |<cr>", { desc = "Zoom buffer" })

-- Toggle MiniMap
vim.keymap.set("n", "<leader>m", "<cmd>lua MiniMap.toggle()<cr>", { desc = "MiniMap" })

-- Save without formatting
vim.keymap.set("n", "<leader>qQ", "<cmd>noautocmd w<cr>", { desc = "Save without formatting" })

-- Buffer search/replace
vim.keymap.set("n", "<leader>sr", ":%s/", { desc = "Buffer search/replace" })

-- Sort text in a list
vim.keymap.set("v", "<leader>cs", ":'<,'>sort<cr>", { desc = "Sort selected lines" })

-- Toggle CursorColumn
vim.keymap.set("n", "<leader>uo", "<cmd>lua require('config.util').toggle_option('cursorcolumn')<cr>",
  { desc = "Toggle CursorColumn" }
)

-- Toggle ColorColumn
vim.keymap.set("n", "<leader>uO", "<cmd>lua require('config.util').toggle_colorcolumn()<cr>",
  { desc = "Toggle ColorColumn" })
