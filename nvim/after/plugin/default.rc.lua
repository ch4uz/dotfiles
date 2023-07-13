local opt = vim.opt

-- opt.foldlevel = 20
-- opt.foldmethod = "syntax"
-- opt.foldcolumn = 1
-- opt.foldexpr = "nvim_treesitter#foldexpr()"

opt.foldmethod = "manual"

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin-macchiato"
