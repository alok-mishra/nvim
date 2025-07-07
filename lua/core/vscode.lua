-- VSCode Neovim Configuration

-- Options
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.clipboard = "unnamedplus"

-- Keymaps
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")

vim.keymap.set({"n", "v"}, "H", "0")  -- Start of line
vim.keymap.set({"n", "v"}, "L", "$")  -- End of line

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })

-- VSCode-specific commands
vim.keymap.set("n", "<leader>ff", "<cmd>call VSCodeNotify('workbench.action.quickOpen')<cr>")
vim.keymap.set("n", "<leader>fw", "<cmd>call VSCodeNotify('workbench.action.findInFiles')<cr>")
vim.keymap.set("n", "<leader>p", "<cmd>call VSCodeNotify('workbench.action.showCommands')<cr>")
vim.keymap.set("n", "<leader>o", "<cmd>call VSCodeNotify('workbench.action.joinTwoGroups')<cr>")
