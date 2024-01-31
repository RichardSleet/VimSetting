-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 显示行号
vim.o.number = true
-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.list = true
vim.o.listchars = "space:·"
-- 系统剪切板
vim.o.clipboard = "unnamedplus"
-- 相对行数
vim.opt.relativenumber = true
-- vim命令行高度
vim.o.cmdheight = 4
-- 永远显示 tabline
vim.o.showtabline = 2
-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrollof = 8
