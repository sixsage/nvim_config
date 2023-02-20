return {
	'lervag/vimtex',
	config = function ()
		vim.cmd("call vimtex#init()")
		vim.g.vimtex_view_general_viewer = "SumatraPDF"
		vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
	end
}
