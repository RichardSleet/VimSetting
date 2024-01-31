local status, importCost = pcall(require, "import-cost")
if not status then
    vim.notify("没有找到 import-cost")
  return
end

importCost.setup({})
