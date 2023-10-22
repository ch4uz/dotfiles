local keymap = vim.keymap

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Toggle NvimTree
keymap.set("n", ";s", ":NvimTreeToggle<Return>")

-- Open Lazygit
keymap.set("n", "<Space>g", ":LazyGit<Return>")

-- New tab
keymap.set("n", "<Space>t", ":tabedit<Return>")


keymap.set("n", "<Space>x", ":tabclose<Return>")

-- Change tabs
keymap.set("n", "<Space>h", ":tabprevious<Return>", { silent = true })
keymap.set("n", "<Space>l", ":tabnext<Return>", { silent = true })

for i = 1, 9 do
	keymap.set("n", ("<Space>%s"):format(i), (":tabnext %s<Return>"):format(i), { silent = true })
end

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")
-- Move window
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "10<C-w><")
keymap.set("n", "<C-w><right>", "10<C-w>>")
keymap.set("n", "<C-w><up>", "10<C-w>+")
keymap.set("n", "<C-w><down>", "10<C-w>-")

-- Paste to selection without copying
keymap.set("", "<leader>p", '"_dP')

-- Nvim Spider
keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
keymap.set({ "n", "o", "x" }, "ge", "<cmd>lua require('spider').motion('ge')<CR>", { desc = "Spider-ge" })

-- Nvim Various TextObjs
keymap.set({ "n", "o", "x" }, "ao", '<cmd>lua require("various-textobjs").subword(false)<CR>')
keymap.set({ "n", "o", "x" }, "io", '<cmd>lua require("various-textobjs").subword(true)<CR>')
keymap.set({ "n", "o", "x" }, "am", '<cmd>lua require("various-textobjs").chainMember(false)<CR>')
keymap.set({ "n", "o", "x" }, "im", '<cmd>lua require("various-textobjs").chainMember(true)<CR>')

keymap.set("", "<leader>q", ":q!<Return>")
keymap.set("", "<leader>Q", ":qall!<Return>")
keymap.set("", "<leader>w", ":w<Return>")
keymap.set("", "<CR>", ":noh<Return>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- Define key mappings
keymap.set("n", "<C-D>", "<cmd>call smoothie#do('<C-D>zz')<CR>", { noremap = true, silent = true })
keymap.set("v", "<C-D>", "<cmd>call smoothie#do('<C-D>zz')<CR>", { noremap = true, silent = true })
keymap.set("n", "<C-U>", "<cmd>call smoothie#do('<C-U>zz')<CR>", { noremap = true, silent = true })
keymap.set("v", "<C-U>", "<cmd>call smoothie#do('<C-U>zz')<CR>", { noremap = true, silent = true })

keymap.set({ "n", "o", "x" }, "L", "$", { noremap = true })

-- Switch case
keymap.set(
	"n",
	"<Leader>x",
	'<cmd>lua require("craftzdog.switch_case").switch_case()<CR>',
	{ noremap = true, silent = true }
)

-- Nvim Spectre
keymap.set("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', {
	desc = "Toggle Spectre",
})
keymap.set("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
	desc = "Search current word",
})
keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
	desc = "Search current word",
})
keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
	desc = "Search on current file",
})
