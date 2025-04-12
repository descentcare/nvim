local map = vim.keymap.set
map("n", "<leader>ca", function ()
    vim.lsp.buf.code_action()
end)

-- window switch
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
-- nohlsearch
map("n", "<Esc>", "<Esc><cmd>nohlsearch<cr>")
map("n", "<C-l>", "<C-w>l")
-- buffers
map("n", "<TAB>", ":bn<CR>")
map("n", "<S-TAB>", ":bp<CR>")
-- easy-dotnet
--local dotnet = require("easy-dotnet")
map("n", "<leader>dd", function() vim.cmd[[Dotnet]] end)
