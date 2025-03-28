return {
	"nvim-telescope/telescope.nvim",

	tag = "0.1.5",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		require("telescope").setup({
			pickers = {
				find_files = {
					hidden = true,
					no_ignore = true,
				},
			},
			defaults = {
				file_ignore_patterns = {
					"node_modules",
					".git/",
					"dist",
					"build",
					"package-lock.json",
				},
				vimgrep_arguments = {
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
				},
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader><leader>", builtin.find_files, {})
		vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>sl", builtin.resume, {})
		vim.keymap.set("n", "<leader>,", builtin.buffers, {})
		vim.keymap.set("n", "<leader>sw", builtin.grep_string, { noremap = true, silent = true })
	end,
}
