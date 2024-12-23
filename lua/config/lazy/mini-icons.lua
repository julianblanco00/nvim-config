return {
	{
		'nvim-tree/nvim-web-devicons',
		version = false,
		lazy = true,
		config = function()
			require('nvim-web-devicons').setup()
		end
	}
}
