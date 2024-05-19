return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      -- hijack_netrw_behavior = "disabled", -- comment this out to enable neotree and also remove it from disabled.lua
      filtered_items = {
        visible = false, -- when true, they will just be displayed differently than normal items
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_hidden = false, -- only works on Windows for hidden files/directories
        hide_by_name = {
          --"node_modules"
        },
      },
      commands = {},
      window = {
        position = "left",
        width = 40,
      },
    },
    event_handlers = {

      {
        event = "file_opened",
        handler = function(file_path)
          -- auto close
          -- vimc.cmd("Neotree close")
          -- OR
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
  },
}
