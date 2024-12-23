return {
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			local null_ls = require("null-ls") -- need to import first
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.clang_format,
					null_ls.builtins.formatting.eslint,
					null_ls.builtins.formatting.lua_format,
				},
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_create_augroup("null_ls_group", { clear = true })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = "null_ls_group",
							buffer = bufnr,
							callback = function()
								-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
								vim.lsp.buf.format({ bufnr = bufnr })
							end,
						})
					end
				end,
			})
		end,
	},
}

