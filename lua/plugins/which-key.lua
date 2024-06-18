return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 50
    end,
    opts = {
      key_labels = {
        ["<space>"] = "SPC",
        ["<cr>"] = "RET",
        ["<tab>"] = "TAB",
      },
      window = {
        -- border = "none",
        -- margin = { 1, 0, 1, 0 },
        -- padding = { 1, 2, 1, 2 },
      },
    },
  },
}
