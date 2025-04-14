return {
    event = "VeryLazy",
    "folke/noice.nvim",
    opts_extend = { "routes" },
    opts = {
        routes = {
            {
                filter = {
                    event = "lsp",
                    kind = "progress",
                    find = "jdtls",
                },
                opts = { skip = true },
            },
        },
    },
}
