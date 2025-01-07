return {
	"tanvirtin/vgit.nvim", -- Esto es para GitLens en Neovim
	requires = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("vgit").setup()
	end,
}
