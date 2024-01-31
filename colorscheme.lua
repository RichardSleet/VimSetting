local colorscheme = "tokyonight-storm"
-- local colorscheme = "gruvbox"

-- 函数调用 pcall 捕获错误，抵用 vim.cmd 的 function 并且 colorscheme 设置为 tokyonight .. 表示连续字符串
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
  return
end
