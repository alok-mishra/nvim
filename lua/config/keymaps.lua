-- default: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

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

local function smap(mode, rule)
  map(mode, rule[1], rule[2], { remap = true, desc = rule[3] })
end

for _, n in ipairs({
  { "<M-h>", "<C-w>h", "Left Pane" },
  { "<M-j>", "<C-w>j", "Lower Pane" },
  { "<M-k>", "<C-w>k", "Upper Pane" },
  { "<M-l>", "<C-w>l", "Right Pane" },

  { "<C-h>", "[b", "Prev Buffer" },
  { "<C-l>", "]b", "Next Buffer" },

  { "<C-j>", "<cmd>vertical resize -2<cr>", "Decrease window width" },
  { "<C-k>", "<cmd>vertical resize +2<cr>", "Increase window width" },

  { "<M-d>", "<leader>bd", "Delete Buffer" },
  { "<M-`>", "<leader>bb", "Toggle Buffer" },
  { "<M-s>", "<cmd>w<cr><esc>", "Save File" },

  { "<M-e>", "<leader>e", "Explorer" },
  { "<M-r>", "<cmd>luafile %<cr>", "Source File" },

  { "<C-/>", "gcc", "Comment Line" },

  { "H", "0", "Start of line" },
  { "L", "$", "End of line" },
}) do
  smap("n", n)
end

for _, v in ipairs({
  { "<C-/>", "gc", "Comment Selection" },
}) do
  smap("v", v)
end
