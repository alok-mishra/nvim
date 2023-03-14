-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  vim.keymap.set(mode, lhs, rhs, opts)
end

map("n", "<M-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<M-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<M-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<M-l>", "<C-w>l", { desc = "Go to right window" })

map({ "i", "v", "n", "s" }, "<M-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
