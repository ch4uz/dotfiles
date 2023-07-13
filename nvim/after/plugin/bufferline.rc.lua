local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

local mocha = require("catppuccin.palettes").get_palette "mocha"
bufferline.setup({
  options = {
    mode = "tabs",
    -- separator_style = 'slope',
    separator_style = { "<", ">" },
    indicator_icon = '',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        separator = false -- use a "true" to enable the default, or set your own character
      }
    },
  },
  -- highlights = require("catppuccin.groups.integrations.bufferline").get {
  --   styles = { "italic", "bold" },
  -- custom = {
  --   all = {
  --     fill = { bg = "NONE" },
  --   },
  --   mocha = {
  --     background = { fg = mocha.text },
  --   },
  --   macchiato = {
  --     background = { fg = mocha.text },
  --   },
  -- },
  -- },
})
