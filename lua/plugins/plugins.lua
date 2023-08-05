-- local Util = require("lazyvim.util")
-- print(Util.get_root())

return {
  -- {
  --   "goolord/alpha-nvim",
  --
  --   event = "VimEnter",
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  --   opts = { require("alpha.themes.startify").config },
  -- },
  --
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      follow = true,
    },
  },

  {
    "echasnovski/mini.comment",
    opts = {
      mappings = {
        comment = "<C-/>",
        comment_line = "<C-_>",
      },
    },
  },
}
