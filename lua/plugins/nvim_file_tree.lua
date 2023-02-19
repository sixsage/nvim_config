return {
	'nvim-tree/nvim-tree.lua',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	cmd = {
		"NvimTreeOpen",
		"NvimTreeToggle",
		"NvimTreeFocus",
		"NvimTreeFindFile",
		"NvimTreeFindFileToggle",
	},
	config = function()
		require "nvim-tree".setup{
			disable_netrw = true,
			auto_reload_on_write = true,
			hijack_cursor = true,
			git = {
			    enable = true,
			},
			renderer = {
			    highlight_git = true,
			    icons = {
				show = {
				git = true,
				},
			    },
			},
			view = {
			    side = "left",
			},
		}
	end
}
