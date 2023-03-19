-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("toggleterm").setup({
  size = 10,
  open_mapping = [[<C-\>]],
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
