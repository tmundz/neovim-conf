return {
    {
        { "b0o/schemastore.nvim", ft = { "typescript", "javascript" } },
        { "jose-elias-alvarez/typescript.nvim", ft = { "typescript", "javascript" } },
        { "mfussenegger/nvim-jdtls", ft = { "java" } },
        { "ray-x/lsp_signature.nvim" },
        { "folke/neodev.nvim", config = true },
    },
    {
        "neovim/nvim-lspconfig",
        event = "BufReadPre",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "simrat39/rust-tools.nvim",
        },

        config = function()
            --equire("plugins.lsp.lspconfig").config()
        end,
    },
    -- },
    {
        "Maan2003/lsp_lines.nvim",
        event = "BufReadPre",
        opts = {
            text = {
                done = "✔",
            },
        },
    },
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
        },
        event = { "BufReadPre", "BufNew" },
        config = function()
            require("plugins.lsp.mason").config()
        end,
    },

    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = "jose-elias-alvarez/typescript.nvim",
        event = "BufReadPost",
        config = function()
            --require("plugins.lsp.null-ls").config()
        end,
    },
}
