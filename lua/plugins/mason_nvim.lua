local languages = {"clangd", "cssls", "cssmodules_ls", "golangci_lint_ls", "jsonls", "html", "tsserver", "texlab", "lua_ls", "pyright", "rust_analyzer", "svelte"}
return {
	'williamboman/mason.nvim',
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require "mason".setup{}
		require "mason-lspconfig".setup{
			ensure_installed = {},
			automatic_installation = true,
		}
		local lspconfig = require "lspconfig"
		for _, language in pairs(languages) do
			lspconfig[language].setup {}
		end
		lspconfig.lua_ls.setup {
            		settings = {
                		Lua = {
                    			diagnostics = {
                        			globals = { "vim" },
                    			},
                		},
            		},
        	}
	end
}
