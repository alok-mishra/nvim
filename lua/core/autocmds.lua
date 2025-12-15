-- Auto commands

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Remove auto-comment on new lines
autocmd("FileType", {
    group = augroup("custom-formatoptions", { clear = true }),
    callback = function()
        vim.opt.formatoptions:remove("o")  -- no newline auto comment
    end,
})

-- Set filetype for .aliases files
autocmd("BufRead", {
    group = augroup("custom-filetypes", { clear = true }),
    pattern = { "*.aliases" },
    callback = function()
        vim.bo.filetype = "sh"
    end,
})

-- Always open help in vertical split
autocmd("FileType", {
    group = augroup("custom-help-vsplit", { clear = true }),
    pattern = { "help" },
    callback = function()
        vim.cmd("wincmd L")
    end,
})

-- Highlight on yank
autocmd("TextYankPost", {
    group = augroup("custom-highlight-yank", { clear = true }),
    desc = "Highlight when yanking (copying) text",
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Restore cursor position when reopening files
autocmd("BufReadPost", {
    group = augroup("custom-restore-cursor", { clear = true }),
    desc = "Restore cursor position when reopening files",
    callback = function()
        local last_pos = vim.fn.line("'\"")
        if last_pos > 0 and last_pos <= vim.fn.line("$") then
            vim.api.nvim_win_set_cursor(0, {last_pos, 0})
        end
    end,
})

-- Auto-reload config when files are saved
autocmd("BufWritePost", {
    group = augroup("custom-reload-config", { clear = true }),
    pattern = vim.fn.stdpath("config") .. "/**/*.lua",
    desc = "Reload Neovim config when saving lua files",
    callback = function(event)
        local filepath = vim.api.nvim_buf_get_name(event.buf)
        local config_dir = vim.fn.stdpath("config")

        -- Convert filepath to module name (e.g., /path/to/lua/core/options.lua -> core.options)
        local module_name = filepath:gsub(config_dir .. "/lua/", ""):gsub("%.lua$", ""):gsub("/", ".")

        -- Clear cache and reload the specific module
        package.loaded[module_name] = nil
        require(module_name)

        vim.notify("Reloaded " .. module_name, vim.log.levels.INFO)
    end,
})
