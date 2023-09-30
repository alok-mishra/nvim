-- bootstrap lazy.nvim, unless running inside vscode

if not vim.g.vscode then
    require("config.lazy")
else
    -- keymaps
    vim.keymap.set("n", "u", "<cmd>call VSCodeNotify('undo')<cr>")
    vim.keymap.set("n", "<C-r>", "<cmd>call VSCodeNotify('redo')<cr>")

    -- options
    vim.opt.smartcase = true
end
