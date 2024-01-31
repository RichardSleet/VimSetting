local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end

db.setup({
  theme = 'doom',
  config= {
    header = {
      [[                                           ]],
      [[                                           ]],
      [[                                           ]],
      [[                                           ]],
      [[                                           ]],
      [[                                           ]],
      [[                                           ]],
      [[                                           ]],
      [[                                           ]],
      [[                                           ]],
      [[                                           ]],
      [[                                           ]],
      [[        ▄▄▄▄▄███████████████████▄▄▄▄▄      ]],
      [[      ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄    ]],
      [[     █▀████████▄             ▀▀████ ▀██▄   ]],
      [[    █▄▄██████████████████▄▄▄         ▄██▀  ]],
      [[     ▀█████████████████████████▄    ▄██▀   ]],
      [[       ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀     ]],
      [[         ▀███▄              ▀██████▀       ]],
      [[           ▀██████▄        ▄████▀          ]],
      [[              ▀█████▄▄▄▄▄▄▄███▀            ]],
      [[                ▀████▀▀▀████▀              ]],
      [[                  ▀███▄███▀                ]],
      [[                     ▀█▀                   ]],
      [[                                           ]],
      [[                                           ]],
    },
    weak_header = {
      enable = false
    },
    footer = {},
    center={
      {
        icon = "  ",
        desc = "Projects         ",
        action = "Telescope projects",
      },
      {
        icon = "  ",
        desc = "Recently files   ",
        action = "Telescope oldfiles",
      },
      {
        icon = "  ",
        desc = "Edit nvim config ",
        action = "edit ~/.config/nvim/init.lua",
      },
      {
        icon = "  ",
        desc = "Edit Projects    ",
        action = "edit ~/.local/share/nvim/project_nvim/project_history",
      },
    }
  }
})



