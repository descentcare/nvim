return {
    {
        "folke/snacks.nvim",
        -- @type snacks.Config
        opt = {
            picker = {},
            lazygit = {},
            toggle = {},
        },
        keys = {
            -- Top Pickers & Explorer
            { "<leader><leader>", function() require("snacks").picker.pickers() end, desc = "Pick pickers" },
            { "<leader>pf", function() require("snacks").picker.files() end, desc = "Find Files" },
            { "<leader>ps", function() require("snacks").picker.smart() end, desc = "Smart Find Files" },
            { "<leader>pb", function() require("snacks").picker.buffers() end, desc = "Buffers" },
            { "<leader>pg", function() require("snacks").picker.grep() end, desc = "Grep" },
            { "<leader>pc", function() require("snacks").picker.command_history() end, desc = "Command History" },
            { "<leader>pn", function() require("snacks").picker.notifications() end, desc = "Notification History" },
            { "<leader>pp", function() require("snacks").picker.projects() end, desc = "Projects" },
            { "<leader>pr", function() require("snacks").picker.recent() end, desc = "Recent" },
            -- search
            { "<leader>ph", function() require("snacks").picker.help() end, desc = "Help Pages" },
            { "<leader>pi", function() require("snacks").picker.icons() end, desc = "Icons" },
            { "<leader>pq", function() require("snacks").picker.qflist() end, desc = "Quickfix List" },
            { "<leader>pr", function() require("snacks").picker.resume() end, desc = "Resume" },
            { "<leader>uC", function() require("snacks").picker.colorschemes() end, desc = "Colorschemes" },
            -- LSP
            { "<leader>pd", function() require("snacks").picker.diagnostics() end, desc = "Diagnostics" },
            { "<leader>pD", function() require("snacks").picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
            { "gd", function() require("snacks").picker.lsp_definitions() end, desc = "Goto Definition" },
            { "gD", function() require("snacks").picker.lsp_declarations() end, desc = "Goto Declaration" },
            { "gr", function() require("snacks").picker.lsp_references() end, nowait = true, desc = "References" },
            { "gI", function() require("snacks").picker.lsp_implementations() end, desc = "Goto Implementation" },
            { "gy", function() require("snacks").picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
            { "<leader>ss", function() require("snacks").picker.lsp_symbols() end, desc = "LSP Symbols" },
            { "<leader>sS", function() require("snacks").picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
            -- LazyGit
            { "<leader>lg", function() require("snacks").lazygit() end, desc = "Open lazygit" },
            -- Explorer
            { "<leader>e", function() require("snacks").picker.explorer({
                layout = { preview = true },
                win = {
                    list = {
                        keys = {

                        },
                    },
                },
            }) end, desc = "File Explorer" },
        },
    },
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require "extensions.mason"
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        lazy = false,
        config = function()
            require "extensions.gitsigns"
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require "extensions.treesitter"
        end
    },
    {
        "jinh0/eyeliner.nvim",
        config = function()
            require"eyeliner".setup {
                highlight_on_key = true
            }
        end
    },
    {
        "saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = "1.*",
        opts = {
            keymap = {
                preset = "default",
                ['<C-u>'] = { "accept" },
            },

            appearance = {
                nerd_font_variant = "mono"
            },

            completion = {
                documentation = { auto_show = true },
                list = { selection = { preselect = false, auto_insert = true } },
            },

            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },

            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opt = {},
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function ()
            vim.cmd.colorscheme("tokyonight")
        end
    },
}
