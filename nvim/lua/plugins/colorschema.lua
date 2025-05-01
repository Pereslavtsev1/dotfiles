return {
  {
    -- "catppuccin/nvim",
    "tiagovla/tokyodark.nvim",
    -- "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },
  },
  -- {
  --   "catppuccin/nvim",
  --   lazy = true,
  --   name = "catppuccin",
  --   opts = {
  --     flavour = "mocha",
  --     styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
  --       comments = { "italic" }, -- Change the style of comments
  --       conditionals = { "italic" },
  --       loops = { "bold" },
  --       functions = { "bold" },
  --       keywords = { "bold" },
  --       strings = { "bold" },
  --       variables = { "bold" },
  --       numbers = { "bold" },
  --       booleans = { "bold" },
  --       properties = { "bold" },
  --       types = { "bold" },
  --       operators = { "bold" },
  --     },
  --     integrations = {
  --       aerial = true,
  --       alpha = true,
  --       cmp = true,
  --       dashboard = true,
  --       flash = true,
  --       fzf = true,
  --       grug_far = true,
  --       gitsigns = true,
  --       headlines = true,
  --       illuminate = true,
  --       indent_blankline = { enabled = true },
  --       leap = true,
  --       lsp_trouble = true,
  --       mason = true,
  --       markdown = true,
  --       mini = true,
  --       native_lsp = {
  --         enabled = true,
  --         underlines = {
  --           errors = { "undercurl" },
  --           hints = { "undercurl" },
  --           warnings = { "undercurl" },
  --           information = { "undercurl" },
  --         },
  --       },
  --       navic = { enabled = true, custom_bg = "lualine" },
  --       neotest = true,
  --       neotree = true,
  --       noice = true,
  --       notify = true,
  --       semantic_tokens = true,
  --       snacks = true,
  --       telescope = true,
  --       treesitter = true,
  --       treesitter_context = true,
  --       which_key = true,
  --     },
  --   },
  --   specs = {
  --     {
  --       "akinsho/bufferline.nvim",
  --       optional = true,
  --       opts = function(_, opts)
  --         if (vim.g.colors_name or ""):find("catppuccin") then
  --           opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
  --         end
  --       end,
  --     },
  --   },
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyodark",
    },
  },
}
