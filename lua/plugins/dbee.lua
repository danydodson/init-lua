-- https://github.com/kndndrj/nvim-dbee

return {
  {
    "kndndrj/nvim-dbee",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    build = function()
      -- Install tries to automatically detect the install method.
      -- if it fails, try calling it with one of these parameters:
      --    "curl", "wget", "bitsadmin", "go"
      require("dbee").install()
    end,
    config = function()
      -- require("dbee").setup( --[[optional config]])

      require("dbee.sources").MemorySource:new({
        {
          name = "...",
          type = "...",
          url = "...",
        }
      })
    end,
  },
}
