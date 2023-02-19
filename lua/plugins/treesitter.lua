return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	config = function()
		require'nvim-treesitter.configs'.setup{
			ensure_installed = {
				"python",
				"cpp", 
				"javascript", 
				"typescript",
				"css",
				"html",
				"java",
				"go",
				"gitcommit",
				"git_rebase",
				"gitattributes",
				"json",
				"lua",
				"scss",
				"svelte",
				"vim",
				"rust",
				"latex",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		}
	end
}
