vim.g.mapleader = " "

require("lazy-bootstrap")
require("settings")

local lazy = require("lazy")
lazy.setup("plugins")

require("keymaps")
require("tm.diagnostics")
require("tm.indent")
require("tm.lualine")
require("tm.colorscheme")
require("tm.localimport")
require("tm.lsp")
