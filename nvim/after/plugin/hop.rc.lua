local status, hop = pcall(require, "hop")
if not status then
	return
end

hop.setup({})

-- place this in one of your configuration file(s)
local directions = require("hop.hint").HintDirection
-- vim.keymap.set('', 'f', function()
--   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
-- end, { remap = true })
-- vim.keymap.set('', 'F', function()
--   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
-- end, { remap = true })
-- vim.keymap.set('', 't', function()
--   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
-- end, { remap = true })
-- vim.keymap.set('', 'T', function()
--   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
-- end, { remap = true })
vim.keymap.set("", ";b", function()
	hop.hint_words({ direction = directions.BEFORE_CURSOR })
end, { remap = true })
vim.keymap.set("", ";w", function()
	hop.hint_words({ direction = directions.AFTER_CURSOR })
end, { remap = true })
vim.keymap.set("", ";l", function()
	hop.hint_words({ current_line_only = true })
end, { remap = true })

vim.keymap.set("", ";p", function()
	hop.hint_patterns({}, '[({\\[]')
end, { remap = true })
