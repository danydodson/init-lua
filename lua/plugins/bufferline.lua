-- https://github.com/akinsho/bufferline.nvim

return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "[b", "<cmd>BufferLineMovePrev<cr>", desc = "Buffer move prev" },
      { "]b", "<cmd>BufferLineMoveNext<cr>", desc = "Buffer move next" },
    },
  },
}
