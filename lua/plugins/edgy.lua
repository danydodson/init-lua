-- https://github.com/folke/edgy.nvim
return {
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    opts = function()
      local opts = {
        bottom = {
          {
            ft = "noice",
            size = { height = 0.3 },
            filter = function(buf, win)
              return vim.api.nvim_win_get_config(win).relative == ""
            end,
          },
          {
            ft = "toggleterm",
            size = { height = 0.4 },
            -- exclude floating windows
            filter = function(buf, win)
              return vim.api.nvim_win_get_config(win).relative == ""
            end,
          },
          {
            ft = "lazyterm",
            title = "LazyTerm",
            size = { height = 0.2 },
            filter = function(buf)
              return not vim.b[buf].lazyterm_cmd
            end,
          },
          {
            ft = "trouble",
            filter = function(buf, win)
              return vim.api.nvim_win_get_config(win).relative == ""
            end,
          },
          "Trouble",
          {
            ft = "qf",
            title = "QuickFix",
          },
          {
            ft = "help",
            size = { height = 20 },
            -- don't open help files in edgy that we're editing
            filter = function(buf)
              return vim.bo[buf].buftype == "help"
            end,
          },
          {
            title = "Spectre",
            ft = "spectre_panel",
            size = { height = 0.3 }
          },
          {
            title = "Neotest Output",
            ft = "neotest-output-panel",
            size = { height = 15 }
          },
        },
        left = {
          {
            title = "Neo-Tree",
            ft = "neo-tree",
            filter = function(buf)
              return vim.b[buf].neo_tree_source == "filesystem"
            end,
            pinned = true,
            open = function()
              vim.api.nvim_input("<esc><space>e")
            end,
            size = { height = 0.5 },
          },
          {
            title = "Neotest Summary",
            ft = "neotest-summary",
          },
          "neo-tree",
        },
        keys = {
          ["<Right>"] = function(win)
            win:resize("width", 2)
          end,
          ["<Left>"] = function(win)
            win:resize("width", -2)
          end,
          ["<Up>"] = function(win)
            win:resize("height", 2)
          end,
          ["<Down>"] = function(win)
            win:resize("height", -2)
          end,
        },
      }
      return opts
    end,
  },
}
