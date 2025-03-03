return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		opts = function()
			local opts = {
				default_format_opts = {
					timeout_ms = 3000,
					async = false, -- not recommended to change
					quiet = false, -- not recommended to change
					lsp_format = "fallback", -- not recommended to change
				},
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "prettier" },
					javascriptreact = { "prettier" },
					typescriptreact = { "prettier" },
					typescript = { "prettier" },
					cpp = { "clang-format" },
				},
				formatters = {
					injected = { options = { ignore_errors = true } },
					prettier = {
						-- args = { "--single-quote", "false", "--tab-width", "2", "--use-tabs", "--print-width", "80" },
						require_cwd = true,
						cwd = require("conform.util").root_file({
							".prettierrc",
							".prettierrc.json",
							".prettierrc.js",
							".prettierrc.cjs",
							".prettierrc.mjs",
							"prettier.config.js",
							"prettier.config.cjs",
							"prettier.config.mjs",
						}),
					},
				},
			}
			return opts
		end,
	},
}
