
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "3rd/image.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons"
    },
    opts = {
      sources = {
        "filesystem",
        "buffers",
        "git_status",
        "document_symbols"
      },
      open_files_do_not_replace_types = {
        "terminal",
        "Trouble",
        "trouble",
        "qf",
        "Outline"
      },
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            ".DS_Store",
            "thumbs.db",
          },
          hide_by_pattern = {
            "*.meta",
            "*/src/*/tsconfig.json",
          },
          always_show = {
            ".gitignore",
          },
          never_show = {
            ".DS_Store",
            "thumbs.db",
          },
          never_show_by_pattern = {
            ".null-ls_*",
          },
        },
        bind_to_cwd = false,
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
      },
      window = {
        mappings = {
          ["<space>"] = "none"
        }
      },
      default_component_configs = {
        indent = {
          with_expanders = true,
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander"
        }
      }
    }
  },
  vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#e0af68" })
}
