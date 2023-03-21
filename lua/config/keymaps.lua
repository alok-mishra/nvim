-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- TODO:
-- Autocomplete set to <TAB>
-- Mutiple terminals

local function set(mode, lhs, rhs, opts)
  opts = opts or {}
  mode = mode or { "n" }
  opts.silent = opts.silent ~= false
  vim.keymap.set(mode, lhs, rhs, opts)
end

local del = vim.keymap.del

del("n", "<C-h>")
del("n", "<C-j>")
del("n", "<C-k>")
del("n", "<C-l>")

local n = {
  { "<M-h>", "<C-w>h", "Left Pane" },
  { "<M-j>", "<C-w>j", "Lower Pane" },
  { "<M-k>", "<C-w>k", "Upper Pane" },
  { "<M-l>", "<C-w>l", "Right Pane" },

  { "<M-d>", "<leader>bd", "Delete Buffer" },
  { "<M-e>", "<leader>e", "Explorer" },
}

for _, v in ipairs(n) do
  set("n", v[1], v[2], { remap = true, desc = v[3] })
end

set({ "i", "v", "n", "s" }, "<M-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
set({ "n", "v" }, "<M-r>", "<cmd>source %<cr><esc>", { desc = "Source File" })

set("n", "<M-/>", "gcc", { remap = true, desc = "Comment Line" })
set("v", "<M-/>", "gc", { remap = true, desc = "Comment Selection" })

if vim.g.neovide then
  print("Neovide!")
end
