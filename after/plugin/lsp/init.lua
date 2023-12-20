local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  vim.cmd.notify('not working')
  return
end
require "after.plugin.lsp.mason"
require("after.plugin.lsp.handlers").setup()
