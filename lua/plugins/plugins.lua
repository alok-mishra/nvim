return {
  -- allow GUI commands such as GuiRenderLigatures
  { "equalsraf/neovim-gui-shim" },

  -- multiple terminals for project development
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 10,
        open_mapping = [[<C-\>]],
        shell = "sh",
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
