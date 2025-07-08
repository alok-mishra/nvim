-- Plugin shortcuts
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find in files" })
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Open Lazy" })

-- Escape alternatives
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape" })
vim.keymap.set("i", "kj", "<Esc>", { desc = "Escape" })

-- Better line navigation
vim.keymap.set({"n", "v"}, "H", "0", { desc = "Start of line" })
vim.keymap.set({"n", "v"}, "L", "$", { desc = "End of line" })

-- Save file shortcuts
vim.keymap.set("n", "<M-s>", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("i", "<M-s>", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<M-S>", "<cmd>noautocmd w<cr>", { desc = "Save without formatting" })

-- Window navigation (Alt + hjkl)
vim.keymap.set("n", "<M-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<M-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<M-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<M-l>", "<C-w>l", { desc = "Go to right window" })

-- Window resizing
vim.keymap.set("n", "<C-j>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-k>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Window splitting
vim.keymap.set("n", "<leader>-", "<cmd>split<cr>", { desc = "Split below" })
vim.keymap.set("n", "<leader>|", "<cmd>vsplit<cr>", { desc = "Split right" })

-- Buffer navigation
vim.keymap.set("n", "<C-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<C-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<M-d>", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- File explorer
vim.keymap.set("n", "<M-e>", "<cmd>Explore<cr>", { desc = "File explorer" })

-- Clear search highlighting
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })

-- Better indenting (stay in visual mode)
vim.keymap.set("v", "<", "<gv", { desc = "Indent left" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right" })

-- Move lines up/down
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move selection up" })

-- Better pasting (don't lose clipboard)
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without losing clipboard" })

-- Quick quit
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
vim.keymap.set("n", "<leader>Q", "<cmd>qa<cr>", { desc = "Quit all" })
