-- local Util = require("lazyvim.util")
-- print(Util.get_root())

local cmp = require("cmp")

return {
    -- {
    --   "goolord/alpha-nvim",
    --
    --   event = "VimEnter",
    --   dependencies = { "nvim-tree/nvim-web-devicons" },
    --   opts = { require("alpha.themes.startify").config },
    -- },
    --

    -- { "goolord/alpha-nvim", enabled = false },

    {
        "nvim-telescope/telescope.nvim",
        opts = {
            follow = true,
        },
    },

    {
        "hrsh7th/nvim-cmp",
        opts = {
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
        },
    },

    {
        "rcarriga/nvim-notify",
        opts = {
            background_colour = "#000000", -- needed for 100% transparency
        },
    },

    {
        "gorbit99/codewindow.nvim",
        config = function()
            local codewindow = require("codewindow")
            codewindow.setup({
                -- auto_enable = true,
                minimap_width = 10,
            })
            codewindow.apply_default_keybinds()
        end,
    },
    {
        "echasnovski/mini.comment",

        opts = {
            mappings = {
                comment = "<M-/>",
                comment_line = "<M-/>",
            },
        },
    },
    {
        "L3MON4D3/LuaSnip",
        keys = function()
            return {}
        end,
    },

    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = { eslint = {} },
            setup = {
                eslint = function()
                    require("lazyvim.util").on_attach(function(client)
                        if client.name == "eslint" then
                            client.server_capabilities.documentFormattingProvider = true
                        elseif client.name == "tsserver" then
                            client.server_capabilities.documentFormattingProvider = false
                        end
                    end)
                end,
            },
        },
    },
}
