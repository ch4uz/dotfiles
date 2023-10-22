local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

require("craftzdog.base")
require("craftzdog.highlights")
require("craftzdog.maps")
require("craftzdog.plugins")
require("craftzdog.switch_case")

local has = vim.fn.has
local is_mac = has("macunix")
local is_win = has("win32")
local is_wsl = has("wsl")

if is_mac then
	require("craftzdog.macos")
end
if is_win then
	require("craftzdog.windows")
end
if is_wsl then
	require("craftzdog.wsl")
end

