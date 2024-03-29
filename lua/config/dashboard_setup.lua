local status, db = pcall(require, "dashboard")
if not status then
  return
end

db.setup({
  theme = 'doom',             --  theme is doom and hyper default is hyper
  disable_move = true,        --  default is false disable move keymap for hyper
  shortcut_type = 'number',   --  shorcut type 'letter' or 'number'
  change_to_vcs_root = false, -- default is false,for open file in hyper mru. it will change to the root of vcs
  config = {
    header = { "LuanTSP" },
    center = {
      {
        icon = '󰈔',
        desc = "   Find Files 󰍉",
        key = 'space ff',
        action = 'Telescope find_files',
      },
      {
        icon = '',
        desc = "   File Browser 󰍉",
        key = 'space e',
        action = 'Telescope file_browser',
      },
      {
        icon = '󰙅',
        desc = "   File Tree 󰍉",
        key = "space E",
        action = "NvimTreeToggle",
      },
      {
        icon = '',
        desc = "   Change Colorscheme 󰍉",
        key = "space cs",
        action = "Telescope colorscheme",
      },
      {
        icon = '',
        desc = "   Configuration ...",
        action = "edit ~/.config/nvim",
      },
    },
    footer = { "Better than VSCode..." },
  },                   --  config used for theme
  hide = {
    statusline = true, -- hide statusline default is true
    tabline = true,    -- hide the tabline
    winbar = true,     -- hide winbar
  },
  preview = {
    command = 'cat | lolcat -F 0.3',                                                                        -- preview command
    file_path = '~/.config/nvim/banner.txt ~/.config/nvim/subheader.txt', -- preview file path
    file_height = 10,                                                                                       -- preview file height
    file_width = 70,                                                                                        -- preview file width
  },
})

