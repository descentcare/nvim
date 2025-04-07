vim.g.mapleader = " "

require("lazy-bootstrap")
require("settings")

local lazy = require("lazy")
lazy.setup("plugins")

require("keymaps")
require("extensions.indent")
