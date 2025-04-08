local map = vim.keymap.set
map("n", "<leader>ca", function ()
    vim.lsp.buf.code_action()
end)

-- easy-dotnet
dotnet = require("easy-dotnet")
map("n", "<leader>dd", function() vim.cmd[[Dotnet]] end)
