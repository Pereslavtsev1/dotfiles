return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = true,
      exclude = {
        "java",
        "javascript",
        "typescript",
        "javascriptreact",
        "typescriptreact",
      },
    },
    servers = {
      marksman = {},
    },
  },
  keys = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { "<leader>r", vim.lsp.buf.rename, desc = "Rename", has = "rename" }
    keys[#keys + 1] = { "<leader>k", vim.lsp.buf.hover }
    keys[#keys + 1] = { "<leader>a", vim.lsp.buf.code_action, desc = "Code actions" }
  end,
}
