-- lua/plugins/oil.lua

return {
    {
      "stevearc/oil.nvim",
      cmd = "Oil",
      keys = {
        {
          "-",
          "<cmd>Oil<cr>",
          desc = "Open parent directory",
        },
      },
      opts = {
        default_file_explorer = false,
        view_options = {
          show_hidden = true,
        },
      },
    },
  }