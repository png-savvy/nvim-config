-- File: ~/.config/nvim/lua/custom/lspconfig.lua

-- NvChad's default lspconfig setup
require("nvchad.configs.lspconfig").defaults()

-- Custom server configurations
local lspconfig = require("lspconfig")
local servers = { "html", "cssls" }

-- Pyright configuration with explicit settings
lspconfig.pyright.setup({
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        -- This setting enables the import organization
        autoImportModules = true,
      },
    },
  },
})

-- Enable the rest of the servers
vim.lsp.enable(servers)
