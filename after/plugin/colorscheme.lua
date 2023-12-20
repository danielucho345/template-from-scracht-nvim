-- Lua
local onedark = require('onedark').setup {
    style = 'darker'
}


--local onedark = [[
--"
--syntax on
--colorscheme onedark
--let g:lightline = {
--  \ 'colorscheme': 'onedark',
--  \ }
--let g:onedark_termcolors=256
--"
--
--]]

local colorscheme = "onedark"

local ok, onedark = pcall(require, 'onedark')
if not ok then
  print("Module had an error")
else
  require('onedark').load()
end
