-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("n", "<c-a>", "ggVG")
keymap.set("n", "<leader>q", "<cmd>q<cr>")
keymap.set("n", "<leader>w", "<cmd>w<cr>")
keymap.set("n", "<leader>x", "<cmd>x<cr>")
keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("i", "<C-BS>", "<C-w>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
-- Move selected string
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- Increment / Decrement 111
keymap.set("x", "+", "<C-a>gv", { desc = "Increment" })
keymap.set("x", "-", "<C-x>gv", { desc = "Decrement" })
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")
keymap.set("n", "<leader>co", function()
  vim.lsp.buf.code_action({
    context = { only = { "source.organizeImports" } },
    apply = true,
  })
end)
