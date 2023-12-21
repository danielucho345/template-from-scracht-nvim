local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  vim.cmd.notify('not working')
  return
end
require "after.plugin.lsp.mason"
require("after.plugin.lsp.handlers").setup()

vim.cmd[[
"au BufNewFile,BufRead *.html set filetype=htmldjango
:set number
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END
]]
