-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function set(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  vim.keymap.set(mode, lhs, rhs, opts)
end

local del = vim.keymap.del

set("n", "<M-h>", "<C-w>h", { desc = "Go to left window" })
set("n", "<M-j>", "<C-w>j", { desc = "Go to lower window" })
set("n", "<M-k>", "<C-w>k", { desc = "Go to upper window" })
set("n", "<M-l>", "<C-w>l", { desc = "Go to right window" })

-- del({ "i", "v", "n", "s" }, "<C-s>")
set({ "i", "v", "n", "s" }, "<M-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

set("n", "<C-/>", "gcc", { remap = true, desc = "Go to right window" })

del("n", "<C-h>")
del("n", "<C-j>")
del("n", "<C-k>")
del("n", "<C-l>")
