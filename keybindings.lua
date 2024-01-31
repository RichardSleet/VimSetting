vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local autoCmd = vim.api.nvim_create_autocmd
-- 复用 opt 参数
local opt = {noremap = true, silent = true }

local pluginResult = {}


-- v 模式
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)
-- 复制
map("v", "<C-y>", '"+y', opt)
map("n", "<C-y>", '"+y', opt)
map("n", "<C-p>", '"*y', opt)


-- n 模式
map("n", "<C-J>", "<C-J>", opt)
-- 上下滚动浏览
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)
-- 跳转
map("n", "<C-d>", "9j", opt)

-- 取消 s 默认功能
map("n", "s", "", opt)
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)
-- Alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)


-- nvim-tree
-- alt + m 键打开关闭tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

-- 列表快捷键
-- pluginResult.nvimTreeList = {
--   enable = true,
--   keys = {
--     toggle = { "<A-m>", "<leader>m" },
--     refresh = "R",
--     -- open / close --
--     edit = { "o", "<2-LeftMouse>" },
--     close = "<BS>", -- close parent folder
--     system_open = "<CR>",
--     vsplit = "sv",
--     split = "sh",
--     tabnew = "st",
--     -- movement --
--     parent_node = "P",
--     first_sibling = "K",
--     last_sibling = "J",
--     cd = ">",
--     dir_up = "<",
--     -- file toggle --
--     toggle_git_ignored = "i", --.gitignore (git enable)
--     toggle_dotfiles = ".", -- Hide (dotfiles)
--     toggle_custom = "u", -- togglle custom config
--     -- file operate --
--     create = "a",
--     remove = "d",
--     rename = "r",
--     cut = "x",
--     copy = "c",
--     paste = "p",
--     copy_name = "y",
--     copy_path = "Y",
--     copy_absolute_path = "gy",
--     toggle_file_info = "gh",
--   },
-- }


-- bufferline
-- 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye"
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)
map("n", "<leader>bo", ":BufferLinePick<CR>", opt)


-- Telescope
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)
-- 当前文件搜索
map("n", "<leader>f", ":Telescope current_buffer_fuzzy_find<CR>", opt)


-- coc config
map("n", "gd", "<Plug>(coc-definition)", opt)
map("n", "gy", "<Plug>(coc-type-definition)", opt)
map('n', 'gi', '<Plug>(coc-implementation)', opt)
map('n', 'gr', '<Plug>(coc-references)', opt)

-- toffleterm
autoCmd("TermEnter", {
    pattern = "term://*toggleterm#*",
    callback = function()
        map('t', '<c-t>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', opt)
    end
})
map('n', '<c-t>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', opt)
map('i', '<c-t>', '<Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>', opt)


pluginResult.telescopeList = {
    i = {
      -- 上下移动
      ["<C-j>"] = "move_selection_next",
      ["<C-k>"] = "move_selection_previous",
      ["<Down>"] = "move_selection_next",
      ["<Up>"] = "move_selection_previous",
      -- 历史记录
      ["<C-n>"] = "cycle_history_next",
      ["<C-p>"] = "cycle_history_prev",
      -- 关闭窗口
      ["<C-c>"] = "close",
      -- 预览窗口上下滚动
      ["<C-u>"] = "preview_scrolling_up",
      ["<C-d>"] = "preview_scrolling_down",
    },
  }

return pluginResult
