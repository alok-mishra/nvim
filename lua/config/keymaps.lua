-- default: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- TODO:
-- Autocomplete set to <TAB>
-- Convert to individual lines with nmap, vmap, etc so logic can be applied
--
local Util = require("lazyvim.util")

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
    -- if opts.remap and not vim.g.vscode then
    --   opts.remap = nil
    -- end
    vim.keymap.set(mode, lhs, rhs, opts)
end

local function smap(mode, rule)
    map(mode, rule[1], rule[2], { remap = true, desc = rule[3] })
end

if vim.g.vscode then
    for _, vkey in ipairs({
        { "u", "<cmd>call VSCodeNotify('undo')<cr>", "Undo" },
        { "<C-r>", "<cmd>call VSCodeNotify('redo')<cr>", "Redo" },
    }) do
        smap("n", vkey)
    end
end

for _, n in ipairs({
    { "<M-h>", "<C-w>h", "Left Pane" },
    { "<M-j>", "<C-w>j", "Lower Pane" },
    { "<M-k>", "<C-w>k", "Upper Pane" },
    { "<M-l>", "<C-w>l", "Right Pane" },

    { "<C-h>", "[b", "Prev Buffer" },
    { "<C-l>", "]b", "Next Buffer" },

    { "<C-M-l>", "<leader>|", "Split Right" },
    { "<leader>wj", "<leader>-", "Split Below" },
    { "<leader>wl", "<leader>|", "Split Right" },

    { "<C-j>", "<cmd>vertical resize -2<cr>", "Decrease window width" },
    { "<C-k>", "<cmd>vertical resize +2<cr>", "Increase window width" },

    { "<M-d>", "<leader>bd", "Delete Buffer" },
    { "<M-`>", "<leader>bb", "Toggle Buffer" },

    { "<M-s>", "<cmd>w<cr><esc>", "Save File" },
    { "<M-S>", "<cmd>noautocmd w<cr><esc>", "Save w/o Formatting" },

    { "<M-q>", "<leader>qq", "Quit All" },

    { "<M-e>", "<leader>e", "Explorer" },
    { "<M-r>", "<cmd>luafile %<cr>", "Source File" },

    {
        "<C-`>",
        function()
            Util.float_term(nil, { cwd = Util.get_root() })
        end,
        "Terminal",
    },

    { "H", "0", "Start of line" },
    { "L", "$", "End of line" },
}) do
    smap("n", n)
end

for _, i in ipairs({
    { "jk", "<Esc>", "Escape" }, -- available in all environments
    { "kj", "<Esc>", "Escape" },
}) do
    smap("i", i)
end

for _, v in ipairs({
    { "H", "0", "Start of line" },
    { "L", "$", "End of line" },
}) do
    smap("v", v)
end

for _, t in ipairs({
    { "<C-`>", "<cmd>close<cr>", "Hide Terminal" },
}) do
    smap("t", t)
end
