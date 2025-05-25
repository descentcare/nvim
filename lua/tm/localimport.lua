local localconfigfile = vim.fn.expand('%:p:h') .. "/.nvim.lua"
if vim.uv.fs_stat(localconfigfile) then
    dofile(localconfigfile)
end
