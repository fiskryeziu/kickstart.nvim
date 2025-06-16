-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "\\", ":Neotree toggle<CR>", { desc = "NeoTree toggle" } },
		{ "<C-l>", ":tabn<CR>", { desc = "Next tab" } },
		{ "<C-h>", ":tabp<CR>", { desc = "Previous tab" } },
	},
	opts = {
		filesystem = {
			follow_current_file = { enabled = true },
			window = {
				mappings = {
					["\\"] = "close_window",
				},
				auto_expand_width = true,
				width = 30,
			},
		},
	},
}
