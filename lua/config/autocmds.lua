-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd("Filetype", {
    callback = function()
        vim.opt.formatoptions:remove("o") -- no newline auto comment
    end,
})

autocmd("BufRead", {
    pattern = { "*.aliases" },
    callback = function()
        vim.bo.filetype = "sh"
    end,
})
