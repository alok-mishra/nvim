-- Auto commands

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Remove auto-comment on new lines
autocmd("FileType", {
    callback = function()
        vim.opt.formatoptions:remove("o")  -- no newline auto comment
    end,
})

-- Set filetype for .aliases files
autocmd("BufRead", {
    pattern = { "*.aliases" },
    callback = function()
        vim.bo.filetype = "sh"
    end,
})

-- Always open help in vertical split
autocmd("FileType", {
    pattern = { "help" },
    callback = function()
        vim.cmd("wincmd L")
    end,
})

-- Highlight on yank
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Restore cursor position when reopening files
autocmd("BufReadPost", {
    callback = function()
        local last_pos = vim.fn.line("'\"")
        if last_pos > 0 and last_pos <= vim.fn.line("$") then
            vim.api.nvim_win_set_cursor(0, {last_pos, 0})
        end
    end,
})
