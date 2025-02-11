return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = true,
  opts = {
    event_handlers = {
      {
        event = "file_open_requested",
        handler = function()
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
    close_if_last_window = false, -- Keep the tree open even if it's the last window
    window = {
      mappings = {
        ["<leader>;"] = {
          "open_vsplit", -- Open selected file in a vertical split
        },
        ["P"] = {
          "toggle_preview",
          config = {
            use_float = true,
            title = "Preview",
          },
        },
      },
      position = "float", -- Set the position to float
      width = 40, -- Specify the width of the floating window
      height = 30, -- Specify a default height (you can adjust or customize this)
      max_height = 0.9,
      -- Use a relative percentage of the screen height for max height
      float = {
        border = "rounded", -- Optional: Set border style for the floating window
      },
    },
    source = {},
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
}
