-- Default keymaps: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- TODO:
-- Autocomplete set to <TAB>

for _, d in ipairs({
  "<C-h>",
  "<C-j>",
  "<C-k>",
  "<C-l>",
  "<C-/>",
}) do
  vim.keymap.del("n", d)
end

local function map(mode, lhs, rhs, opts)
  opts = opts or {}
  mode = mode or { "n" }
  opts.silent = opts.silent ~= false
  vim.keymap.set(mode, lhs, rhs, opts)
end

for _, n in ipairs({
  { "<M-h>", "<C-w>h", "Left Pane" },
  { "<M-j>", "<C-w>j", "Lower Pane" },
  { "<M-k>", "<C-w>k", "Upper Pane" },
  { "<M-l>", "<C-w>l", "Right Pane" },

  { "<M-d>", "<leader>bd", "Delete Buffer" },
  { "<M-s>", "<cmd>w<cr><esc>", "Save File" },
  { "<M-e>", "<leader>e", "Explorer" },

  { "<M-r>", "<cmd>source %<cr><esc>", "Source File" },

  { "<C-/>", "gcc", "Comment Line" },

  { "H", "0", "Start of line" },
  { "L", "$", "End of line" },
}) do
  map("n", n[1], n[2], { remap = true, desc = n[3] })
end

for _, v in ipairs({
  { "<C-/>", "gc", "Comment Selection" },
}) do
  map("v", v[1], v[2], { remap = true, desc = v[3] })
end
