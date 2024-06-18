
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "j-hui/fidget.nvim", opts = {} },
      "stevearc/conform.nvim",
      "b0o/SchemaStore.nvim",
    },

    opts = {
      diagnostics = {
        virtual_text = {
          prefix = "icons",
        },
      },
      capabilities = {
        workspace = {
          didChangeWatchedFiles = {
            dynamicRegistration = false,
          },
        },
      },

      ---@type lspconfig.options
      servers = {
        lua_ls = {
          settings = {
            Lua = {},
          },
        },
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {},
          },
        },
      },
    },
  },
}
