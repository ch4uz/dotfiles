local status, vim_fugitive = pcall(require, "vim-fugitive")
if (not status) then return end

vim_fugitive.setup({
  -- keymaps = {
  --   -- Open blame window
  --   blame = "<Leader>gb",
  --   -- Open file/folder in git repository
  --   browse = "<Leader>go",
  -- }
})
