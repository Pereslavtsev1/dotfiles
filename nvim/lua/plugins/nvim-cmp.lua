return {
  "hrsh7th/nvim-cmp",
  {
    "tailwind-tools",
    "onsails/lspkind-nvim",
    lazy = true,
  },
  opts = function()
    return {
      formatting = {
        format = require("lspkind").cmp_format({
          before = require("tailwind-tools.cmp").lspkind_format,
        }),
      },
    }
  end,
}
