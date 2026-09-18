-- lua/plugins/colorscheme.lua

return {
    {
      "catppuccin/nvim",
      name = "catppuccin",
      opts = {
        flavour = "mocha",
  
        integrations = {
          blink_cmp = true,
          gitsigns = true,
          mason = true,
          mini = true,
          native_lsp = {
            enabled = true,
          },
          noice = true,
          snacks = true,
          treesitter = true,
          which_key = true,
        },
      },
    },
  
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin",
      },
    },
  }