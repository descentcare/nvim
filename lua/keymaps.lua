local map = vim.keymap.set
map("n", "<leader>ca", function ()
    vim.lsp.buf.code_action()
end)
