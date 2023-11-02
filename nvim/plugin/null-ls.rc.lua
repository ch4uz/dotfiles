local status, null_ls = pcall(require, "null-ls")
if not status then
	return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
	vim.lsp.buf.format({
		filter = function(client)
			-- return client.name == "null-ls"
			return client.name ~= "volar"
		end,
		bufnr = bufnr,
	})
end

local prettier = null_ls.builtins.formatting.prettier.with({
    -- You can set extra args which will be passed to the Prettier CLI
    -- The following function will be executed to find your .prettierrc.json starting from the current file's directory
    extra_args = function(params)
        -- This function will find the closest .prettierrc.json (or .prettierrc, etc.) starting from the current file's directory
        local find_up = require("null-ls.utils").root_pattern(".prettierrc.json")
        local config_path = find_up(params.bufname) .. "/.prettierrc.json"
       print("AAAA Prettier config path: " .. (config_path or "not found"))
        return config_path and { "--config", config_path } or {}
    end,
})

null_ls.setup({
 debug = true,
	sources = {
    prettier,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					lsp_formatting(bufnr)
				end,
			})
		end
	end,
})

vim.api.nvim_create_user_command("DisableLspFormatting", function()
	vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
end, { nargs = 0 })
