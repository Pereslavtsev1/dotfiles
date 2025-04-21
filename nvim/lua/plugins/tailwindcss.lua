return {
  event = "VeryLazy",
  "luckasRanarison/tailwind-tools.nvim",
  name = "tailwind-tools",
  build = ":UpdateRemotePlugins",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    "neovim/nvim-lspconfig",
  },

  config = function()
    require("tailwind-tools").setup({
      vim.keymap.set("n", "<leader>e", "<cmd>TailwindSort<cr>", { buffer = true }),
    })
  end,
}
