-- VSCode Neovim Configuration

-- Options
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.clipboard = "unnamedplus"

-- Disable Neovim's undo file creation
vim.opt.undofile = false

-- Sync undo/redo with VSCode's native undo stack
vim.keymap.set("n", "u", "<cmd>call VSCodeNotify('undo')<cr>", { silent = true })
vim.keymap.set("n", "<C-r>", "<cmd>call VSCodeNotify('redo')<cr>", { silent = true })

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
