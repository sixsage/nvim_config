return {
	'olivercederborg/poimandres.nvim',
	config = function() 
		require "poimandres".setup{}
		vim.cmd("colorscheme poimandres")
	end
}
