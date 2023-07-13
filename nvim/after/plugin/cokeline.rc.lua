local get_hex = require('cokeline/utils').get_hex

local macchiato = require("catppuccin.palettes").get_palette "macchiato"
require('cokeline').setup({
  default_hl = {
    fg = function(buffer)
      return
          buffer.is_focused
          and macchiato.base
          or macchiato.subtext0
    end,
    bg = function(buffer)
      return
          buffer.is_focused
          and macchiato.blue
          or macchiato.surface0
    end,
  },
  components = {
    {
      text = ' ',
      bg = macchiato.base
    },
    {
      text = '',
      fg = function(buffer)
        return
            buffer.is_focused
            and macchiato.blue
            or macchiato.surface0
      end,
      bg = macchiato.base
    },
    {
      text = function(buffer)
        return buffer.unique_prefix
      end,
      bg = function(buffer)
        return
            buffer.is_focused
            and macchiato.blue
            or macchiato.surface0
      end,
      fg = macchiato.red,
      style = 'italic',
      truncation = {
        priority = 3,
        direction = 'left',
      },
    },
    {
      text = function(buffer)
        return buffer.devicon.icon
      end,
      fg = function(buffer)
        return buffer.devicon.color
      end,
    },
    {
      text = ' ',
    },
    {
      text = function(buffer) return buffer.filename .. '  ' end,
      style = function(buffer)
        return buffer.is_focused and 'bold' or nil
      end,
    },
    {
      text = '',
      fg = function(buffer)
        return
            buffer.is_focused
            and macchiato.blue
            or macchiato.surface0
      end,
      bg = macchiato.base
    },
  },
})
