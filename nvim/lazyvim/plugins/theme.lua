local preferenceTheme = os.getenv("NVIM_THEME") or "nightfox"
local transparent = os.getenv("NVIM_TRANSPARENT") == "true" or false

if preferenceTheme == "kanagawa" then
  return {
    {
      "rebelot/kanagawa.nvim",
      enabled = true,
      priority = 1000,
      opts = {
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        dimInactive = true, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true,
        transparent = transparent,
      },
    },
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "kanagawa-dragon",
      },
    },
  }
elseif preferenceTheme == "nightfox" then
  local themes = {
    "nightfox", --1
    "dayfox", --2
    "dawnfox", --3
    "nordfox", --4
    "carbonfox", --5
  }
  return {
    {
      "EdenEast/nightfox.nvim",
      enabled = true,
      opts = {
        options = {
          transparent = transparent, -- Disable setting background
          terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
          dim_inactive = true,
          styles = {
            comments = "italic",
            conditionals = "italic",
            keywords = "italic,bold",
            operators = "bold",
            types = "italic,bold",
            variables = "bold",
          },
        },
      },
    },
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = themes[5],
      },
    },
  }
elseif preferenceTheme == "solarized" then
  return {
    {
      "craftzdog/solarized-osaka.nvim",
      lazy = true,
      priority = 1000,
      opts = {
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
        transparent = transparent, -- Disable setting background
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "dark", -- style for sidebars, see below
          floats = "dark", -- style for floating windows
        },
        sidebars = { "qf", "vista_kind", "terminal", "packer", "help" },
        --sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.1, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = true, -- dims inactive windows
        lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
      },
    },
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "solarized-osaka",
      },
    },
  }
elseif preferenceTheme == "gruvbox" then
  return {

    {
      "ellisonleao/gruvbox.nvim",
      opts = {
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = transparent,
      },
    },
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "gruvbox",
      },
    },
  }
end
