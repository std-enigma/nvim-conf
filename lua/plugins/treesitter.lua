---@type LazySpec
return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		-- Install treesitter parsers
		ensure_installed = {
			"lua",
			"vim",
		},
	},
}
