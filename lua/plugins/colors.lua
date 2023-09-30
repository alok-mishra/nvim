if vim.g.vscode then
    return {
        { "ellisonleao/gruvbox.nvim" },
        {
            "LazyVim/LazyVim",
            opts = {
                colorscheme = "gruvbox",
            },
        },
    }
else
    return {
        { "ellisonleao/gruvbox.nvim" },
        {
            "catppuccin/nvim",
            name = "catppuccin",
            opts = {
                flavour = "mocha",
                transparent_background = true,

                custom_highlights = function(colors)
                    return {
                        CmpBorder = { fg = colors.pink },
                    }
                end,
            },
        },

        {
            "LazyVim/LazyVim",
            opts = {
                colorscheme = "catppuccin",
            },
        },
    }
end
