local packer = require("packer")
packer.startup(
  function(use)
    -- Packer 可以管理自己本身
    use('wbthomason/packer.nvim')
    --------------------- colorschemes --------------------
    -- tokyonight
    use("folke/tokyonight.nvim")
    use({"ellisonleao/gruvbox.nvim"})
    -------------------------------------------------------
    -- finder tree
    use({ "nvim-tree/nvim-web-devicons", "nvim-tree/nvim-tree.lua" }) 

    -- tag
    use({ "akinsho/bufferline.nvim", "nvim-tree/nvim-web-devicons", "moll/vim-bbye" })

    -- status bar
    use({ "nvim-lualine/lualine.nvim", "kyazdani42/nvim-web-devicons" })
    use("arkav/lualine-lsp-progress")
    -- search
    use({ "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" })
    
    -- dashboard
    use({ "nvimdev/dashboard-nvim", "nvim-tree/nvim-web-devicons" })

    -- recent project
    use("ahmedkhalf/project.nvim")

    -- treesitter
    -- use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

    -- coc
    use({ 'neoclide/coc.nvim', branch = 'release'})

    -- import cost
    use({"barrett-ruth/import-cost.nvim", run = "sh install.sh npm"})

    --- terminal
    use({"akinsho/toggleterm.nvim", tag='*'})

end)
