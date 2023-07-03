local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Toggle NvimTree
keymap.set('n', 's;', ':NvimTreeToggle<Return>')

-- Open Lazygit
keymap.set('n', '<Space>g', ':LazyGit<Return>')

-- New tab
keymap.set('n', '<Space>t', ':tabedit<Return>')
keymap.set('n', '<Space>x', ':q!<Return>')

-- Change tabs
vim.keymap.set('n', '<Space>]', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<Space>[', '<Cmd>BufferLineCyclePrev<CR>', {})

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '10<C-w><')
keymap.set('n', '<C-w><right>', '10<C-w>>')
keymap.set('n', '<C-w><up>', '10<C-w>+')
keymap.set('n', '<C-w><down>', '10<C-w>-')

-- Paste to selection without copying
keymap.set('', '<leader>p', '"_dP')
