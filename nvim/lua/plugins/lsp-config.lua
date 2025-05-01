return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      marksman = {},
      eslint = {},
    },
    setup = {
      eslint = function()
        require("lazyvim.util").lsp.on_attach(function(client)
          if client.name == "eslint" then
            client.server_capabilities.documentFormattingProvider = true
          elseif client.name == "tsserver" then
            client.server_capabilities.documentFormattingProvider = false
          end
        end)
      end,
    },
    keys = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "<leader>r", vim.lsp.buf.rename, desc = "Rename", has = "rename" }
      keys[#keys + 1] = { "<leader>k", vim.lsp.buf.hover }
      keys[#keys + 1] = { "<leader>a", vim.lsp.buf.code_action, desc = "Code actions" }
    end,
  },
}
