-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "tsserver", "tailwindcss", "eslint", "jdtls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config

for _, lsp in ipairs(servers) do
  -- if lsp == "jdtls" then
  --   lspconfig[lsp].setup {
  --     on_attach = nvlsp.on_attach,
  --     capabilities = nvlsp.capabilities,
  --   }
  -- end
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

