-- https://github.com/olimorris/onedarkpro.nvim

return {
  {
    "olimorris/onedarkpro.nvim",
    lazy = true,
    priority = 1000,
    name = "onedarkpro",
    opts = {
      style = "vivid",
      no_italic = true,
      transparent_background = true,
      noice = true,
      hide_inactive_statusline = false,
      dim_inactive = false,
      lualine_bold = false,
      transparent = true,
      terminal_colors = true,
      styles = {
        types = "NONE",
        methods = "NONE",
        numbers = "NONE",
        strings = "NONE",
        comments = "NONE",
        keywords = "NONE",
        constants = "NONE",
        functions = "NONE",
        operators = "NONE",
        variables = "NONE",
        parameters = "NONE",
        conditionals = "NONE",
        virtual_text = "NONE",
      }
    },
  },
}
