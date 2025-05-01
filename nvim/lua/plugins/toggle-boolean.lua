return {
  lazy = false,
  "rmagatti/alternate-toggler",
  opts = {
    alternates = {
      ["==="] = "!==",
      ["=="] = "!=",
      ["error"] = "warn",
    },
    vim.keymap.set("n", "<leader>i", "<cmd>ToggleAlternate<cr>"),
  },
}
