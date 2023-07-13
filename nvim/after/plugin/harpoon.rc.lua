local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local macchiato = require("catppuccin.palettes").get_palette "macchiato"

vim.keymap.set("n", "<space>e", mark.add_file)
vim.keymap.set("n", "<space>q", ui.toggle_quick_menu)

vim.keymap.set("n", "<space>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<space>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<space>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<space>4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<space>5", function() ui.nav_file(5) end)

vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=' .. macchiato.surface2)
vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=' .. macchiato.blue)
vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=' .. macchiato.blue)
vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')

require("harpoon").setup({
  tabline = true,
  tabline_prefix = "   ",
  tabline_suffix = "   ",
  menu = {
    width = vim.api.nvim_win_get_width(0) - 32,
  }
})

require("telescope").load_extension('harpoon')
