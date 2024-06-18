return {
  {
    {
      "olimorris/onedarkpro.nvim",
      priority = 1000,
      lazy = true,
      opts = {
        transparency = false,
        lualine_transparency = true,
      },
    },
    {
      "LazyVim/LazyVim",
      opts = { colorscheme = "onedark" },
    },
  },
}
