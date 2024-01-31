local status, nvim_tree = pcall(require, "nvim-tree")
local cfg = {
    keys = {
        vsplit = "sv",
        split = "sh",
        system_open = "<CR>",
    }
};
if not status then
    vim.notify("没有找到 nvim-tree")
  return
end

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"
  
    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    api.config.mappings.default_on_attach(bufnr)
  
    -- vim.keymap.set("n", cfg.keys.refresh, api.tree.reload, opts("Refresh"))

    -- -- open / close --
    -- vim.keymap.set("n", cfg.keys.edit, api.node.open.edit, opts("Open"))
    -- vim.keymap.set("n", cfg.keys.close, api.node.navigate.parent_close, opts("Close Directory"))
    vim.keymap.set("n", cfg.keys.system_open, api.node.run.system, opts("Run System"))
    vim.keymap.set("n", cfg.keys.vsplit, api.node.open.vertical, opts("Open: Vertical Split"))
    vim.keymap.set("n", cfg.keys.split, api.node.open.horizontal, opts("Open: Horizontal Split"))
    -- vim.keymap.set("n", cfg.keys.open_as_root, api.tree.open, opts("Open: Open As Root"))
    -- vim.keymap.set("n", cfg.keys.tabnew, api.node.open.tab, opts("Open: New Tab"))

    -- -- movement --
    -- vim.keymap.set("n", cfg.keys.parent_node, api.node.navigate.parent, opts("Parent Directory"))
    -- vim.keymap.set("n", cfg.keys.last_sibling, api.node.navigate.sibling.last, opts("Last Sibling"))
    -- vim.keymap.set("n", cfg.keys.first_sibling, api.node.navigate.sibling.first, opts("First Sibling"))
    -- vim.keymap.set("n", cfg.keys.cd, api.tree.change_root_to_node, opts("CD"))
    -- vim.keymap.set("n", cfg.keys.dir_up, api.tree.change_root_to_parent, opts("Up"))

    -- -- file toggle --
    -- vim.keymap.set("n", cfg.keys.toggle_git_ignored, api.tree.toggle_gitignore_filter, opts("Toggle Git Ignore"))
    -- vim.keymap.set("n", cfg.keys.toggle_dotfiles, api.tree.toggle_hidden_filter, opts("Toggle Dotfiles"))
    -- vim.keymap.set("n", cfg.keys.toggle_custom, api.tree.toggle_custom_filter, opts("Toggle Hidden"))

    -- -- file operate --
    -- vim.keymap.set("n", cfg.keys.create, api.fs.create, opts("Create"))
    -- vim.keymap.set("n", cfg.keys.remove, api.fs.remove, opts("Delete"))
    -- vim.keymap.set("n", cfg.keys.rename, api.fs.rename, opts("Rename"))
    -- vim.keymap.set("n", cfg.keys.copy, api.fs.copy.node, opts("Copy"))
    -- vim.keymap.set("n", cfg.keys.cut, api.fs.cut, opts("Cut"))
    -- vim.keymap.set("n", cfg.keys.paste, api.fs.paste, opts("Paste"))
    -- vim.keymap.set("n", cfg.keys.copy_name, api.fs.copy.filename, opts("Copy Name"))
    -- vim.keymap.set("n", cfg.keys.copy_path, api.fs.copy.relative_path, opts("Copy Relative Path"))
    -- vim.keymap.set("n", cfg.copy_absolute_path, api.fs.copy.absolute_path, opts("Copy Absolute Path"))
    -- vim.keymap.set("n", cfg.toggle_file_info, api.node.show_info_popup, opts("Info"))
end
  
nvim_tree.setup({
    on_attach = my_on_attach,
    -- 不显示 git 状态图标
    git = {
        enable = false,
    },
    -- project plugin 需要这样设置
    -- update_cwd = true,
    update_focused_file = {
        enable = true,
        -- update_cwd = true,
    },
    -- 隐藏 .文件 和 node_modules 文件夹
    filters = {
        -- dotfiles = true,
        -- custom = { 'node_modules' },
    },
    view = {
        -- 宽度
        width = 40,
        -- 也可以 'right'
        side = 'left',
        -- 不显示行数
        number = false,
        -- 显示图标
        signcolumn = 'yes',
    },
    actions = {
        open_file = {
            -- 首次打开大小适配
            resize_window = true,
        },
    },
    -- wsl install -g wsl-open
    -- https://github.com/4U6U57/wsl-open/
    system_open = {
        cmd = 'open', -- mac 直接设置为 open
    },
})
-- 自动关闭
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])


