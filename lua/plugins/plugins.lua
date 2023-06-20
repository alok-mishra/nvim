local Util = require("lazyvim.util")
-- print(Util.get_root())

return {
  -- allow GUI commands such as GuiRenderLigatures
  { "equalsraf/neovim-gui-shim" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ignore_install = {
        "help",
      },
    },
  },

  -- multiple terminals for project development
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 12,
        open_mapping = [[<M-\>]],
        -- shell = "sh --login -i  --cd " .. "vim.fn.getcwd()",
        -- shell = "sh --login -i -c --cd " .. vim.fn.getcwd(),
        -- shell = "sh --cd=" .. Util.get_root(),
        -- shell = "sh",
        -- hide_numbers = true,
        -- shade_filetypes = {},
        -- shade_terminals = true,
        -- shading_factor = 2,
        -- start_in_insert = true,
        -- insert_mappings = true,
        -- persist_size = true,
        -- close_on_exit = true,
        -- direction = "float",
        -- float_opts = {
        --   border = "curved",
        --   winblend = 0,
        --   highlights = {
        --     border = "Normal",
        --     background = "Normal",
        --   },
        -- },
      })
    end,
  },
}
