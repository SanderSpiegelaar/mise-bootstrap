-- lua/plugins/treesitter.lua

return {
    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = {
          "bash",
          "dockerfile",
          "fish",
          "git_config",
          "git_rebase",
          "gitcommit",
          "gitignore",
          "html",
          "javascript",
          "json",
          "json5",
          "lua",
          "markdown",
          "markdown_inline",
          "sql",
          "toml",
          "tsx",
          "typescript",
          "yaml",
        },
      },
    },
  }