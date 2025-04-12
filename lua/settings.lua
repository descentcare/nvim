--[[
  File: settings.lua
  Description: Base settings for neovim
  Info: Use <zo> and <zc> to open and close foldings
]]

-- Set associating between turned on plugins and filetype
vim.cmd[[filetype plugin on]]

-- Disable comments on pressing Enter
vim.cmd[[autocmd FileType * setlocal formatoptions-=cro]]
-- Line numbers {{{
vim.opt.relativenumber = true
vim.opt.number = true
-- }}}

-- Tabs {{{
vim.opt.expandtab = true                -- Use spaces by default
vim.opt.shiftwidth = 4                  -- Set amount of space characters, when we press "<" or ">"
vim.opt.tabstop = 4                     -- 1 tab equal 2 spaces
vim.opt.smartindent = true              -- Turn on smart indentation. See in the docs for more info
vim.opt.smarttab = true
vim.opt.showtabline = 2
-- }}}

-- Clipboard {{{
--vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.opt.fixeol = false -- Turn off appending new line in the end of a file
-- }}}

-- Folding {{{
vim.opt.foldmethod = 'syntax'
-- }}}

-- Search {{{
vim.opt.ignorecase = true               -- Ignore case if all characters in lower case
vim.opt.joinspaces = false              -- Join multiple spaces in search
vim.opt.smartcase = true                -- When there is a one capital letter search for exact match
vim.opt.showmatch = true                -- Highlight search instances
vim.opt.wrapscan = false
vim.opt.wrap = false
-- }}}

-- Window {{{
vim.opt.splitbelow = true               -- Put new windows below current
vim.opt.splitright = true               -- Put new vertical splits to right
-- }}}

-- Wild Menu {{{
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
-- }}}

-- Encoding {{{
vim.opt.encoding = 'utf-8'
-- }}}
-- Terminal {{{
vim.o.shell = "powershell"
-- }}}

-- Default Plugins {{{
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
-- }}}

-- Fix for powershell crap {{{
if vim.uv.os_uname().sysname == "Windows_NT" then
    vim.opt.shell = "powershell"
    vim.o.shellcmdflag =
    "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';"

    -- Setting shell redirection
    vim.o.shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'

    -- Setting shell pipe
    vim.o.shellpipe = '2>&1 | %%{ "$_" } | Tee-Object %s; exit $LastExitCode'

    -- Setting shell quote options
    vim.o.shellquote = ""
    vim.o.shellxquote = ""
end
    -- }}}
