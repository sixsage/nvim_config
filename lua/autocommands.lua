local autocommand = vim.api.nvim_create_autocmd
-- Helper function to open NvimTree upon startup
local function open_nvim_tree(data)
    -- buffer is a real file on the disk
    local real_file = vim.fn.filereadable(data.file) == 1

    -- buffer is a [No Name]
    local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

    if not real_file and not no_name then
      return
    end

    -- open the tree, find the file but don't focus it
    require("nvim-tree.api").tree.toggle({ focus = false, find_file = true, })
end

autocommand("VimEnter", {
    callback = open_nvim_tree,
})

local text_pattern = { 
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
			}

autocommand("Filetype", {
    pattern = text_pattern,
    callback = function()
        vim.bo.expandtab = false
        vim.bo.tabstop = 4
        vim.bo.softtabstop = 0
        vim.bo.shiftwidth = 4
        vim.bo.autoindent = true
        vim.opt.spell = true
    end,
})
