local mason = require("mason")

mason.setup({
    PATH = "prepend",
    registries = {
        'github:mason-org/mason-registry',
        'github:Crashdummyy/mason-registry',
    },
})
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
mason_lspconfig.setup({
    ensure_installed = {
        -- "lua_ls",             -- LSP for Lua language
  }
});

-- Setup every needed language server in lspconfig
mason_lspconfig.setup_handlers {
  function (server_name)
    lspconfig[server_name].setup {}
  end,
  ["lua_ls"] = function()
    lspconfig.lua_ls.setup(
    {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
  end,
}
