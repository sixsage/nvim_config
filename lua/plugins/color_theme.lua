return {
	'olivercederborg/poimandres.nvim',
	config = function() 
		require "poimandres".setup{
			disable_background = true,
			disable_float_background = true,
			dim_nc_background = true,
		}
		vim.cmd("colorscheme poimandres")
	end
}
