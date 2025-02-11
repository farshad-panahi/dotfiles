return {
  "sphamba/smear-cursor.nvim",
  event = "VeryLazy",
  cond = function()
    return not vim.g.neovide
  end,
  opts = {
    stiffness = 0.5,
    trailing_stiffness = 0.1,
    trailing_exponent = 1,
    distance_stop_animating = 0.2,
    windows_zindex = 1,
    filetypes_disabled = {
      "lazy",
    },
    cursor_color = "#000000",
    smear_between_buffers = true,
    smear_between_neighbor_lines = true,
    scroll_buffer_space = true,
    legacy_computing_symbols_support = true,
    smear_insert_mode = true,
  },
  specs = {
    -- disable mini.animate cursor
    {
      "echasnovski/mini.animate",
      optional = true,
      opts = {
        cursor = { enable = false },
      },
    },
  },
}
