require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-z>", "u", { desc = "Undo last change" })
map("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "Rename symbol globally" })
